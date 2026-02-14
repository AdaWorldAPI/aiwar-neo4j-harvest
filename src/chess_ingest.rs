// aiwar-neo4j-harvest/src/chess_ingest.rs
//
// Chess database harvester: downloads + parses + generates Cypher
// for ECO openings, Lichess evaluations, and eco.json transition graphs.
//
// Each data source is ingested into the same neo4j-rs graph schema
// and tagged with VSA markers for ladybug-rs fingerprint computation.
//
// Usage (via CLI):
//   cargo run --features chess -- chess-openings
//   cargo run --features chess -- chess-evals --depth-min 40 --limit 100000
//   cargo run --features chess -- chess-bridge

use crate::chess_model::*;
use anyhow::{Context, Result};
use std::collections::HashMap;
use std::fs;
use std::io::{BufRead, BufReader};
use std::path::Path;

// ── Constants ────────────────────────────────────────────────────

const LICHESS_OPENINGS_BASE: &str =
    "https://raw.githubusercontent.com/lichess-org/chess-openings/master";

const ECO_JSON_BASE: &str =
    "https://raw.githubusercontent.com/hayatbiralem/eco.json/master";

// ── Chess Constraints & Indexes ──────────────────────────────────

pub fn chess_constraints() -> Vec<String> {
    vec![
        "CREATE CONSTRAINT IF NOT EXISTS FOR (o:Opening) REQUIRE o.eco IS UNIQUE".into(),
        "CREATE CONSTRAINT IF NOT EXISTS FOR (p:Position) REQUIRE p.fen IS UNIQUE".into(),
        "CREATE INDEX IF NOT EXISTS FOR (p:Position) ON (p.eval_cp)".into(),
        "CREATE INDEX IF NOT EXISTS FOR (p:Position) ON (p.phase)".into(),
        "CREATE INDEX IF NOT EXISTS FOR (p:Position) ON (p.piece_count)".into(),
        "CREATE INDEX IF NOT EXISTS FOR (o:Opening) ON (o.eco_family)".into(),
        "CREATE INDEX IF NOT EXISTS FOR (p:Position) ON (p.eco)".into(),
    ]
}

// ── Chess Schema Ontology ────────────────────────────────────────

/// Generate SchemaAxis + SchemaValue nodes for chess taxonomy.
/// Parallels the AI War schema ontology pattern.
pub fn chess_schema_cypher() -> Vec<String> {
    let mut stmts = Vec::new();

    for (axis, values) in CHESS_SCHEMA_AXES {
        stmts.push(format!(
            "MERGE (:SchemaAxis:Chess {{name: '{axis}'}});"
        ));
        for val in *values {
            stmts.push(format!(
                r#"MERGE (v:SchemaValue {{value: '{val}'}})
WITH v
MATCH (a:SchemaAxis {{name: '{axis}'}})
MERGE (v)-[:VALID_FOR]->(a);"#,
            ));
        }
    }

    stmts
}

// ── Opening Ingestion (Lichess TSV) ──────────────────────────────

/// Download and parse the Lichess chess-openings TSV files.
/// Returns Opening structs ready for Cypher generation.
pub async fn download_openings(cache_dir: &Path) -> Result<Vec<Opening>> {
    let client = reqwest::Client::new();
    let mut all_openings = Vec::new();

    for letter in ['a', 'b', 'c', 'd', 'e'] {
        let filename = format!("{letter}.tsv");
        let cache_path = cache_dir.join(&filename);

        // Download if not cached
        if !cache_path.exists() {
            let url = format!("{LICHESS_OPENINGS_BASE}/{filename}");
            println!("  Downloading {url} ...");
            let body = client.get(&url).send().await?.text().await?;
            fs::write(&cache_path, &body)?;
        }

        // Parse TSV
        let content = fs::read_to_string(&cache_path)?;
        for line in content.lines().skip(1) {
            // skip header
            let fields: Vec<&str> = line.split('\t').collect();
            if fields.len() >= 5 {
                all_openings.push(Opening {
                    eco: fields[0].to_string(),
                    name: fields[1].to_string(),
                    pgn: fields[2].to_string(),
                    uci: fields[3].to_string(),
                    epd: fields[4].to_string(),
                });
            }
        }
    }

    println!("  Parsed {} openings from Lichess TSV", all_openings.len());
    Ok(all_openings)
}

