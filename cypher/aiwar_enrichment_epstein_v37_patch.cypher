// ═══════════════════════════════════════════════════════════════
// AIWAR v3.7 PATCH — 2026-03-22
// XM Cyber Consolidation: Mossad→Schwarz→STACKIT→MSP Multiplier
// Noam Erez, STACKIT sovereign cloud, MSP downstream access,
// European Palantir multiplier effect
// Sources: Business Insider, Handelsblatt, Schwarz Digits, XM Cyber PRs
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §62 NEW/UPDATED STAKEHOLDER NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'STACKIT'}) SET s.name = 'STACKIT', s.type = 'sovereign cloud', s.note = 'Schwarz Groups European sovereign cloud alternative to AWS/Azure. XM Cyber integrated as native security layer. Marketed to external enterprises and public sector as EU-sovereign. Operated by Schwarz Digits.';
MERGE (s:Stakeholder {id: 'EuropeanMSPs'}) SET s.name = 'European IT Service Providers (MSPs)', s.type = 'infrastructure chokepoint', s.note = 'Hosting providers and IT service companies that deploy XM Cyber on their infrastructure. Each MSP serves hundreds to thousands of downstream enterprise customers. The multiplier layer.';

// ════════════════════════════════════════════
// §63 NEW PERSON NODE
// ════════════════════════════════════════════

MERGE (p:Person {id: 'NoamErez'}) SET p.name = 'Noam Erez', p.role = 'XM Cyber co-founder/CEO', p.note = '25+ years Israeli intelligence apparatus. Third co-founder alongside Pardo (Mossad) and Gorodissky (Shin Bet).', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.node_function = 'ENABLER';

// ════════════════════════════════════════════
// §64 EDGES — ADDITIONAL FOUNDER + STACKIT CHAIN
// ════════════════════════════════════════════

