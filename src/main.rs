// aiwar-neo4j-harvest/src/main.rs
//
// AI War Cloud → Neo4j Harvester
// Source: https://gitlab.com/sarahciston/aiwar
// Target: Neo4j (Ada Sigma Graph successor patterns)
//
// Usage:
//   cargo run -- cypher          # Generate .cypher files
//   cargo run -- neo4j           # Direct ingest (needs NEO4J_URI, NEO4J_USER, NEO4J_PASSWORD)
//   cargo run -- analyze         # Print graph statistics and novel pattern report

mod model;
mod ingest;

use anyhow::Result;
use clap::{Parser, Subcommand};
use std::fs;

#[derive(Parser)]
#[command(name = "aiwar-neo4j")]
#[command(about = "AI War Cloud graph → Neo4j ingestor")]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// Generate Cypher scripts for offline ingestion
    Cypher {
        /// Output directory for .cypher files
        #[arg(short, long, default_value = "cypher")]
        output: String,
    },
    /// Direct ingestion into Neo4j
    Neo4j {
        /// Neo4j URI
        #[arg(long, env = "NEO4J_URI")]
        uri: String,
        /// Neo4j user
        #[arg(long, env = "NEO4J_USER", default_value = "neo4j")]
        user: String,
        /// Neo4j password
        #[arg(long, env = "NEO4J_PASSWORD")]
        password: String,
    },
    /// Analyze graph patterns
    Analyze,
}

fn load_graph() -> Result<serde_json::Value> {
    let data = fs::read_to_string("data/aiwar_graph.json")?;
    Ok(serde_json::from_str(&data)?)
}

fn load_schema() -> Result<Vec<serde_json::Value>> {
    let data = fs::read_to_string("data/schema.json")?;
    Ok(serde_json::from_str(&data)?)
}

fn cmd_cypher(output: &str) -> Result<()> {
    let graph = load_graph()?;
    let schema = load_schema()?;
    fs::create_dir_all(output)?;

    let mut all_stmts: Vec<String> = Vec::new();

    // 1. Constraints & indexes
    all_stmts.extend(ingest::constraints());
    all_stmts.push("// ── Schema Ontology ──".into());

    // 2. Schema ontology (novel: schema-as-data)
    all_stmts.extend(ingest::schema_ontology_cypher(&schema));

    // 3. Nodes
    all_stmts.push("// ── Systems ──".into());
    if let Some(systems) = graph["N_Systems"].as_array() {
        for sys in systems {
            all_stmts.push(ingest::system_cypher(sys));
        }
    }

    all_stmts.push("// ── Stakeholders ──".into());
    if let Some(stakeholders) = graph["N_Stakeholders"].as_array() {
        for sh in stakeholders {
            all_stmts.push(ingest::stakeholder_cypher(sh));
        }
    }

    all_stmts.push("// ── Civic Systems ──".into());
    if let Some(civic) = graph["N_Civic"].as_array() {
        for c in civic {
            all_stmts.push(ingest::civic_cypher(c));
        }
    }

    // 4. Edges
    let edge_tables = [
        ("E_isDevelopedBy", "DEVELOPED_BY"),
        ("E_isDeployedBy", "DEPLOYED_BY"),
        ("E_connection", "CONNECTED_TO"),
        ("E_place", "USED_IN"),
        ("E_people", "PERSON_LINK"),
    ];

    for (table, rel_type) in &edge_tables {
        all_stmts.push(format!("// ── {table} ──"));
        if let Some(edges) = graph[table].as_array() {
            for edge in edges {
                all_stmts.push(ingest::edge_cypher(edge, rel_type));
            }
        }
    }

    // Write single combined file
    let combined = all_stmts.join("\n\n");
    fs::write(format!("{output}/aiwar_full.cypher"), &combined)?;

    // Also write split files for incremental loading
    let constraint_stmts: Vec<_> = ingest::constraints();
    fs::write(format!("{output}/00_constraints.cypher"), constraint_stmts.join("\n"))?;

    println!("Generated {} statements → {output}/", all_stmts.len());
    println!("  aiwar_full.cypher      (combined)");
    println!("  00_constraints.cypher  (constraints only)");

    Ok(())
}