/// Generate Cypher for Opening nodes + Position nodes + MOVE edges.
pub fn openings_cypher(openings: &[Opening]) -> Vec<String> {
    let mut stmts = Vec::new();
    let mut seen_positions: HashMap<String, bool> = HashMap::new();

    for opening in openings {
        let eco = escape(&opening.eco);
        let name = escape(&opening.name);
        let pgn = escape(&opening.pgn);
        let uci = escape(&opening.uci);
        let epd = escape(&opening.epd);
        let eco_family = &eco[..1]; // A, B, C, D, or E

        // Create Opening node with multi-label faceting (parallels AIRO pattern)
        stmts.push(format!(
            r#"MERGE (o:Opening:ECO_{eco_family} {{eco: '{eco}'}})
SET o.name = '{name}',
    o.pgn = '{pgn}',
    o.uci = '{uci}',
    o.eco_family = '{eco_family}';"#,
        ));

        // Create Position node for the resulting position
        if !seen_positions.contains_key(&opening.epd) {
            let piece_count = count_pieces(&opening.epd);
            let phase = classify_phase(piece_count, &opening.pgn);

            stmts.push(format!(
                r#"MERGE (p:Position:{phase} {{fen: '{epd}'}})
SET p.phase = '{phase}',
    p.piece_count = {piece_count},
    p.eco = '{eco}';"#,
            ));
            seen_positions.insert(opening.epd.clone(), true);
        }

        // Link Position → Opening
        stmts.push(format!(
            r#"MATCH (p:Position {{fen: '{epd}'}})
MATCH (o:Opening {{eco: '{eco}'}})
MERGE (p)-[:BELONGS_TO]->(o);"#,
        ));

        // Build move chain: parse UCI moves and create intermediate positions
        // (simplified: link opening position back to starting position)
        let moves: Vec<&str> = opening.uci.split_whitespace().collect();
        if !moves.is_empty() {
            let first_move = escape(moves[0]);
            let last_move = escape(moves[moves.len() - 1]);
            stmts.push(format!(
                r#"MERGE (start:Position:Opening {{fen: 'startpos'}})
MATCH (end:Position {{fen: '{epd}'}})
MERGE (start)-[:OPENING_LINE {{eco: '{eco}', moves: {move_count}, first_move: '{first_move}', last_move: '{last_move}'}}]->(end);"#,
                move_count = moves.len(),
            ));
        }
    }

    stmts
}

// ── eco.json Ingestion ───────────────────────────────────────────

/// Download and parse eco.json files (ecoA.json .. ecoE.json).
/// These contain 12,000+ variations keyed by FEN.
pub async fn download_eco_json(cache_dir: &Path) -> Result<HashMap<String, EcoJsonEntry>> {
    let client = reqwest::Client::new();
    let mut all_entries: HashMap<String, EcoJsonEntry> = HashMap::new();

    for letter in ["A", "B", "C", "D", "E"] {
        let filename = format!("eco{letter}.json");
        let cache_path = cache_dir.join(&filename);

        if !cache_path.exists() {
            let url = format!("{ECO_JSON_BASE}/{filename}");
            println!("  Downloading {url} ...");
            let body = client.get(&url).send().await?.text().await?;
            fs::write(&cache_path, &body)?;
        }

        let content = fs::read_to_string(&cache_path)?;
        let entries: HashMap<String, EcoJsonEntry> = serde_json::from_str(&content)
            .context(format!("Failed to parse {filename}"))?;
        all_entries.extend(entries);
    }

    // Also try to download fromTo.json (transition graph)
    let from_to_path = cache_dir.join("fromTo.json");
    if !from_to_path.exists() {
        let url = format!("{ECO_JSON_BASE}/fromTo.json");
        println!("  Downloading {url} ...");
        match reqwest::get(&url).await {
            Ok(resp) => {
                let body = resp.text().await?;
                fs::write(&from_to_path, &body)?;
            }
            Err(e) => {
                eprintln!("  WARN: Could not download fromTo.json: {e}");
            }
        }
    }

    println!("  Parsed {} eco.json variations", all_entries.len());
    Ok(all_entries)
}

