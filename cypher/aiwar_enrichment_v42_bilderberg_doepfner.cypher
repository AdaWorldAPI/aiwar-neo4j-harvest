// ═══════════════════════════════════════════════════════════════
// AIWAR v4.2 PATCH — 2026-03-22
// Bilderberg network, Döpfner-Thiel-Springer axis, Stark Defence
// political controversy, NATO DIANA, Anduril drone warfare
// Sources: Bilderberg official lists, Politico, X/Twitter verified,
//          NATO DIANA, Kurier.at, Manager Magazin
// ═══════════════════════════════════════════════════════════════

// §92 PERSON NODES

MERGE (p:Person {id: 'Doepfner'}) SET p.name = 'Mathias Döpfner', p.role = 'CEO Axel Springer SE', p.note = 'CEO of largest German media group (BILD, WELT, Politico, Business Insider). Bilderberg 2024+2025 alongside Thiel and Karp. Son Moritz received €50M from Thiel for VC fund. Personal friendship with Thiel.', p.receptor = 'DOMINANCE', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'ENTRY', p.node_function = 'LEGITIMIZER';

MERGE (p:Person {id: 'BrianSchimpf'}) SET p.name = 'Brian Schimpf', p.role = 'CEO Anduril Industries', p.note = 'Bilderberg 2024. Co-runs Anduril with Palmer Luckey. Former Palantir employee.', p.receptor = 'MISSION', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'DarioAmodei'}) SET p.name = 'Dario Amodei', p.role = 'CEO Anthropic', p.note = 'Bilderberg 2024. One year before Claude deployed in Maven kill chain. Called the situation inherently contradictory. Anthropic filed lawsuits against Pentagon.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'CROSSOVER', p.rubicon_event = 'Claude deployed in Iran targeting despite Anthropic objections — inherently contradictory', p.sublimation = 'building safe AI for humanitys benefit', p.qualia_mask = 'moral leadership, responsible innovation', p.unsublimated = 'CEO whose product recommends bombing targets while he calls it contradictory', p.exposure_level = 2, p.node_function = 'ENABLER';

// §93 STAKEHOLDER NODES

MERGE (s:Stakeholder {id: 'AxelSpringer'}) SET s.name = 'Axel Springer SE', s.type = 'media conglomerate', s.note = 'Largest German media group. BILD, WELT, Politico, Business Insider. CEO Döpfner. KKR took majority 2023. Döpfner-Thiel personal friendship.';
MERGE (s:Stakeholder {id: 'DoepfnerCapital'}) SET s.name = 'Moritz Döpfner VC Fund', s.type = 'venture capital', s.note = 'Moritz Döpfner (son of Mathias). Thiel invested €50M. Links Springer media dynasty to Thiel investment network.';
MERGE (s:Stakeholder {id: 'Bilderberg2024'}) SET s.name = 'Bilderberg Conference 2024', s.type = 'elite conference', s.note = 'Madrid, May 30-Jun 2 2024. 131 participants. Present: Thiel, Karp (Palantir CEO), Schimpf (Anduril CEO), Döpfner (Springer), Amodei (Anthropic), Hassabis (DeepMind), Schmidt (ex-Google), Stoltenberg (NATO SG).';
MERGE (s:Stakeholder {id: 'Bilderberg2025'}) SET s.name = 'Bilderberg Conference 2025', s.type = 'elite conference', s.note = 'Stockholm, Jun 12-15 2025. Döpfner and Thiel both confirmed participants. Only documented joint meeting 2025.';
MERGE (s:Stakeholder {id: 'NATODIANA'}) SET s.name = 'NATO DIANA', s.type = 'innovation accelerator', s.note = 'Defence Innovation Accelerator for the North Atlantic. 150 innovators (2026 cohort), 16 accelerator sites, 200+ test centers across 32 NATO states. Anduril active participant.';

// §94 EDGES — BILDERBERG NETWORK (THE TABLE)