fn cmd_analyze() -> Result<()> {
    let graph = load_graph()?;
    let schema = load_schema()?;

    println!("╔══════════════════════════════════════════════════════╗");
    println!("║  AI War Cloud — Graph Analysis & Novel Patterns     ║");
    println!("║  Source: gitlab.com/sarahciston/aiwar                ║");
    println!("╚══════════════════════════════════════════════════════╝\n");

    // Node counts
    let n_sys = graph["N_Systems"].as_array().map(|a| a.len()).unwrap_or(0);
    let n_stake = graph["N_Stakeholders"].as_array().map(|a| a.len()).unwrap_or(0);
    let n_civic = graph["N_Civic"].as_array().map(|a| a.len()).unwrap_or(0);
    let n_hist = graph["N_Historical"].as_array().map(|a| a.len()).unwrap_or(0);
    let n_people = graph["N_People"].as_array().map(|a| a.len()).unwrap_or(0);
    let total_nodes = n_sys + n_stake + n_civic + n_hist + n_people;

    println!("NODES ({total_nodes} total):");
    println!("  Systems:      {n_sys}");
    println!("  Stakeholders: {n_stake}");
    println!("  Civic:        {n_civic}");
    println!("  Historical:   {n_hist}");
    println!("  People:       {n_people}");

    // Edge counts
    let edge_tables = ["E_connection", "E_isDevelopedBy", "E_isDeployedBy", "E_place", "E_people", "E_hierarchical"];
    let mut total_edges = 0;
    println!("\nEDGES:");
    for table in &edge_tables {
        let count = graph[table].as_array().map(|a| a.len()).unwrap_or(0);
        total_edges += count;
        println!("  {table}: {count}");
    }
    println!("  Total: {total_edges}");

    // Schema axes
    println!("\nSCHEMA ONTOLOGY ({} taxonomy axes):", schema[0].as_object().map(|o| o.len()).unwrap_or(0));
    println!("  currentStatus: Development → Deployment → Operation → Retirement");
    println!("  type: {} distinct values", count_distinct(&schema, "type"));
    println!("  MLTask: {} distinct values", count_distinct(&schema, "MLTask"));
    println!("  militaryUse: {} distinct values", count_distinct(&schema, "militaryUse"));
    println!("  purpose: {} distinct values", count_distinct(&schema, "purpose:vair"));
    println!("  capacity: {} distinct values", count_distinct(&schema, "capacity:airo"));
    println!("  impact: {} distinct values", count_distinct(&schema, "impact:vair"));
    println!("  airo:type: {} distinct values (AISubject|AIDeployer|AIDeveloper|AIProvider)", count_distinct(&schema, "airo:type"));

    // Novel patterns report
    println!("\n╔══════════════════════════════════════════════════════╗");
    println!("║  NOVEL PATTERNS for Neo4j Succession                ║");
    println!("╚══════════════════════════════════════════════════════╝\n");

    println!("1. FACETED MULTI-LABEL NODES");
    println!("   Each System carries 12+ taxonomy axes simultaneously.");
    println!("   Neo4j succession: Use as multi-label (:System:Predict:Intelligence)");
    println!("   → Ada pattern: Maps to QHDR.sigma glyph coordinates\n");

    println!("2. SCHEMA-AS-DATA ONTOLOGY");
    println!("   The Schema sheet defines valid values as rows, not code.");
    println!("   31 rows × 12 axes = self-describing graph.");
    println!("   → Ada pattern: Schema nodes enable runtime ontology evolution\n");

    println!("3. DUAL-ROLE BIPARTITE COLLAPSE");
    println!("   Stakeholders appear as both edge-source (develops) AND");
    println!("   edge-target (connection/part-of). Creates multigraph.");
    println!("   → Ada pattern: Entity plays multiple roles in different contexts\n");

    println!("4. ICON-ADDRESSED VISUAL TOPOLOGY (noun_key)");
    println!("   72 visual nouns with unicode glyphs form a spatial index.");
    println!("   Nodes addressed by icon, not just by relational ID.");
    println!("   → Ada pattern: Memory-as-place, QHDR coordinate addressing\n");

    println!("5. HIERARCHICAL META-EDGES");
    println!("   E_hierarchical encodes which edge-tables connect to which");
    println!("   node-tables. The schema is itself a graph.");
    println!("   → Ada pattern: Sigma graph self-description layer\n");

    println!("6. TEMPORAL STATUS FLOW");
    println!("   Systems have year + currentStatus creating a lifecycle.");
    println!("   Development → Deployment → Operation → Retirement");
    println!("   Enables temporal queries: 'systems deployed since 2020'");
    println!("   → Ada pattern: Temporal sigma node versioning\n");

    println!("7. AIRO ONTOLOGY ALIGNMENT");
    println!("   Uses AI Risk Ontology (AIRO) + VAIR framework natively.");
    println!("   purpose:vair, capacity:airo, impact:vair fields.");
    println!("   → Ada pattern: Standardized risk/impact assessment on graph nodes\n");

    Ok(())
}

fn count_distinct(schema: &[serde_json::Value], key: &str) -> usize {
    let mut vals: Vec<String> = schema.iter()
        .filter_map(|row| row[key].as_str().map(|s| s.to_string()))
        .collect();
    vals.sort();
    vals.dedup();
    vals.len()
}

#[tokio::main]
async fn main() -> Result<()> {
    tracing_subscriber::fmt::init();
    let cli = Cli::parse();

    match cli.command {
        Commands::Cypher { output } => cmd_cypher(&output),
        Commands::Neo4j { uri, user, password } => {
            println!("Direct Neo4j ingestion → {uri}");
            println!("(generating cypher first, then executing)");
            cmd_cypher("cypher")?;

            let graph = neo4rs::Graph::new(&uri, &user, &password).await?;
            let stmts = fs::read_to_string("cypher/aiwar_full.cypher")?;

            let mut count = 0;
            for stmt in stmts.split(";\n") {
                let trimmed = stmt.trim();
                if trimmed.is_empty() || trimmed.starts_with("//") {
                    continue;
                }
                match graph.run(neo4rs::query(trimmed)).await {
                    Ok(_) => count += 1,
                    Err(e) => eprintln!("  WARN: {e} | stmt: {}", &trimmed[..trimmed.len().min(80)]),
                }
            }
            println!("Executed {count} statements against Neo4j");
            Ok(())
        }
        Commands::Analyze => cmd_analyze(),
    }
}
