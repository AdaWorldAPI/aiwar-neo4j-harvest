// ═══════════════════════════════════════════════════════════════
// AIWAR v3.4 PATCH — 2026-03-22
// Unit 8200 → Commercial Cyber Pipeline, Barak Tri-Bridge,
// Bidirectional Western Infrastructure Penetration
// Sources: US Commerce Dept, Microsoft Security, Haaretz, CNBC, Reuters
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §41 STAKEHOLDER NODES — CYBER/SURVEILLANCE FIRMS
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'Cellebrite'}) SET s.name = 'Cellebrite', s.type = 'digital forensics', s.note = 'UFED extracts data from locked phones. Used by ICE, FBI, police worldwide. Unit 8200 alumni founded.';
MERGE (s:Stakeholder {id: 'CheckPoint'}) SET s.name = 'Check Point Software', s.type = 'enterprise security', s.note = 'Global firewall giant. Deep packet inspection on enterprise networks. Founded by Gil Shwed (Unit 8200).';
MERGE (s:Stakeholder {id: 'PaloAlto'}) SET s.name = 'Palo Alto Networks', s.type = 'enterprise security', s.note = 'Major network security. Founded by Nir Zuk (Unit 8200, ex-Check Point).';
MERGE (s:Stakeholder {id: 'Wiz'}) SET s.name = 'Wiz', s.type = 'cloud security', s.note = '$12B+ valuation. Rejected $23B Google offer. Agentless cloud scanning for Fortune 100. Founded by Unit 8200 alumni.';
MERGE (s:Stakeholder {id: 'Toka'}) SET s.name = 'Toka', s.type = 'cyber intelligence', s.note = 'Bespoke govt hacking tools. IoT compromise. Co-founded by EHUD BARAK and Yaron Rosen (IDF Cyber Chief). Less known than NSO, possibly more powerful.';
MERGE (s:Stakeholder {id: 'Candiru'}) SET s.name = 'Candiru', s.type = 'mercenary spyware', s.note = 'Zero-click exploits to governments. Microsoft patched DevilsTongue 2021. Targets dissidents.';
MERGE (s:Stakeholder {id: 'Cybereason'}) SET s.name = 'Cybereason', s.type = 'endpoint security', s.note = 'EDR on hundreds of thousands of corporate endpoints globally. Founded by Lior Div (Unit 8200, Medal of Honor).';
MERGE (s:Stakeholder {id: 'WesternEnterpriseIT'}) SET s.name = 'Western Enterprise IT Infrastructure', s.type = 'infrastructure target', s.note = 'Fortune 500 networks, cloud environments, enterprise firewalls. Penetrated bidirectionally by 8200 alumni firms.';
MERGE (s:Stakeholder {id: 'WesternGovAgencies'}) SET s.name = 'Western Government & Law Enforcement', s.type = 'infrastructure target', s.note = 'FBI, ICE, EU agencies, allied governments. Dependent on Israeli forensics/surveillance tech.';

// ════════════════════════════════════════════
// §42 PERSON NODES — UNIT 8200 FOUNDERS
// ════════════════════════════════════════════

MERGE (p:Person {id: 'ShalevHulio'}) SET p.name = 'Shalev Hulio', p.role = 'NSO Group co-founder', p.note = 'Unit 8200 alumni. Defended Pegasus as anti-terror despite abuse evidence.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.node_function = 'ENABLER';
MERGE (p:Person {id: 'GilShwed'}) SET p.name = 'Gil Shwed', p.role = 'Check Point founder/CEO', p.note = 'Unit 8200 veteran. Pioneered modern firewall. Check Point in practically every enterprise.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.node_function = 'ENABLER';
MERGE (p:Person {id: 'NirZuk'}) SET p.name = 'Nir Zuk', p.role = 'Palo Alto Networks founder', p.note = 'Unit 8200 veteran, ex-Check Point. Now one of largest cybersecurity providers.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.node_function = 'ENABLER';
MERGE (p:Person {id: 'AssafRappaport'}) SET p.name = 'Assaf Rappaport', p.role = 'Wiz CEO', p.note = 'Unit 8200. Cloud security scanning deep inside Fortune 100 infrastructure.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.node_function = 'ENABLER';
MERGE (p:Person {id: 'YaronRosen'}) SET p.name = 'Yaron Rosen', p.role = 'Toka co-founder, fmr IDF Cyber Chief', p.note = 'Former head of IDF cyber operations. Co-founded Toka with Ehud Barak.', p.receptor = 'MISSION', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.node_function = 'BROKER';
MERGE (p:Person {id: 'LiorDiv'}) SET p.name = 'Lior Div', p.role = 'Cybereason founder', p.note = 'Unit 8200. Medal of Honor for covert cyber ops. EDR on hundreds of thousands of endpoints.', p.receptor = 'MISSION', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.node_function = 'ENABLER';