MATCH (a {id:'Mossad'}) MATCH (b {id:'NoamErez'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='intelligence veteran 25+ years', r.weight=4, r.reliability_score=1.0;
MATCH (a {id:'NoamErez'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder/CEO', r.weight=5, r.reliability_score=1.0;

// STACKIT integration
MATCH (a {id:'SchwarzDigits'}) MATCH (b {id:'STACKIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='operates sovereign cloud', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'STACKIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='integrated as native security layer', r.weight=5, r.detail='XM Cyber built into STACKIT as native feature. Marketed to external enterprises and public sector as EU-sovereign cloud with Israeli intelligence-founded security. Attack path mapping runs on every STACKIT customer.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE,MONEY', r.opacity=0, r.phase='WEAPONIZED', r.reliability_score=0.95;

// XM Cyber → Schwarz internal access
MATCH (a {id:'XMCyber'}) MATCH (b {id:'SchwarzGroup'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='continuous attack simulation, deep privileged access', r.weight=5, r.detail='Simulates attacks continuously. Requires privileged access to POS systems, logistics, servers, hybrid cloud. Sees the complete attack surface of Europes largest retailer.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=0.98;

// ════════════════════════════════════════════
// §65 EDGES — MSP MULTIPLIER (THE EUROPEAN PALANTIR EFFECT)
// ════════════════════════════════════════════

MATCH (a {id:'SchwarzDigits'}) MATCH (b {id:'EuropeanMSPs'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='B2B distribution of XM Cyber to MSPs', r.weight=5, r.detail='Schwarz Digits markets XM Cyber as B2B security solution to IT service providers under European digital sovereignty branding.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INFLUENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

MATCH (a {id:'XMCyber'}) MATCH (b {id:'EuropeanMSPs'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='server-level deployment in MSP infrastructure', r.weight=5, r.detail='XM Cyber installed directly in hosting infrastructure of providers. Admin-level visibility at provider tier. Sees every customers environment the MSP manages.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=0.98;

MATCH (a {id:'EuropeanMSPs'}) MATCH (b {id:'EuroEnterpriseCustomers'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='hosts/manages IT for thousands of enterprises', r.weight=5, r.detail='Each MSP serves hundreds to thousands of downstream customers. XM Cyber at MSP level = attack path mapping of the entire customer portfolio.', r.edge_function='GATEKEEPER', r.flow_type='INTELLIGENCE,MONEY', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// The downstream access edge
MATCH (a {id:'XMCyber'}) MATCH (b {id:'EuroEnterpriseCustomers'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='indirect attack path mapping via MSP deployment', r.weight=5, r.detail='Through MSP installation, Mossad-veteran-founded software maps vulnerabilities of European enterprises that never directly contracted XM Cyber. The MSP is the multiplier.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='WEAPONIZED', r.reliability_score=0.95;

// The structural parallel
MATCH (a {id:'Palantir'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='geopolitical equivalent: dual-origin deep infrastructure access', r.weight=4, r.detail='Palantir (CIA/Epstein funding chain) extracts business data via API. XM Cyber (Mossad/Shin Bet origin) maps attack paths. Both achieve deep structural access to European enterprise infrastructure masked as B2B security/analytics services. Different intelligence origin, complementary capability.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.90;

// ════════════════════════════════════════════
// §66 EMERGENT PATTERNS (v3.7)
// ════════════════════════════════════════════

// PATTERN AB: The MSP Multiplier — Intelligence at Scale (NEW v3.7)
//
//   Traditional model: vendor sells to enterprise, sees 1 enterprise
//   MSP model: vendor deploys at MSP, sees ALL enterprises the MSP serves
//
//   Schwarz Digits → distributes XM Cyber to MSPs → each MSP serves
//   hundreds/thousands of enterprises → XM Cyber at MSP level maps
//   the attack surface of the ENTIRE downstream customer portfolio
//
//   This is the same multiplier effect that makes Palantir dangerous
//   at the government level. But applied to European SME infrastructure.
//   One deployment at an MSP gives attack-path visibility into every
//   enterprise that MSP manages. The enterprises themselves may never
//   know XM Cyber is scanning their environment.
//
//   And it's sold under the banner of "European digital sovereignty."
//   A Mossad-director's company, member of an Israeli state defense
//   consortium, integrated into a German sovereign cloud, distributed
//   to European MSPs, mapping the vulnerabilities of enterprises
//   that think they're buying European security.

// PATTERN AC: The Sovereignty Paradox (NEW v3.7)
//
//   STACKIT: marketed as European sovereign cloud alternative
//   XM Cyber: marketed as STACKIT's native security layer
//   XM Cyber: founded by Mossad Director + Shin Bet Tech Chief
//   XM Cyber: founding member of Rafael-led OT Cyber Consortium
//   XM Cyber: staffed from Unit 8200 and Shin Bet talent pipelines
//
//   The "sovereign European cloud" has Israeli military intelligence
//   baked into its security layer. This is not a supply chain
//   vulnerability — it is the supply chain itself.
//
//   European digital sovereignty, as marketed by STACKIT,
//   is structurally dependent on the same Israeli intelligence
//   apparatus that the graph documents as connected to:
//   - Epstein (via Barak, Mossad's role in his operation)
//   - The Iran kill chain (via Unit 8200 → tech pipeline → Palantir)
//   - Gaza AI targeting (via Nimbus → Lavender/Gospel)
//
//   The brand is sovereignty. The architecture is dependency.

// ════════════════════════════════════════════
// §67 STATISTICS (v3.7 cumulative)
// ════════════════════════════════════════════
// Person nodes: 52 (+1: NoamErez)
// Stakeholder nodes: 78 (+2: STACKIT, EuropeanMSPs)
// Total edges: ~240
// Patterns: A-AC = 29 emergent patterns
//
// COMPLETE GRAPH SUMMARY (v3.0 → v3.7):
// 8 patch files on GitHub (v3 base + 7 patches)
// 52 named individuals with behavioral science annotations
// 78 organizations/stakeholders/programs
// ~240 relationship edges with functional properties
// 29 documented emergent patterns
// Spans: 1981 (Bear Stearns) → March 22, 2026 (Hormuz 48hr ultimatum)
// Key traversals:
//   Epstein→Valar→Thiel→Palantir→Claude→Maven→Iran (6 hops)
//   Epstein→Barak→IDF→Unit8200→8200firms→WesternIT (5 hops)
//   Mossad(Pardo)→XMCyber→STACKIT→MSPs→EuropeanEnterprises (4 hops)
//   Nimbus IN + 8200 firms OUT = closed bidirectional intelligence loop