/// Generate Cypher for eco.json positions + link to ECO openings.
pub fn eco_json_cypher(entries: &HashMap<String, EcoJsonEntry>) -> Vec<String> {
    let mut stmts = Vec::new();

    for (fen, entry) in entries {
        let fen_esc = escape(fen);
        let eco = entry.eco.as_deref().unwrap_or("");
        let name = escape(entry.name.as_deref().unwrap_or(""));
        let moves = escape(entry.moves.as_deref().unwrap_or(""));
        let piece_count = count_pieces(fen);
        let phase = classify_phase(piece_count, &moves);

        // MERGE position node
        stmts.push(format!(
            r#"MERGE (p:Position:{phase} {{fen: '{fen_esc}'}})
SET p.phase = '{phase}',
    p.piece_count = {piece_count},
    p.eco = '{eco}',
    p.opening_name = '{name}',
    p.opening_moves = '{moves}';"#,
        ));

        // Link to Opening if ECO code exists
        if !eco.is_empty() {
            stmts.push(format!(
                r#"MATCH (p:Position {{fen: '{fen_esc}'}})
MATCH (o:Opening {{eco: '{eco}'}})
MERGE (p)-[:BELONGS_TO]->(o);"#,
            ));
        }
    }

    stmts
}

// ── Lichess Evaluation Ingestion ─────────────────────────────────

/// Parse Lichess evaluation JSONL file (one position per line).
/// Filters by minimum depth and applies a limit.
pub fn parse_lichess_evals(
    path: &Path,
    depth_min: u32,
    limit: usize,
) -> Result<Vec<Position>> {
    let file = fs::File::open(path)?;
    let reader = BufReader::new(file);
    let mut positions = Vec::new();

    for line in reader.lines() {
        let line = line?;
        if line.is_empty() {
            continue;
        }
        let eval: LichessEval = match serde_json::from_str(&line) {
            Ok(e) => e,
            Err(_) => continue,
        };

        // Take the deepest evaluation
        if let Some(best_eval) = eval.evals.iter().max_by_key(|e| e.depth.unwrap_or(0)) {
            let depth = best_eval.depth.unwrap_or(0);
            if depth < depth_min {
                continue;
            }

            let (eval_cp, mate_in) = if let Some(pv) = best_eval.pvs.first() {
                (pv.cp, pv.mate)
            } else {
                continue;
            };

            let piece_count = count_pieces(&eval.fen);
            let phase = classify_phase_from_count(piece_count);

            positions.push(Position {
                fen: eval.fen,
                eval_cp,
                mate_in,
                depth: Some(depth),
                phase: Some(phase),
                piece_count: Some(piece_count),
                eco: None,
            });

            if positions.len() >= limit {
                break;
            }
        }
    }

    println!("  Parsed {} evaluated positions (depth >= {depth_min})", positions.len());
    Ok(positions)
}

/// Generate Cypher for evaluated positions.
pub fn eval_positions_cypher(positions: &[Position]) -> Vec<String> {
    let mut stmts = Vec::new();

    for pos in positions {
        let fen = escape(&pos.fen);
        let phase = pos.phase.as_deref().unwrap_or("Unknown");
        let pc = pos.piece_count.unwrap_or(32);
        let depth = pos.depth.unwrap_or(0);

        let eval_str = match (pos.eval_cp, pos.mate_in) {
            (Some(cp), _) => format!("p.eval_cp = {cp}"),
            (_, Some(mate)) => format!("p.mate_in = {mate}"),
            _ => String::new(),
        };

        stmts.push(format!(
            r#"MERGE (p:Position:{phase} {{fen: '{fen}'}})
SET p.phase = '{phase}',
    p.piece_count = {pc},
    p.sf_depth = {depth},
    {eval_str};"#,
        ));
    }

    stmts
}

// ── AI War Bridge Cypher ─────────────────────────────────────────

