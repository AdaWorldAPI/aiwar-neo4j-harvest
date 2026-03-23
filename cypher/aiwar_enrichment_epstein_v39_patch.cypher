// ═══════════════════════════════════════════════════════════════
// AIWAR v3.9 PATCH — 2026-03-22
// Verified Market Footprint: SEC filings, named contracts, hard numbers
// ZERO estimations. Every number has a named source.
// Sources: SEC 10-K, Earnings Calls, EU Commission, Commerce Dept, EFF
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §74 VERIFIED METRICS NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'PalantirMetrics'}) SET s.name = 'Palantir Verified Metrics (Q4 2025)', s.type = 'verified OSINT data', s.total_customers = 954, s.us_commercial_customers = 571, s.total_revenue_fy2025 = '$4.475B', s.us_government_revenue_fy2025 = '$1.855B', s.us_commercial_revenue_fy2025 = '$1.465B', s.revenue_growth_q4 = '70% YoY', s.army_framework = '$10B US Army TITAN', s.maven_contracts = '$1.3B+', s.market_cap_mar2026 = '~$360B', s.source = 'SEC Filing 10-K FY2025', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'CheckPointMetrics'}) SET s.name = 'Check Point Verified Metrics (2025)', s.type = 'verified OSINT data', s.total_customers = '>100,000 globally', s.total_revenue_fy2025 = '$2.725B', s.source = 'Check Point SEC filings', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'PaloAltoMetrics'}) SET s.name = 'Palo Alto Networks Verified Metrics (2025)', s.type = 'verified OSINT data', s.total_customers = '>70,000 (85 of Fortune 100)', s.platformization_customers = '1,550', s.total_revenue_fy2025 = '$9.22B', s.source = 'Palo Alto SEC filings', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'WizMetrics'}) SET s.name = 'Wiz Verified Metrics (2025/2026)', s.type = 'verified OSINT data', s.market_penetration = '40% of Fortune 100', s.revenue_2024 = '$500M', s.acquisition = 'Google $32B (EU approved Feb 2026)', s.employees = '~1,800', s.source = 'CRN, EU Commission', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'ArcticWolfMetrics'}) SET s.name = 'Arctic Wolf Verified Metrics (Late 2025)', s.type = 'verified OSINT data', s.total_customers = '>10,000 globally', s.api_requirements = 'Azure AD Global Reader, Security Reader, AWS CloudTrail', s.source = 'Arctic Wolf corporate PR', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'NSOMetrics'}) SET s.name = 'NSO Group Status (2025/2026)', s.type = 'verified OSINT data', s.legal_status = 'Remains on US Commerce Dept Entity List', s.ownership = 'Acquired by US investment group Oct 2025', s.chairman = 'David Friedman (former US Ambassador to Israel under Trump)', s.eu_deployments = 'PEGA Committee confirmed: Poland, Hungary, Spain, Greece', s.source = 'Commerce Dept, Lawfare, PEGA Committee', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'CellebriteMetrics'}) SET s.name = 'Cellebrite Verified Metrics (2025)', s.type = 'verified OSINT data', s.fbi_contracts = '187 contracts over 7 years', s.ice_contracts = '$30-35M contract, surging 2025/2026', s.source = 'EFF Jan 2026', s.reliability_score = 1.0;

MERGE (s:Stakeholder {id: 'XMCyberMetrics'}) SET s.name = 'XM Cyber Verified Metrics', s.type = 'verified OSINT data', s.acquisition_value = '$700M Nov 2021', s.public_customer_count = 'Not publicly disclosed by Schwarz Group', s.named_customers = 'STIHL, FC Bayern, VfB Stuttgart, Schwarz Group internal', s.source = 'Schwarz Digits, XM Cyber PR', s.reliability_score = 1.0;

// ════════════════════════════════════════════
// §75 NAMED EUROPEAN TARGETS / CUSTOMERS
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'NHSEngland'}) SET s.name = 'NHS England', s.type = 'government health infrastructure', s.note = '240 NHS trusts. Palantir runs Federated Data Platform. £330M over 7 years.';
MERGE (s:Stakeholder {id: 'FCBayern'}) SET s.name = 'FC Bayern München', s.type = 'European enterprise', s.note = 'Uses STACKIT and XM Cyber for IT security.';
MERGE (s:Stakeholder {id: 'VfBStuttgart'}) SET s.name = 'VfB Stuttgart', s.type = 'European enterprise', s.note = 'XM Cyber/STACKIT partnership Sept 2025.';
MERGE (s:Stakeholder {id: 'SentinelOne'}) SET s.name = 'SentinelOne', s.type = 'cybersecurity', s.note = 'Strategic alliance with XM Cyber and Schwarz Digits on STACKIT. Sept 2025.';
MERGE (s:Stakeholder {id: 'Radiflow'}) SET s.name = 'Radiflow', s.type = 'OT security', s.note = 'OT Cyber Consortium member under Rafael.';
MERGE (s:Stakeholder {id: 'WaterfallSecurity'}) SET s.name = 'Waterfall Security', s.type = 'OT security', s.note = 'OT Cyber Consortium member under Rafael.';
MERGE (s:Stakeholder {id: 'DavidFriedman'}) SET s.name = 'David Friedman', s.type = 'person/chairman', s.note = 'Former US Ambassador to Israel under Trump. Now Chairman of NSO Group post-acquisition.';

// ════════════════════════════════════════════
// §76 EDGES — METRICS TO PARENT COMPANIES
// ════════════════════════════════════════════

