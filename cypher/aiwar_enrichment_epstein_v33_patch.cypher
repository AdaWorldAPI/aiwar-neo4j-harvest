// ═══════════════════════════════════════════════════════════════
// AIWAR v3.3 PATCH — 2026-03-22
// a16z defense footprint, Winking Mechanism, Anthropic/Claude in Maven,
// Anduril autonomous weapons
// Sources: DOJ Audio Feb 2026, Guardian Oct 2025 + Mar 2026, +972, Wired
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §35 NEW STAKEHOLDER NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'a16z'}) SET s.name = 'Andreessen Horowitz (a16z)', s.type = 'venture capital', s.note = 'Explicitly named by Epstein in DOJ audio to Barak: the biggest VC in Silicon Valley, bigger than Sequoia. American Dynamism thesis funds autonomous defense tech (Anduril, Shield AI).';
MERGE (s:Stakeholder {id: 'Anduril'}) SET s.name = 'Anduril Industries', s.type = 'defense tech', s.note = 'Major a16z portfolio. Autonomous weapons, surveillance. Palmer Luckey founded. Lattice OS for military targeting.';
MERGE (s:Stakeholder {id: 'Anthropic'}) SET s.name = 'Anthropic', s.type = 'AI company', s.note = 'Claude developer. Partnered with Palantir for classified defense environments. Publicly clashed with Pentagon over ethics while Claude deployed in Maven kill chains. Labeled supply-chain risk by Hegseth.';
MERGE (s:Stakeholder {id: 'ClaudeAI'}) SET s.name = 'Claude AI', s.type = 'AI model', s.note = 'LLM integrated into Palantir Maven. Parses classified intel feeds, satellite imagery, recommends target selection in active conflicts including 2026 Iran War.';

