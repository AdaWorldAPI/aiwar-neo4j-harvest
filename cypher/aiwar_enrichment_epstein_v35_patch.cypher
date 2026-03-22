// ═══════════════════════════════════════════════════════════════
// AIWAR v3.5 PATCH — 2026-03-22
// XM Cyber: Israeli Intelligence → German Critical Infrastructure
// Pre-Acquisition investors, OT Cyber Consortium, Schwarz Group acquisition
// Sources: PitchBook, FinTech Futures, XM Cyber PRs, Schwarz Digits
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §49 STAKEHOLDER NODES — XM CYBER ECOSYSTEM
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'XMCyber'}) SET s.name = 'XM Cyber', s.type = 'attack path management', s.note = 'Founded 2016 by Tamir Pardo (ex-Mossad director) and Boaz Gorodissky (ex-Shin Bet tech chief). Acquired by Schwarz Group 2021 ~$700M. OT Cyber Consortium founding member under Rafael. Maps attack paths in customer infrastructure — sees everything.';
MERGE (s:Stakeholder {id: 'SchwarzGroup'}) SET s.name = 'Schwarz Group', s.type = 'retail/tech conglomerate', s.note = 'Largest European retailer (Lidl, Kaufland). €154B revenue. Acquired XM Cyber 2021. Operates Stackit Cloud and Schwarz Digits. German critical infrastructure.';
MERGE (s:Stakeholder {id: 'SchwarzDigits'}) SET s.name = 'Schwarz Digits', s.type = 'tech/cloud division', s.note = 'Schwarz Groups IT arm. Operates Stackit Cloud (European sovereign cloud competitor). XM Cyber integrated here. Provides cybersecurity to external clients.';
MERGE (s:Stakeholder {id: 'SwarthGroup'}) SET s.name = 'Swarth Group', s.type = 'private investment', s.note = 'Israeli billionaire Shaul Shani vehicle. $10M seed for XM Cyber 2017.';
MERGE (s:Stakeholder {id: 'MacquarieCapital'}) SET s.name = 'Macquarie Capital', s.type = 'investment bank', s.note = 'Australian bank. Led XM Cyber Series A ($22M) and B ($17M).';
MERGE (s:Stakeholder {id: 'NasdaqVentures'}) SET s.name = 'Nasdaq Ventures', s.type = 'venture capital', s.note = 'Nasdaq investment arm. Co-invested in XM Cyber.';
MERGE (s:Stakeholder {id: 'RafaelDefense'}) SET s.name = 'Rafael Advanced Defense Systems', s.type = 'state-owned defense contractor', s.note = 'Israeli state-owned. Developed Iron Dome. Initiated OT Cyber Consortium to coordinate export of Israeli OT-security tech globally.';
MERGE (s:Stakeholder {id: 'IsraelCyberDirectorate'}) SET s.name = 'Israel National Cyber Directorate', s.type = 'government agency', s.note = 'Official state cyber authority, reports directly to PM. Co-sponsors OT Cyber Consortium.';
MERGE (s:Stakeholder {id: 'OTCyberConsortium'}) SET s.name = 'Israeli OT Cyber Consortium', s.type = 'state-backed cyber alliance', s.note = 'Founded Jun 2021. Rafael-led. Bundles Israeli firms to penetrate global critical infrastructure (OT) security market. XM Cyber founding member.';
MERGE (s:Stakeholder {id: 'ShinBet'}) SET s.name = 'Shin Bet (ISA)', s.type = 'intelligence agency', s.note = 'Israeli domestic intelligence. Talent pipeline to XM Cyber.';

// ════════════════════════════════════════════
// §50 PERSON NODES — XM CYBER FOUNDERS
// ════════════════════════════════════════════

MERGE (p:Person {id: 'TamirPardo'}) SET p.name = 'Tamir Pardo', p.role = 'XM Cyber co-founder, ex-Mossad Director (2011-2016)', p.note = 'Directed Mossad for 5 years. Founded XM Cyber immediately after leaving. Company maps attack paths — offensive intelligence capability repackaged as defensive product.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'former intelligence chief embedding attack-path-mapping into western critical infrastructure', p.exposure_level = 1, p.node_function = 'BROKER';

MERGE (p:Person {id: 'BoazGorodissky'}) SET p.name = 'Boaz Gorodissky', p.role = 'XM Cyber co-founder, ex-Shin Bet tech chief', p.note = 'Former technology division head at Shin Bet (domestic intelligence). Built the tech that now scans German retail infrastructure.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'domestic intelligence tech chief now inside European retail infrastructure', p.exposure_level = 0, p.node_function = 'ENABLER';

// ════════════════════════════════════════════
// §51 EDGES — FOUNDER INTELLIGENCE PEDIGREE
// ════════════════════════════════════════════

