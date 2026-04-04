# aiwar-neo4j-harvest

**Graph pattern harvester** for [AI War Cloud](https://gitlab.com/sarahciston/aiwar) by Sarah Ciston — an interactive database mapping AI decision-making systems from battlefield to desktop.

This repo extracts the **novel graph architecture patterns** from the AI War Cloud dataset and provides:

1. **Rust CLI** for Neo4j ingestion (`cargo run -- cypher` / `cargo run -- neo4j`)
2. **Pre-extracted JSON** graph data (221 nodes, 356 edges, 12-axis ontology)
3. **Pattern analysis** for Neo4j succession architectures

## Source Attribution

- **Original project**: [gitlab.com/sarahciston/aiwar](https://gitlab.com/sarahciston/aiwar)
- **Author**: Sarah Ciston (PhD, USC)
- **License**: Research/academic — see original repo
- **Shown at**: Ars Electronica 2025, Chaos Communication Congress, experimenta Heilbronn

## Graph Schema

### Nodes (5 types, 221 total)

| Type | Count | Key Fields |
|------|-------|-----------|
| System | 65 | 20 fields: id, name, year, status, type, MLTask, purpose, capacity, impact, technique, risks, noun_key... |
| Stakeholder | 114 | id, name, type (Nation/TechCompany/DefenseCompany/Military/Institution), airo:type |
| CivicSystem | 23 | id, name, year, type (Generative/IoT/...), noun_key |
| HistoricalSystem | 7 | id, name, year, type, militaryUse, civicUse |
| Person | 12 | id, name, type (Owner/Investor/Founder) |

### Edges (5 relationship types + 1 meta, 356 total)

| Type | Count | Direction |
|------|-------|----------|
| E_isDevelopedBy | 114 | Stakeholder → System |
| E_connection | 95 | Any → Any (part_of, funds, contracts...) |
| E_isDeployedBy | 79 | Stakeholder → System |
| E_people | 22 | Person → Stakeholder |
| E_place | 21 | System → Nation |
| E_hierarchical | 25 | Meta: EdgeTable → NodeTable (schema self-description) |

### Ontology (12-axis Schema, 31 rows)

The Schema sheet is the ontology itself — valid enum values encoded as data rows:

```
currentStatus: Development | Deployment | Operation | Retirement
type:          IntelligentControlSystem | GenerativeModel | NarrowAI | ...
MLTask:        Capture | Store | Sort | Predict | Generate | Recognize
militaryUse:   Intelligence | Command | Robot | Weapon
purpose:       AssessingRiskOfOffending | PredictiveMapping | ProducingRecommendation | ...
capacity:      BiometricsBasedEmotionRecognition | AudioProcessing | BehaviourAnalysis | ...
output:        Action | Content | Decision | Recommendation
impact:        PsychologicalHarm | PhysicalInjury | WellbeingImpact | ...
airo:type:     AISubject | AIDeployer | AIDeveloper | AIProvider
```

## Novel Patterns for Neo4j Succession

### 1. Faceted Multi-Label Nodes
Each node carries 12+ parallel classification axes. In Neo4j, this maps to multi-label nodes:
```cypher
(:System:Operation:MLTask_Predict:Intelligence {id: 'Lavender', year: 2023})
```
**Ada mapping**: QHDR.sigma glyph coordinates — each axis is a dimension in the sigma address space.

### 2. Schema-as-Data Ontology
The valid enum values are stored as data rows, not hardcoded. This enables runtime ontology evolution — new categories can be added without code changes.
**Ada mapping**: Sigma graph self-description layer. Schema nodes enable the graph to explain itself.

### 3. Dual-Role Bipartite Collapse
Stakeholders appear as source in `E_isDevelopedBy` AND target in `E_connection`. The same entity plays multiple roles depending on context.
**Ada mapping**: Entity role polymorphism in the Sigma graph.

### 4. Icon-Addressed Visual Topology
72 visual nouns (with unicode glyphs and PNG icons) form a spatial index. Nodes are addressed by their visual identity, not just relational ID.
**Ada mapping**: Memory-as-place. QHDR coordinate addressing. The icon IS the address.

### 5. Hierarchical Meta-Edges
`E_hierarchical` encodes which edge-tables connect to which node-tables. The schema is itself a graph.
**Ada mapping**: Sigma graph self-description. The graph knows its own structure.

### 6. Temporal Status Flow
`year` + `currentStatus` create a lifecycle: Development → Deployment → Operation → Retirement.
**Ada mapping**: Temporal sigma node versioning. State machines on graph nodes.

### 7. AIRO Ontology Alignment
Uses AI Risk Ontology (AIRO) + VAIR framework: `purpose:vair`, `capacity:airo`, `impact:vair`.
**Ada mapping**: Standardized risk/impact metadata on Sigma nodes.

## Usage

```bash
# Analyze patterns
cargo run -- analyze

# Generate Cypher scripts
cargo run -- cypher --output cypher/

# Direct Neo4j ingestion
NEO4J_URI=neo4j+s://xxx.databases.neo4j.io \
NEO4J_USER=neo4j \
NEO4J_PASSWORD=xxx \
cargo run -- neo4j
```

## Feature Flags

| Flag | Default | Description |
|------|---------|-------------|
| `embed` | off | Embed graph JSON at compile time |
| `chess` | off | Chess database harvesting (adds reqwest, csv, shakmaty, ruci) |

## Files

```
data/
  aiwar_graph.json    # Full graph: nodes + edges as JSON
  schema.json         # 12-axis ontology as JSON
src/
  main.rs             # CLI entry point
  model.rs            # Rust types (harvested schema)
  ingest.rs           # Cypher generator with novel patterns
  error.rs            # Error types
  chess_ingest.rs     # Chess database harvesting (feature-gated)
  chess_model.rs      # Chess data model
cypher/
  aiwar_full.cypher   # Generated: all statements combined
  00_constraints.cypher
docs/
  PATTERNS.md         # Detailed pattern analysis
```

## Dependencies

- `neo4rs` 0.8 — Official Neo4j Rust driver (Bolt protocol)
- `serde`/`serde_json` — JSON serialization
- `clap` 4 — CLI argument parsing
- `tokio` — Async runtime
- `tracing` — Structured logging

## Evidence Framework (v4.3)

Data entries are tagged with an `evidence_type` field:

| Type | Meaning |
|------|---------|
| `FACT` | Verifiable from public sources |
| `INFERENCE` | Derived from documented evidence |
| `HYPOTHESIS` | Analytical conjecture requiring validation |

## Related Projects

| Repo | Role |
|------|------|
| [aiwar](https://github.com/AdaWorldAPI/aiwar) | Source dataset (Quarto site by Sarah Ciston) |
| [neo4j-rs](https://github.com/AdaWorldAPI/neo4j-rs) | Rust Neo4j reimplementation (future backend) |
| [q2](https://github.com/AdaWorldAPI/q2) | Graph notebook frontend |