// ════════════════════════════════════════════
// §36 EDGES — EPSTEIN AUDIO → a16z
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'a16z'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='named in DOJ audio as key VC target', r.weight=3, r.source='DOJ audio Feb 2026, YouTube', r.detail='Epstein to Barak: Andreessen Horowitz are the biggest VC in Silicon Valley, bigger than Sequoia, the new Kleiner Perkins. These are the smart boys. We need them in the next three weeks.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE,ACCESS', r.opacity=4, r.phase='ENABLING', r.reliability_score=0.99;
MATCH (a {id:'a16z'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='major investor, American Dynamism', r.weight=5, r.source='public SEC filings', r.detail='a16z American Dynamism thesis funds autonomous defense tech. Anduril: $14B+ valuation, autonomous weapons.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// ════════════════════════════════════════════
// §37 EDGES — WINKING MECHANISM (COVERT DATA HANDOFF)
// ════════════════════════════════════════════

MATCH (a {id:'GoogleCloud'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='winking mechanism: covert legal handoff', r.weight=5, r.source='Guardian Oct 29 2025', r.detail='Under foreign court subpoena with gag order, Google sends coded shekel payments to Israeli Finance Ministry using international dialing codes as amounts. US request=1000 NIS (+1), Italy=3900 NIS (+39). Automated IDF warning to delete data before seizure.', r.edge_function='COVER_UP', r.flow_type='INTELLIGENCE,MONEY', r.opacity=4, r.phase='WEAPONIZED', r.reliability_score=0.97, r.source_url='https://www.theguardian.com/us-news/2025/oct/29/google-amazon-israel-contract-secret-code';
MATCH (a {id:'AWS'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='winking mechanism: covert legal handoff', r.weight=5, r.source='Guardian Oct 29 2025', r.detail='Identical mechanism to Google. Amazon alerts Finance Ministry of foreign subpoenas using dialing code amounts in shekel payments.', r.edge_function='COVER_UP', r.flow_type='INTELLIGENCE,MONEY', r.opacity=4, r.phase='WEAPONIZED', r.reliability_score=0.97, r.source_url='https://www.theguardian.com/us-news/2025/oct/29/google-amazon-israel-contract-secret-code';

// ════════════════════════════════════════════
// §38 EDGES — ANTHROPIC → CLAUDE → MAVEN → IRAN KILL CHAIN
// ════════════════════════════════════════════

MATCH (a {id:'Anthropic'}) MATCH (b {id:'ClaudeAI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='developer', r.weight=5, r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'Palantir'}) MATCH (b {id:'ClaudeAI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='integrator into defense systems', r.weight=5, r.source='Guardian Mar 13 2026, Bloomberg', r.detail='Palantir integrates Claude into classified defense environments for battlefield intel analysis and tactical response suggestions.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.98;
MATCH (a {id:'ClaudeAI'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='LLM core for targeting', r.weight=5, r.source='Guardian Mar 13 2026, Pentagon docs', r.detail='Claude parses classified intelligence feeds, satellite imagery, and recommends target selection in active conflicts including 2026 Iran War via Maven.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §39 EMERGENT PATTERNS (v3.3)
// ════════════════════════════════════════════

// PATTERN R: The Epstein Audio Chain — Complete (v3.3)
//
//   DOJ Audio (YouTube 6bd4wEtUXZU):
//   Epstein → tells Barak → "Peter Thiel is one of the best, Palantir"
//   Epstein → tells Barak → "Andreessen Horowitz, biggest VC, the smart boys"
//   Epstein → tells Barak → "we need them in the next three weeks"
//
//   Today (March 2026):
//   Thiel → founded Palantir → $360B, runs Maven → targeting Iran
//   a16z → funded Anduril → $14B+, autonomous weapons
//   Epstein → $40M into Valar → Thiel → Palantir → Maven → Iran kill chain
//   Barak → handler → received the pitch → FBI says Epstein trained under him
//
//   The intelligence asset briefed his handler on which Silicon Valley
//   companies to capture. Both companies are now the backbone of
//   autonomous warfare. The audio is public. The chain is complete.

// PATTERN S: The Winking Mechanism — Algorithmic Obstruction of Justice (v3.3)
//
//   Google/Amazon receive foreign court subpoena for Israeli data
//   Gag order prevents them from informing Israel directly
//   Instead: coded shekel payment to Finance Ministry
//   Amount = international dialing code of requesting country
//   IDF receives automatic warning → deletes/moves data before seizure
//   This is infrastructure-level obstruction of justice
//   built into a $1.2B sovereign cloud contract
//   The same cloud that runs Lavender (37,000 targets) and Gospel

// PATTERN T: Claude in the Kill Chain — The Anthropic Paradox (v3.3)
//
//   Anthropic: "AI safety is our mission"
//   Anthropic: partnered with Palantir for classified defense
//   Claude: parses classified intel, recommends target selection
//   Claude: deployed in Maven → active in Iran War targeting
//   Hegseth: labeled Anthropic "supply-chain risk" over ethics objections
//   Anthropic: continued deployment despite public clash
//
//   The company built to ensure AI safety is now inside the kill chain
//   of an undeclared war, recommending targets based on satellite imagery,
//   inside a system whose funding chain traces back to an intelligence
//   asset's $40M investment in the founder's VC fund.
//
//   Graph traversal: Epstein → $40M → Valar → Thiel → Palantir →
//   integrates Claude → Maven → target recommendation → Iran strikes
//   Hops: 6. All documented. All public record.

// ════════════════════════════════════════════
// §40 STATISTICS (v3.3 cumulative)
// ════════════════════════════════════════════
// Person nodes: 43
// Stakeholder nodes: 53 (v3.2:49 + a16z, Anduril, Anthropic, ClaudeAI)
// Total edges: ~170
// Patterns: A-T = 20 emergent patterns
// Graph spans: 1981 (Bear Stearns) → March 22 2026 (Hormuz ultimatum)
// Shortest path Epstein→Iran targeting: 6 hops, all documented