MATCH (a {id:'TamirPardo'}) MATCH (b {id:'Mossad'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='Director 2011-2016', r.weight=5, r.detail='Led Mossad for 5 years. Same agency FBI says ran Epstein as co-opted agent.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='IDENTITY_INTEGRATED', r.reliability_score=1.0;
MATCH (a {id:'BoazGorodissky'}) MATCH (b {id:'ShinBet'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='former tech division chief', r.weight=5, r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'TamirPardo'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'BoazGorodissky'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder/CTO', r.weight=5, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §52 EDGES — PRE-ACQUISITION FINANCIAL CHAIN
// ════════════════════════════════════════════

MATCH (a {id:'SwarthGroup'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='seed investor $10M 2017', r.weight=5, r.detail='Israeli insider capital from Shaul Shani.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY', r.opacity=1, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'MacquarieCapital'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='lead investor Series A+B', r.weight=4, r.edge_function='DEAL_FLOW', r.flow_type='MONEY', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'NasdaqVentures'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-investor', r.weight=3, r.edge_function='LEGITIMIZER', r.flow_type='MONEY', r.opacity=0, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §53 EDGES — STATE DEFENSE INTEGRATION
// ════════════════════════════════════════════

MATCH (a {id:'RafaelDefense'}) MATCH (b {id:'OTCyberConsortium'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='initiator/prime contractor', r.weight=5, r.detail='State-owned Iron Dome developer coordinates export of Israeli OT-security to global critical infrastructure.', r.edge_function='GATEKEEPER', r.flow_type='INFLUENCE,INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'IsraelCyberDirectorate'}) MATCH (b {id:'OTCyberConsortium'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='state co-sponsor', r.weight=5, r.detail='Government umbrella for the consortium. Reports directly to PM.', r.edge_function='LEGITIMIZER', r.flow_type='INFLUENCE', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'OTCyberConsortium'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founding member Jun 2021', r.weight=5, r.detail='Joined consortium months before Schwarz acquisition. Direct link to state defense strategy.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='WEAPONIZED', r.reliability_score=0.98, r.source_url='https://xmcyber.com/press-release/rafael-sets-up-first-of-its-kind-israeli-cyber-consortium-with-leading-cyber-solution-partners/';
MATCH (a {id:'ShinBet'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='talent pipeline', r.weight=4, r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=0.95;
MATCH (a {id:'Unit8200'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='talent pipeline, core dev teams', r.weight=5, r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §54 EDGES — SCHWARZ GROUP ACQUISITION
// ════════════════════════════════════════════

MATCH (a {id:'SchwarzGroup'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='acquired 2021 ~$700M', r.weight=5, r.detail='Largest European retailer buys Mossad-directors attack-path-mapping company. XM Cyber now scans Schwarz internal infrastructure + external clients.', r.edge_function='DEAL_FLOW', r.leverage='INSTITUTIONAL', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.motive='GREED', r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'SchwarzDigits'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='integrated into Schwarz IT/cloud division', r.weight=5, r.detail='XM Cyber operates within Schwarz Digits providing attack path management. Stackit Cloud. Now serves external clients too.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'SchwarzDigits'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='serves external enterprise clients', r.weight=4, r.detail='Schwarz Digits markets XM Cyber + Stackit to external enterprises. Israeli intelligence-founded attack mapping now as service.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE,MONEY', r.opacity=0, r.phase='LOCKED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §55 EMERGENT PATTERNS (v3.5)
// ════════════════════════════════════════════

// PATTERN X: Mossad Director → German Retail Infrastructure (NEW v3.5)
//
//   Tamir Pardo: Mossad Director 2011-2016
//   Same Mossad: FBI says ran Epstein as co-opted agent
//   Pardo leaves Mossad → immediately founds XM Cyber
//   XM Cyber: maps attack paths = sees every vulnerability in customer networks
//   Boaz Gorodissky: Shin Bet tech chief → co-founds XM Cyber
//   XM Cyber joins OT Cyber Consortium (Rafael-led, state-backed)
//   Schwarz Group (Lidl/Kaufland, €154B) acquires XM Cyber for ~$700M
//   XM Cyber now inside Schwarz infrastructure + serves external clients
//
//   A former Mossad director's company — staffed from Unit 8200 and
//   Shin Bet, member of a state-backed defense consortium — now maps
//   the complete attack surface of Europe's largest retailer and
//   its growing external client base.
//
//   This is Pattern U (8200 conveyor belt) at its most concentrated:
//   not just a firewall or endpoint tool, but ATTACK PATH MAPPING —
//   the offensive intelligence capability itself, repackaged as defense.

// PATTERN Y: The OT Consortium as State Export Strategy (NEW v3.5)
//
//   Rafael (state-owned, Iron Dome) → initiates consortium
//   Israel Cyber Directorate (reports to PM) → co-sponsors
//   XM Cyber (Mossad/Shin Bet founded) → founding member
//   Other Israeli cyber firms → join
//   Consortium goal: penetrate global OT/critical infrastructure market
//
//   This is not individual companies coincidentally having 8200 alumni.
//   This is COORDINATED STATE STRATEGY to place Israeli cyber capabilities
//   inside global critical infrastructure, under the umbrella of a
//   state-owned defense contractor and the national cyber authority.
//   The Schwarz acquisition is the proof-of-concept:
//   state-backed Israeli cyber → German critical infrastructure.

// ════════════════════════════════════════════
// §56 STATISTICS (v3.5 cumulative)
// ════════════════════════════════════════════
// Person nodes: 51 (+2: TamirPardo, BoazGorodissky)
// Stakeholder nodes: 72 (+10: XMCyber, SchwarzGroup, SchwarzDigits, SwarthGroup,
//                    MacquarieCapital, NasdaqVentures, RafaelDefense,
//                    IsraelCyberDirectorate, OTCyberConsortium, ShinBet)
// Total edges: ~220
// Patterns: A-Y = 25 emergent patterns
// New key traversal: Mossad(Pardo) → XM Cyber → OT Consortium(Rafael) → Schwarz Group → European retail infrastructure