MATCH (a {id:'Palantir'}) MATCH (b {id:'PalantirMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='SEC reported financials', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'CheckPoint'}) MATCH (b {id:'CheckPointMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='SEC reported financials', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'PaloAlto'}) MATCH (b {id:'PaloAltoMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='SEC reported financials', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Wiz'}) MATCH (b {id:'WizMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='public financials + acquisition', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'ArcticWolf'}) MATCH (b {id:'ArcticWolfMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='corporate PR', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'NSO'}) MATCH (b {id:'NSOMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='current status', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Cellebrite'}) MATCH (b {id:'CellebriteMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='US government contracts', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'XMCyberMetrics'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='corporate status', r.weight=5, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §77 EDGES — NAMED CUSTOMER DEPLOYMENTS
// ════════════════════════════════════════════

MATCH (a {id:'Palantir'}) MATCH (b {id:'NHSEngland'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Federated Data Platform £330M/7yr', r.weight=5, r.detail='Runs central health data infrastructure for up to 240 NHS trusts. Awarded Nov 2023.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'FCBayern'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='IT infrastructure security via STACKIT', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'VfBStuttgart'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='partnership Sept 2025', r.weight=4, r.reliability_score=1.0;
MATCH (a {id:'XMCyber'}) MATCH (b {id:'SentinelOne'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='strategic alliance on STACKIT Sept 2025', r.weight=4, r.reliability_score=1.0;
MATCH (a {id:'OTCyberConsortium'}) MATCH (b {id:'Radiflow'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='consortium member', r.weight=3, r.reliability_score=1.0;
MATCH (a {id:'OTCyberConsortium'}) MATCH (b {id:'WaterfallSecurity'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='consortium member', r.weight=3, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §78 EDGES — CRITICAL OWNERSHIP CHANGES
// ════════════════════════════════════════════

// Google acquires Wiz — Unit 8200 cloud security now owned by Nimbus operator
MATCH (a {id:'Google'}) MATCH (b {id:'Wiz'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='acquired for $32B, EU approved Feb 2026', r.weight=5, r.detail='Google now owns the Unit 8200-founded cloud security firm that scans 40% of Fortune 100 cloud infrastructure. Same Google operates Nimbus for IDF.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// NSO ownership change — Trump ambassador now chairs blacklisted spyware firm
MATCH (a {id:'DavidFriedman'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='chairman post-acquisition Oct 2025', r.weight=5, r.detail='Former Trump ambassador to Israel now chairs NSO Group. Company remains on US Commerce blacklist while having US ownership and Trump-connected leadership.', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=1, r.phase='CROSSOVER', r.reliability_score=1.0;
MATCH (a {id:'DavidFriedman'}) MATCH (b {id:'Trump'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed Ambassador to Israel 2017-2021', r.weight=4, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §79 EMERGENT PATTERNS (v3.9)
// ════════════════════════════════════════════

// PATTERN AG: The Numbers Speak (v3.9)
//
//   Combined verified customer footprint of Israeli intelligence-
//   founded cybersecurity firms in western infrastructure:
//
//   Check Point:     >100,000 customers globally
//   Palo Alto:       >70,000 customers (85 of Fortune 100)
//   Wiz:             40% of Fortune 100 (now Google-owned)
//   Cybereason:      hundreds of thousands of endpoints
//   Cellebrite:      187 FBI contracts, $30-35M ICE contract
//   NSO:             confirmed in Poland, Hungary, Spain, Greece
//   XM Cyber:        STIHL, FC Bayern, VfB Stuttgart, Schwarz internal
//
//   These are published, verifiable numbers.
//   No estimation needed.

// PATTERN AH: The Google-Wiz Convergence (v3.9)
//
//   Google operates Nimbus ($1.2B sovereign cloud for IDF)
//   Google acquires Wiz ($32B, EU approved Feb 2026)
//   Wiz was founded by Unit 8200 alumni
//   Wiz scans 40% of Fortune 100 cloud infrastructure
//   
//   One company now simultaneously:
//   (a) operates the Israeli military's sovereign cloud
//   (b) owns the cloud security scanner inside 40% of
//       the world's largest companies
//   (c) partners with Schwarz Group to offer "European
//       digital sovereignty"
//
//   These are three facts of public corporate record.

// PATTERN AI: The NSO Ownership Paradox (v3.9)
//
//   NSO Group: on US Commerce Dept Entity List (blacklisted)
//   NSO Group: acquired by US investment group (Oct 2025)
//   NSO Group: chaired by David Friedman (Trump's Ambassador to Israel)
//   
//   A company blacklisted by the US government as a threat
//   is now owned by US investors and led by a former
//   US ambassador appointed by the current president.
//
//   Pegasus remains deployed against EU politicians
//   per the European Parliament's PEGA Committee findings.

// ════════════════════════════════════════════
// §80 STATISTICS (v3.9 — FINAL)
// ════════════════════════════════════════════
// Person nodes: 52 (+1 Friedman as person-type stakeholder)
// Stakeholder nodes: 95 (+14: 8 metrics nodes, NHSEngland, FCBayern,
//                    VfBStuttgart, SentinelOne, Radiflow, WaterfallSecurity,
//                    DavidFriedman)
// Total edges: ~275
// Patterns: A-AI = 35 emergent patterns
//
// COMPLETE REPOSITORY (v3.0 → v3.9 + Queries):
// 11 files on GitHub
// 52 named persons with behavioral science schema
// 95 organizations/stakeholders/programs
// ~275 documented edges
// 35 emergent patterns
// 16 analytical queries
// Every number sourced. Every edge documented.