// ════════════════════════════════════════════
// §43 EDGES — UNIT 8200 PIPELINE (MILITARY → COMMERCIAL)
// ════════════════════════════════════════════

// Alumni → 8200
MATCH (a {id:'Unit8200'}) MATCH (b {id:'ShalevHulio'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='alumni/training', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Unit8200'}) MATCH (b {id:'GilShwed'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='alumni/training', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Unit8200'}) MATCH (b {id:'NirZuk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='alumni/training', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Unit8200'}) MATCH (b {id:'AssafRappaport'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='alumni/training', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Unit8200'}) MATCH (b {id:'LiorDiv'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='alumni/training', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'IDF'}) MATCH (b {id:'YaronRosen'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='former Cyber Chief', r.weight=5, r.reliability_score=1.0;

// Founders → Companies
MATCH (a {id:'ShalevHulio'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'GilShwed'}) MATCH (b {id:'CheckPoint'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founder/CEO', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'NirZuk'}) MATCH (b {id:'PaloAlto'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'AssafRappaport'}) MATCH (b {id:'Wiz'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder/CEO', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'YaronRosen'}) MATCH (b {id:'Toka'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'LiorDiv'}) MATCH (b {id:'Cybereason'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founder/CEO', r.weight=5, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §44 EDGES — BARAK TRI-BRIDGE (Military ↔ Cyber ↔ Epstein)
// ════════════════════════════════════════════

MATCH (a {id:'Barak'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='former CiC / DefMin, commanded Unit 8200', r.weight=5, r.detail='As PM and Defense Minister, Barak was ultimate authority over IDF and Unit 8200. The man who commanded the pipeline now connects it to Epstein money.', r.edge_function='LEGITIMIZER', r.flow_type='INFLUENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'Barak'}) MATCH (b {id:'Toka'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-founder/director', r.weight=5, r.source='Haaretz Feb 2020', r.detail='Founded Toka to provide targeted hacking to nation-states. The former commander of military intelligence now sells the same capabilities commercially.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0, r.source_url='https://www.haaretz.com/israel-news/tech-news/2020-02-20/ty-article-magazine/.premium/ehud-baraks-new-startup-wants-to-hack-your-cameras-and-smart-tvs/0000017f-e2af-d9aa-afff-fbdffc560000';

// ════════════════════════════════════════════
// §45 EDGES — WESTERN INFRASTRUCTURE PENETRATION
// ════════════════════════════════════════════

MATCH (a {id:'NSO'}) MATCH (b {id:'WesternGovAgencies'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Pegasus deployment on EU politicians + activists', r.weight=5, r.source='US Commerce Dept blacklist Nov 2021', r.detail='Deployed against EU politicians (Catalonia, Hungary, Poland). Blacklisted by Commerce Dept. Still used by allied agencies.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=3, r.phase='WEAPONIZED', r.reliability_score=1.0, r.source_url='https://www.commerce.gov/news/press-releases/2021/11/commerce-adds-nso-group-and-other-foreign-companies-entity-list';
MATCH (a {id:'Cellebrite'}) MATCH (b {id:'WesternGovAgencies'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='UFED contracts with ICE, FBI, police', r.weight=5, r.detail='Fundamental dependency on Israeli forensics tech in western law enforcement.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'CheckPoint'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='deep packet inspection on enterprise networks', r.weight=5, r.detail='Inspects raw network traffic for thousands of corporations. Sees everything.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'PaloAlto'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='next-gen firewall in enterprise networks', r.weight=5, r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'Wiz'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='agentless cloud scanning of Fortune 100', r.weight=5, r.detail='Scans entire AWS/Azure/GCP environments. Sees cloud architecture of biggest companies.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'Candiru'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='zero-day exploitation (DevilsTongue)', r.weight=5, r.source='Microsoft Security Jul 2021', r.detail='Exploited Windows vulns, patched by Microsoft. Targets dissidents via govts.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=4, r.phase='WEAPONIZED', r.reliability_score=0.98, r.source_url='https://www.microsoft.com/en-us/security/blog/2021/07/15/protecting-customers-from-a-private-sector-offensive-actor-using-0-day-exploits-and-devils-tongue-malware/';
MATCH (a {id:'Cybereason'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='EDR on hundreds of thousands of endpoints', r.weight=5, r.detail='Endpoint Detection Response inside corporate networks globally.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'Toka'}) MATCH (b {id:'WesternGovAgencies'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='govt hacking tools, IoT compromise', r.weight=4, r.source='Haaretz', r.detail='Sells to nation-state clients. Can compromise cameras, smart TVs, IoT. Less public than NSO.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=3, r.phase='WEAPONIZED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §46 EDGES — BIDIRECTIONAL DATA FLOW
// ════════════════════════════════════════════

// INBOUND: Western Cloud → IDF (via Nimbus)
MATCH (a {id:'Nimbus'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='western cloud compute+data → IDF targeting', r.weight=5, r.detail='Data and compute flows INTO Israel via Nimbus to fuel Lavender/Gospel AI targeting. Winking mechanism alerts IDF to foreign data requests.', r.edge_function='DEAL_FLOW,INTELLIGENCE', r.flow_type='INTELLIGENCE,MONEY', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.97;

// OUTBOUND: 8200 Alumni Firms → Western Networks (via commercial products)
MATCH (a {id:'Unit8200'}) MATCH (b {id:'WesternEnterpriseIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='alumni firms provide access/telemetry from western networks', r.weight=5, r.detail='Access and telemetry flows OUT of western infrastructure via 8200-founded firms (Check Point, Wiz, Cybereason, Palo Alto). These firms see inside the networks they protect.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='WEAPONIZED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §47 EMERGENT PATTERNS (v3.4)
// ════════════════════════════════════════════

// PATTERN U: The 8200 Conveyor Belt (NEW v3.4)
//
//   IDF → Unit 8200 → trains SIGINT/cyber operators
//   Operators leave → found companies with military-grade capabilities:
//     NSO (Pegasus spyware), Check Point (firewalls), Palo Alto (firewalls),
//     Wiz (cloud scanning), Toka (govt hacking), Candiru (zero-days),
//     Cellebrite (phone forensics), Cybereason (endpoint detection)
//   Companies embed in western infrastructure:
//     Enterprise firewalls, cloud environments, govt forensics tools
//   These firms SEE INSIDE the networks they protect.
//   This is not a bug — it is the business model.
//   Israel's state-funded military training program produces the
//   founders of firms that then sit inside western critical infrastructure.

// PATTERN V: Barak as Tri-Bridge (NEW v3.4)
//
//   MILITARY: Former PM + DefMin → commanded IDF + Unit 8200
//   COMMERCIAL: Co-founded Toka (sells hacking tools to governments)
//   EPSTEIN: FBI-identified handler, DOJ audio receiving Silicon Valley pitches
//
//   The man who commanded the military intelligence pipeline that
//   produces cyber founders also receives intelligence-asset briefings
//   on which Silicon Valley companies to capture, and simultaneously
//   sells military-grade hacking tools commercially.
//   Three worlds through one node.

// PATTERN W: The Bidirectional Infrastructure Loop (NEW v3.4)
//
//   INBOUND (Nimbus): Western Cloud (Google/AWS) → IDF
//     Data, compute, AI services flow into Israel
//     Powers Lavender (37,000 targets) + Gospel
//     Winking mechanism alerts IDF to foreign data requests
//
//   OUTBOUND (8200 firms): Israeli-founded firms → Western Networks
//     Check Point sees all network traffic it inspects
//     Wiz scans entire cloud architectures
//     Cybereason sits on hundreds of thousands of endpoints
//     Cellebrite unlocks phones for western law enforcement
//     NSO deploys Pegasus on western politicians
//     Candiru exploits Windows zero-days
//     Toka hacks IoT devices for govt clients
//
//   The same intelligence ecosystem that receives data INBOUND
//   through Nimbus also has commercial access OUTBOUND through
//   8200 alumni firms. This is a closed intelligence loop
//   that operates under the cover of commercial cybersecurity.
//
//   And the man at the center — Barak — sits in DOJ audio tapes
//   being briefed by Jeffrey Epstein on which Silicon Valley
//   companies to target next.

// ════════════════════════════════════════════
// §48 STATISTICS (v3.4 cumulative)
// ════════════════════════════════════════════
// Person nodes: 49 (+6: Hulio, Shwed, Zuk, Rappaport, Rosen, Div)
// Stakeholder nodes: 62 (+9: Cellebrite, CheckPoint, PaloAlto, Wiz, Toka,
//                    Candiru, Cybereason, WesternEnterpriseIT, WesternGovAgencies)
// Total edges: ~200
// Patterns: A-W = 23 emergent patterns
// Graph spans: 1981 (Bear Stearns) → March 22 2026 (Hormuz ultimatum)
// Key traversal: Epstein → Barak → IDF → Unit 8200 → NSO/Wiz/CheckPoint → Western infrastructure
// Bidirectional loop documented: data IN via Nimbus, access OUT via 8200 firms