// 2024 Madrid — the key meeting
MATCH (a {id:'Thiel'}) MATCH (b {id:'Bilderberg2024'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant', r.weight=5, r.source='Bilderberg official list', r.reliability_score=1.0;
MATCH (a {id:'AlexKarp'}) MATCH (b {id:'Bilderberg2024'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant (Palantir CEO)', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'BrianSchimpf'}) MATCH (b {id:'Bilderberg2024'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant (Anduril CEO)', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Doepfner'}) MATCH (b {id:'Bilderberg2024'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant (Springer CEO)', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'DarioAmodei'}) MATCH (b {id:'Bilderberg2024'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant (Anthropic CEO)', r.weight=5, r.reliability_score=1.0;

// 2025 Stockholm
MATCH (a {id:'Thiel'}) MATCH (b {id:'Bilderberg2025'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Doepfner'}) MATCH (b {id:'Bilderberg2025'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='participant', r.weight=5, r.reliability_score=1.0;

// §95 EDGES — DÖPFNER-THIEL AXIS

MATCH (a {id:'Thiel'}) MATCH (b {id:'Doepfner'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='personal friendship + Bilderberg 2024+2025', r.weight=4, r.source='Politico, Manager Magazin', r.reliability_score=1.0;
MATCH (a {id:'Thiel'}) MATCH (b {id:'DoepfnerCapital'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='invested €50M in Moritz Döpfner fund', r.weight=5, r.source='Politico, Manager Magazin', r.reliability_score=1.0;
MATCH (a {id:'Doepfner'}) MATCH (b {id:'AxelSpringer'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CEO', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Doepfner'}) MATCH (b {id:'DoepfnerCapital'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='sons VC fund', r.weight=4, r.reliability_score=1.0;

// §96 EDGES — ANTHROPIC CEO AT THE TABLE

MATCH (a {id:'DarioAmodei'}) MATCH (b {id:'Anthropic'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CEO and co-founder', r.weight=5, r.reliability_score=1.0;

// §97 EDGES — NATO DIANA

MATCH (a {id:'NATODIANA'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Anduril active in DIANA ecosystem', r.weight=4, r.source='NATO DIANA', r.reliability_score=0.95;
MATCH (a {id:'NATODIANA'}) MATCH (b {id:'Lattice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Lattice in Autonomy challenge area', r.weight=4, r.reliability_score=0.95;
MATCH (a {id:'NATODIANA'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='parallel to Maven Smart System NATO', r.weight=4, r.reliability_score=1.0;

// §98 EDGES — STARK DEFENCE POLITICAL CONTROVERSY

MATCH (a {id:'Thiel'}) MATCH (b {id:'StarkDefence'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='minority investor <10% via Founders Fund + In-Q-Tel', r.weight=4, r.detail='Janosch Dahmen (Grüne MdB) viral thread: Döpfner-Thiel-Firma STARK, CIA & Döpfners wollen Milliarden Steuergeld. 3-day window: Feb 25 Bundestag approval → Feb 28 Iran strikes.', r.source='Kurier.at, X/@janoschdahmen', r.reliability_score=1.0;
MATCH (a {id:'DoepfnerCapital'}) MATCH (b {id:'StarkDefence'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Döpfner family investment link', r.weight=4, r.source='Kurier.at, Politico', r.reliability_score=1.0;

// §99 EMERGENT PATTERNS (v4.2)

// PATTERN AO: The Bilderberg Table (v4.2)
//   Madrid 2024, one table:
//   Peter Thiel (Palantir co-founder, Valar/Epstein $40M)
//   Alex Karp (Palantir CEO, Maven kill chain operator)
//   Brian Schimpf (Anduril CEO, $20B Army contract, ex-Palantir)
//   Mathias Döpfner (Springer CEO, Thiel personal friend)
//   Dario Amodei (Anthropic CEO, Claude in Maven)
//   Also present: Demis Hassabis, Eric Schmidt, Jens Stoltenberg
//
//   One year later:
//   Maven = Pentagon Program of Record
//   Claude = identifying 1,000 targets in 24 hours in Iran
//   Anduril = $20B Army contract
//   Springer = largest German media covering the war
//   Amodei = calls his own product in the kill chain "contradictory"
//
//   The people who build the weapons, the AI that targets them,
//   the media that covers the war, and the CEO who says it's
//   contradictory — all sat at the same table in Madrid.

// PATTERN AP: The Döpfner-Thiel Media-Defense Bridge (v4.2)
//   Thiel → €50M → Moritz Döpfner VC fund
//   Thiel → Founders Fund → Stark Defence (German kamikaze drones)
//   Döpfner → CEO Axel Springer (BILD, WELT, Politico)
//   Springer media covers: Iran war, Stark Defence deal, Palantir Maven
//   Thiel funds: the weapons AND has financial ties to the media
//   covering the deployment of those weapons.
//   Janosch Dahmen (Grüne): "Döpfner-Thiel-Firma STARK will Milliarden Steuergeld"
//   3-day window: Bundestag approved Stark on Feb 25 → Iran strikes Feb 28

// §100 STATISTICS (v4.2)
// Person nodes: 59 (+3: Doepfner, BrianSchimpf, DarioAmodei)
// Stakeholder nodes: 120 (+5: AxelSpringer, DoepfnerCapital, Bilderberg2024,
//                    Bilderberg2025, NATODIANA)
// Total edges: ~340
// Patterns: A-AP = 42 emergent patterns
// 14 files on GitHub
