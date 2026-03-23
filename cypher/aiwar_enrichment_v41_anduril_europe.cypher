// ═══════════════════════════════════════════════════════════════
// AIWAR v4.1 PATCH — 2026-03-22
// Anduril Europe expansion, Rheinmetall partnership, Lattice details
// Sources: Rheinmetall PR, Anduril, Reuters, Handelsblatt, US Army
// ═══════════════════════════════════════════════════════════════

// §88 NEW STAKEHOLDER NODES

MERGE (s:Stakeholder {id: 'Rheinmetall'}) SET s.name = 'Rheinmetall AG', s.type = 'defense contractor (German)', s.note = 'Largest German arms manufacturer. Strategic partnership with Anduril for Lattice integration into German autonomous systems, Drohnenwall program, Counter-UAS. First demonstrators Mar 2026.';
MERGE (s:Stakeholder {id: 'AndurilEurope'}) SET s.name = 'Anduril Europe Operations', s.type = 'defense tech expansion', s.note = 'London office + Wales factory (UK). Drone deliveries to Ukraine (Roadrunner). Rheinmetall partnership (DE). Counter-UAS for NATO (NL, PL).';
MERGE (s:Stakeholder {id: 'Oculus'}) SET s.name = 'Oculus VR', s.type = 'tech (acquired)', s.note = 'Founded by Palmer Luckey 2012. Sold to Facebook 2014 for ~$2B. Luckey fired 2017 for $10K pro-Trump donation. Founded Anduril same year.';

// §89 EDGES — LUCKEY BIOGRAPHY + ANDURIL EUROPE

MATCH (a {id:'PalmerLuckey'}) MATCH (b {id:'Oculus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founded 2012, sold to Facebook $2B, fired 2017 for Trump donation', r.weight=4, r.reliability_score=1.0;
MATCH (a {id:'PalmerLuckey'}) MATCH (b {id:'Trump'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='Trump supporter since 2016, close to second admin', r.weight=4, r.source='NYT, Reuters', r.reliability_score=1.0;
MATCH (a {id:'Anduril'}) MATCH (b {id:'AndurilEurope'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='European hub: UK + Germany', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Anduril'}) MATCH (b {id:'Rheinmetall'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='strategic partnership 2025: Lattice into German autonomous systems', r.weight=5, r.source='Rheinmetall PR, Reuters', r.detail='Lattice AI integrated into Rheinmetall platforms (Drohnenwall, Counter-UAS, autonomous vehicles). First demonstrators Mar 2026. Pitched as EU data sovereignty.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'Rheinmetall'}) MATCH (b {id:'GermanGov'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='primary German defense contractor', r.weight=5, r.reliability_score=1.0;

// §90 EMERGENT PATTERNS (v4.1)

// PATTERN AN: The Anduril Sovereignty Paradox (v4.1)
//
//   Anduril: US company, Thiel + In-Q-Tel (CIA) funded
//   Palmer Luckey: close Trump supporter
//   Rheinmetall: integrates Lattice into German defense
//   Pitch: "European data sovereignty — Lattice runs on edge, no US cloud"
//   Reality: Lattice ↔ Maven partnership since 2024
//
//   The same architecture that connects to Palantir Maven
//   (which uses Claude for Iran targeting, funded through
//   Epstein→Thiel chain) is being integrated into the
//   primary German defense contractor's platforms.
//
//   Compare to XM Cyber/STACKIT sovereignty paradox (Pattern AC):
//   XM Cyber: Mossad-founded → "European sovereign cloud security"
//   Anduril/Lattice: CIA-funded, Trump-connected → "European autonomous defense"
//   Both sold as sovereignty. Both architecturally connected to
//   the same US-Israeli intelligence-technology ecosystem.

// §91 STATISTICS (v4.1 cumulative)
// Person nodes: 56
// Stakeholder nodes: 115 (+3: Rheinmetall, AndurilEurope, Oculus)
// Total edges: ~320
// Patterns: A-AN = 40 emergent patterns
// 13 files on GitHub