/// Generate cross-domain bridge nodes that link chess concepts
/// to AI War ontology concepts.
///
/// This enables RESONATE() to find resonance between chess positions
/// and AI systems — a position with "overwhelming piece activity"
/// resonates with an AI system with "overwhelming capability concentration".
pub fn aiwar_bridge_cypher() -> Vec<String> {
    let mut stmts = Vec::new();

    // Create bridge concept nodes
    let bridges: &[(&str, &str, &str)] = &[
        // (chess_concept, aiwar_concept, shared_dimension)
        ("Material", "Capabilities", "resource_inventory"),
        ("PawnStructure", "Infrastructure", "positional_assets"),
        ("KingSafety", "VulnerabilitySurface", "defensive_posture"),
        ("PieceActivity", "OperationalTempo", "resource_deployment"),
        ("TacticalThreats", "AttackVectors", "forcing_possibilities"),
        ("StrategicPlan", "DeploymentStrategy", "objective_pursuit"),
        ("GamePhase", "SystemMaturity", "lifecycle_stage"),
        ("OpeningTheory", "KnownPatterns", "knowledge_base"),
        ("EndgameTechnique", "CapabilityConversion", "advantage_conversion"),
        ("TimePressure", "DecisionLatency", "reasoning_constraints"),
    ];

    for (chess, aiwar, dimension) in bridges {
        stmts.push(format!(
            r#"MERGE (b:BridgeConcept {{dimension: '{dimension}'}})
SET b.chess_concept = '{chess}',
    b.aiwar_concept = '{aiwar}',
    b.domain = 'cross_domain';"#,
        ));

        // Link to chess schema
        stmts.push(format!(
            r#"MATCH (b:BridgeConcept {{dimension: '{dimension}'}})
MATCH (sa:SchemaAxis:Chess)
WHERE sa.name CONTAINS '{chess}' OR sa.name CONTAINS toLower('{chess}')
MERGE (b)-[:BRIDGES_CHESS]->(sa);"#,
        ));

        // Link to AI War schema (if available)
        stmts.push(format!(
            r#"MATCH (b:BridgeConcept {{dimension: '{dimension}'}})
MATCH (sa:SchemaAxis)
WHERE NOT sa:Chess
MERGE (b)-[:BRIDGES_AIWAR]->(sa);"#,
        ));
    }

    stmts
}

// ── Elo Testing Configuration ────────────────────────────────────

/// Generate Cypher for Elo testing metadata.
/// This stores the bot configuration for Lichess bot API testing.
pub fn elo_testing_cypher(bot_name: &str) -> Vec<String> {
    vec![
        format!(
            r#"MERGE (bot:ChessBot:Agent {{name: '{bot_name}'}})
SET bot.platform = 'lichess',
    bot.protocol = 'UCI',
    bot.api_endpoint = 'https://lichess.org/api/bot',
    bot.rating_system = 'Glicko2',
    bot.initial_rating = 1500,
    bot.created = datetime();"#,
        ),
        // Link bot to its agent crew
        format!(
            r#"MATCH (bot:ChessBot {{name: '{bot_name}'}})
MERGE (crew:Crew {{name: 'ChessThinkTank'}})
MERGE (bot)-[:POWERED_BY]->(crew);"#,
        ),
    ]
}

// ── Helpers ──────────────────────────────────────────────────────

/// Count pieces on the board from a FEN/EPD string.
fn count_pieces(fen: &str) -> u8 {
    let board_part = fen.split_whitespace().next().unwrap_or(fen);
    board_part
        .chars()
        .filter(|c| c.is_alphabetic())
        .count() as u8
}

/// Classify game phase from piece count.
fn classify_phase_from_count(piece_count: u8) -> String {
    match piece_count {
        0..=10 => "Endgame".to_string(),
        11..=24 => "Middlegame".to_string(),
        _ => "Opening".to_string(),
    }
}

/// Classify game phase from piece count and move count.
fn classify_phase(piece_count: u8, pgn_or_moves: &str) -> String {
    let move_count = pgn_or_moves.split_whitespace().count();
    if piece_count <= 10 {
        "Endgame".to_string()
    } else if move_count <= 15 {
        "Opening".to_string()
    } else {
        "Middlegame".to_string()
    }
}

fn escape(s: &str) -> String {
    s.replace('\\', "\\\\").replace('\'', "\\'")
}
