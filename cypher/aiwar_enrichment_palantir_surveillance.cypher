// ═══════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Palantir × Surveillance-Industrial Complex
// v1 — 2026-03-02
// Sources:
//   netzpolitik.org (2025) — Palantir policing/military
//   Tagesspiegel (2025) — German police Palantir adoption
//   Euronews (2025) — Baden-Württemberg Gotham contract
//   business-humanrights.org — Egypt surveillance exports
//   DW (2020) — Egyptian spy in Merkel's BPA
//   Stanford Daily (2026) — Thiel-Epstein DOJ files
//   NBC News (2026) — Epstein tech ties
//   NPR (2025) — Palantir in Trump era
//   Democracy Now (2025) — DOGE master database
//   Fortune (2025) — DOGE era stocks
//   Reuters (2025) — Golden Dome bid
//   Novact (2024) — Mass surveillance Maghreb/Mashreq
//   Dandc.eu — European spyware to Egypt
//   EgyptWatch (2021) — French spyware to Sisi
// ═══════════════════════════════════════════════════════════════
// Extends: aiwar_full.cypher (base graph), aiwar_enrichment_epstein.cypher (behavioral schema)
// Uses same behavioral science schema: receptor, mcclelland, rubicon, node_function, edge properties
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §1  NEW SYSTEM NODES
// ════════════════════════════════════════════

// ── Palantir Products ──
MERGE (n:System:Operation:MLTask_Sort {id: 'ICM'})
SET n.name = 'Investigative Case Management',
    n.year = 2022,
    n.current_status = 'Operation',
    n.system_type = 'DataManagement, Profiling',
    n.ml_task = 'Sort',
    n.military_use = 'nan',
    n.civic_use = 'Policing, BehaviorEvaluation',
    n.purpose = 'AssessingRiskOfOffending, InformationRetrieval',
    n.capacity = 'Profiling, SensitiveAttributeInference, Geolocation, BiometricCategorisation',
    n.output = 'Decision',
    n.impact = 'PsychologicalHarm, DistortionInHumanBehavior',
    n.image = './assets/noun-software-industry-198331.png',
    n.noun_key = 'surveillance',
    n.note = 'ICE database. 5yr/$95.9M contract 2022. Searches birthplace, visa, race, criminal affiliation, license plate data. Tax data sharing added 2025.';

MERGE (n:System:Operation:MLTask_Predict {id: 'MavenSmartSystem'})
SET n.name = 'Maven Smart System (MSS)',
    n.year = 2025,
    n.current_status = 'Operation',
    n.system_type = 'IntelligentControlSystem, DataManagement',
    n.ml_task = 'Predict',
    n.military_use = 'Intelligence, Command, Planning',
    n.civic_use = 'nan',
    n.purpose = 'PredictiveMapping, ProducingRecommendation',
    n.capacity = 'ComputerVision, InformationRetrieval, RelationshipExtraction',
    n.output = 'Decision, Recommendation',
    n.impact = 'PhysicalInjury, Overreliance',
    n.image = './assets/noun-missile-launcher-2052140.png',
    n.noun_key = 'ml',
    n.note = 'NATO AI planning software. Based on Project Maven (2017 drone analysis). Deployed to NATO Brussels within 30 days. DoD expanded contract $795M→$1.3B through 2029.';

MERGE (n:System:Operation:MLTask_Sort {id: 'Hessendata'})
SET n.name = 'Hessendata',
    n.year = 2019,
    n.current_status = 'Operation',
    n.system_type = 'DataManagement, AnomalyDetection',
    n.ml_task = 'Sort',
    n.military_use = 'nan',
    n.civic_use = 'Policing',
    n.purpose = 'AssessingRiskOfOffending, InformationRetrieval',
    n.capacity = 'Profiling, RelationshipExtraction, SensitiveAttributeInference',
    n.output = 'Decision',
    n.impact = 'PsychologicalHarm, DistortionInHumanBehavior',
    n.image = './assets/noun-riot-control-national-guards-1584300.png',
    n.noun_key = 'surveillance',
    n.note = 'Palantir Gotham variant for Hessen state police. Part of broader German Landeskriminalamt deployment.';

MERGE (n:System:Development:MLTask_Predict {id: 'GoldenDome'})
SET n.name = 'Golden Dome',
    n.year = 2025,
    n.current_status = 'Development',
    n.system_type = 'IntelligentControlSystem, MultiAgentSystem',
    n.ml_task = 'Predict',
    n.military_use = 'Weapon, Intelligence, Command',
    n.civic_use = 'nan',
    n.purpose = 'TargetIdentification',
    n.capacity = 'ComputerVision, Geolocation, ObjectDetection',
    n.output = 'Action, Decision',
    n.impact = 'PhysicalInjury, Overreliance',
    n.image = './assets/noun-missile-launcher-2052140.png',
    n.noun_key = 'missileDefense',
    n.note = 'Trump EO Jan 2025. $175B est ($161B-$542B CBO). 400-1000 detection sats + 200 interceptor sats. SHIELD contract 10yr/$151B. SpaceX/Palantir/Anduril frontrunners.';

MERGE (n:System:Operation:MLTask_Sort {id: 'DOGEDatabase'})
SET n.name = 'DOGE Master Immigration Database',
    n.year = 2025,
    n.current_status = 'Operation',
    n.system_type = 'DataManagement, Profiling',
    n.ml_task = 'Sort',
    n.military_use = 'nan',
    n.civic_use = 'Policing, BehaviorEvaluation',
    n.purpose = 'AssessingRiskOfOffending, InformationRetrieval',
    n.capacity = 'Profiling, SensitiveAttributeInference, InformationRetrieval',
    n.output = 'Decision',
    n.impact = 'PsychologicalHarm, DistortionInHumanBehavior',
    n.image = './assets/noun-software-industry-198331.png',
    n.noun_key = 'surveillance',
    n.note = 'Cross-references tax, immigration, and other federal records. Palantir employees embedded at IRS. Wired/CNN: built to speed deportations. Congressional investigation launched.';

// ── European Surveillance Systems ──
MERGE (n:System:Operation:MLTask_Capture {id: 'FinSpy'})
SET n.name = 'FinFisher / FinSpy',
    n.year = 2011,
    n.current_status = 'Operation',
    n.system_type = 'NarrowAI, Spyware',
    n.ml_task = 'Capture',
    n.military_use = 'Intelligence',
    n.civic_use = 'Policing',
    n.purpose = 'InformationRetrieval',
    n.capacity = 'AudioProcessing, InformationRetrieval, BiometricIdentification',
    n.output = 'Content',
    n.impact = 'PsychologicalHarm, WellbeingImpact',
    n.image = './assets/noun-software-industry-198331.png',
    n.noun_key = 'surveillance',
    n.note = 'Anglo-German spyware. Sold to Egypt pre-2011 (€287K contract found in Mubarak HQ). Citizen Lab: 33 governments use it. Amnesty: detected in Egypt 2020. Exploits update procedures.';

MERGE (n:System:Operation:MLTask_Capture {id: 'CEREBRO'})
SET n.name = 'CEREBRO',
    n.year = 2017,
    n.current_status = 'Operation',
    n.system_type = 'NarrowAI, DeepPacketInspection',
    n.ml_task = 'Capture',
    n.military_use = 'Intelligence',
    n.civic_use = 'Policing',
    n.purpose = 'InformationRetrieval',
    n.capacity = 'AudioProcessing, InformationRetrieval, SentimentAnalysis',
    n.output = 'Content',
    n.impact = 'PsychologicalHarm, WellbeingImpact',
    n.image = './assets/noun-software-industry-198331.png',
    n.noun_key = 'surveillance',
    n.note = 'Updated Eagle system. Nexa Technologies sold to Egypt via UAE (Advanced Middle East Systems FZ-LLC). €11.4M contract 2014. Deep packet inspection: calls, messages, email, social media. Nexa indicted in France for complicity in torture.';

// ════════════════════════════════════════════
// §2  NEW STAKEHOLDER NODES
// ════════════════════════════════════════════

// ── US Government ──
MERGE (s:Stakeholder:Institution:AIDeployer {id: 'DOGE'})
SET s.name = 'Department of Government Efficiency',
    s.stakeholder_type = 'Institution',
    s.airo_type = 'AIDeployer',
    s.note = 'Musk-led federal efficiency initiative. Hired former Palantir employees. Access to IRS, ICE, and other federal databases. 42 Congress members demanded DoD IG review.',
    s.image = './assets/noun-software-industry-198331.png';

MERGE (s:Stakeholder:Military:AIDeployer {id: 'USArmy'})
SET s.name = 'US Army',
    s.stakeholder_type = 'Military',
    s.airo_type = 'AIDeployer',
    s.note = 'Palantir $400M contract Dec 2025.',
    s.image = './assets/noun-locked-location-198286.png';

MERGE (s:Stakeholder:Military:AIDeployer {id: 'MDA'})
SET s.name = 'Missile Defense Agency',
    s.stakeholder_type = 'Military',
    s.airo_type = 'AIDeployer',
    s.note = 'Pentagon agency overseeing Golden Dome. Sept 2025 began formal contractor selection. 1000+ qualifying offerors.',
    s.image = './assets/noun-locked-location-198286.png';

MERGE (s:Stakeholder:Institution:AIDeployer {id: 'IRS'})
SET s.name = 'Internal Revenue Service',
    s.stakeholder_type = 'Institution',
    s.airo_type = 'AIDeployer',
    s.note = 'Palantir employees embedded. Tax data shared with ICE under DOGE. Single searchable taxpayer database created.',
    s.image = './assets/noun-software-industry-198331.png';

// ── European Surveillance Companies ──
MERGE (s:Stakeholder:DefenseCompany:AIDeveloper {id: 'GammaGroup'})
SET s.name = 'Gamma Group',
    s.stakeholder_type = 'DefenseCompany',
    s.airo_type = 'AIDeveloper',
    s.note = 'Anglo-German. FinFisher/FinSpy spyware. Sold to Mubarak Egypt €287K, Bahrain, 33+ govts. Criticized by HRW, Amnesty, Citizen Lab.',
    s.image = './assets/noun-software-industry-198331.png';

MERGE (s:Stakeholder:DefenseCompany:AIDeveloper {id: 'NexaTechnologies'})
SET s.name = 'Nexa Technologies',
    s.stakeholder_type = 'DefenseCompany',
    s.airo_type = 'AIDeveloper',
    s.note = 'French. Formerly Amesys. CEREBRO deep packet inspection. Sold to Egypt via UAE for €11.4M. Indicted in France: complicity in torture and enforced disappearance. Executives: Vannier, Salies, Bohbot, Roques.',
    s.image = './assets/noun-software-industry-198331.png';

// ── Nations/Institutions ──
MERGE (s:Stakeholder:Nation:AIDeployer {id: 'Egypt'})
SET s.name = 'Egypt',
    s.stakeholder_type = 'Nation',
    s.airo_type = 'AIDeployer',
    s.note = 'Al-Sisi regime since 2013. UAE gave €150M for digital espionage. Uses Pegasus, Predator, FinFisher, CEREBRO simultaneously. Targets journalists, Muslim Brotherhood, Coptic Christians.',
    s.image = './assets/noun-locked-location-198286.png';

MERGE (s:Stakeholder:Nation:AIDeployer {id: 'France'})
SET s.name = 'France',
    s.stakeholder_type = 'Nation',
    s.airo_type = 'AIDeployer',
    s.note = 'Home to Nexa Technologies (ex-Amesys). Paris prosecutor investigating surveillance sales to Egypt. NATO member.',
    s.image = './assets/noun-locked-location-198286.png';

MERGE (s:Stakeholder:Nation:AIDeployer {id: 'UAE'})
SET s.name = 'United Arab Emirates',
    s.stakeholder_type = 'Nation',
    s.airo_type = 'AIDeployer',
    s.note = 'Financed Egypt digital espionage (€150M cash to Sisi). Used Advanced Middle East Systems FZ-LLC as procurement front. NSO Group subsidiaries in region.',
    s.image = './assets/noun-locked-location-198286.png';

// ── German Police (expanded from Landeskriminalamt) ──
MERGE (s:Stakeholder:Police:AIDeployer {id: 'BavariaPolice'})
SET s.name = 'Bavarian State Police (BayLKA)',
    s.stakeholder_type = 'Police',
    s.airo_type = 'AIDeployer',
    s.note = 'Deploys Palantir Gotham. Claims limited to serious crime. GFF filed constitutional complaint: mass surveillance of non-suspects.',
    s.image = './assets/noun-riot-control-national-guards-1584300.png';

MERGE (s:Stakeholder:Police:AIDeployer {id: 'HessenPolice'})
SET s.name = 'Hessen State Police',
    s.stakeholder_type = 'Police',
    s.airo_type = 'AIDeployer',
    s.note = 'Deploys Hessendata (Palantir Gotham variant) since ~2019.',
    s.image = './assets/noun-riot-control-national-guards-1584300.png';

MERGE (s:Stakeholder:Police:AIDeployer {id: 'NRWPolice'})
SET s.name = 'NRW State Police',
    s.stakeholder_type = 'Police',
    s.airo_type = 'AIDeployer',
    s.note = 'Deploys Palantir Gotham.',
    s.image = './assets/noun-riot-control-national-guards-1584300.png';

MERGE (s:Stakeholder:Police:AIDeployer {id: 'BWPolice'})
SET s.name = 'Baden-Württemberg Police',
    s.stakeholder_type = 'Police',
    s.airo_type = 'AIDeployer',
    s.note = 'CDU interior ministry signed 5yr Gotham contract (multi-million €) before legal authority existed. Green coalition partner critical. Police law change required. AI features may be excluded.',
    s.image = './assets/noun-riot-control-national-guards-1584300.png';

// ── Egyptian Intelligence ──
MERGE (s:Stakeholder:Military:AIDeployer {id: 'EgyptGIS'})
SET s.name = 'Egyptian General Intelligence Service',
    s.stakeholder_type = 'Military',
    s.airo_type = 'AIDeployer',
    s.note = 'Recruited Amin A. in Merkel press office from 2010. Targets Muslim Brotherhood, Coptic Christians, journalists in Germany. Uses Pegasus+Predator simultaneously.',
    s.image = './assets/noun-locked-location-198286.png';

// ── Civil Society ──
MERGE (s:Stakeholder:Institution {id: 'GFF'})
SET s.name = 'Gesellschaft für Freiheitsrechte',
    s.stakeholder_type = 'Institution',
    s.note = 'German civil rights org. Filed constitutional complaint against Bavaria Palantir Gotham use. Argued: mass surveillance of non-suspects, no transparency, no discrimination safeguards.',
    s.image = './assets/noun-software-industry-198331.png';

MERGE (s:Stakeholder:Institution {id: 'Novact'})
SET s.name = 'Novact',
    s.stakeholder_type = 'Institution',
    s.note = 'Barcelona-based peace org. Published "Mass Surveillance in Maghreb and Mashreq" report (2024). Researches Spanish corporate complicity in Palestinian digital surveillance. RESCOP coalition (600+ orgs).',
    s.image = './assets/noun-software-industry-198331.png';

// ════════════════════════════════════════════
// §3  NEW PERSON NODES
// ════════════════════════════════════════════

MERGE (p:Person {id: 'SankarShyam'})
SET p.name = 'Shyam Sankar',
    p.role = 'CTO Palantir',
    p.person_type = 'CEO',
    p.note = 'Called DOGE a meritocracy tool. Said competitors are "sacred cows of the deep state." Palantir CTO since 2010.';

MERGE (p:Person {id: 'Hegseth'})
SET p.name = 'Pete Hegseth',
    p.role = 'US Secretary of Defense',
    p.person_type = 'Politician',
    p.note = 'Briefed by SpaceX, Palantir, Anduril on Golden Dome directly.';

MERGE (p:Person {id: 'AminA'})
SET p.name = 'Amin A.',
    p.role = 'Egyptian spy in Merkel BPA',
    p.person_type = 'Intelligence',
    p.status = 'charged 2020',
    p.note = 'German-Egyptian. Worked at BPA visitor service since 1999. Spied for Egyptian GIS from July 2010. Compiled reports on German media, domestic/foreign policy. Recruited via Egyptian embassy Berlin. Received preferential treatment for family, embassy invitations.',
    p.receptor = 'SURVIVAL',
    p.mcclelland = 'II',
    p.mcclelland_need = 'nAff',
    p.rubicon = 'FIRST_COMPROMISE',
    p.node_function = 'ASSET';

MERGE (p:Person {id: 'Faeser'})
SET p.name = 'Nancy Faeser',
    p.role = 'German Federal Interior Minister (SPD)',
    p.person_type = 'Politician',
    p.note = 'Blocked federal Palantir adoption 2023. SPD position against expanding US surveillance tools in German federal agencies.';

MERGE (p:Person {id: 'Vannier'})
SET p.name = 'Philippe Vannier',
    p.role = 'former CEO Amesys/Nexa Technologies',
    p.person_type = 'CEO',
    p.status = 'indicted',
    p.note = 'Indicted by Paris prosecutor: complicity in torture and enforced disappearance in Egypt. Oversaw Eagle→CEREBRO sale to Egypt via UAE.';

// ════════════════════════════════════════════
// §4  EDGES — PALANTIR GOVERNMENT CONTRACTS
// ════════════════════════════════════════════

// ── ICE expanded ──
MATCH (a {id:'Palantir'}) MATCH (b {id:'ICM'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 3;
MATCH (a {id:'ICE'}) MATCH (b {id:'ICM'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 3, r.note = '5yr/$95.9M contract signed 2022';

// ── Maven Smart System ──
MATCH (a {id:'Palantir'}) MATCH (b {id:'MavenSmartSystem'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 4;
MATCH (a {id:'NATO'}) MATCH (b {id:'MavenSmartSystem'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = 'Deployed NATO Brussels HQ within 30 days, April 2025';
MATCH (a {id:'US'}) MATCH (b {id:'MavenSmartSystem'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = 'DoD contract expanded to $1.3B through 2029';

// ── DOGE Database ──
MATCH (a {id:'Palantir'}) MATCH (b {id:'DOGEDatabase'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 4;
MATCH (a {id:'DOGE'}) MATCH (b {id:'DOGEDatabase'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'commissioned', r.weight = 5;
MATCH (a {id:'ICE'}) MATCH (b {id:'DOGEDatabase'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = '$30M contract for migrant tracking platform';
MATCH (a {id:'IRS'}) MATCH (b {id:'DOGEDatabase'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'data source', r.weight = 4, r.note = 'Tax records cross-referenced. Palantir employees embedded at IRS.';

// ── Golden Dome ──
MATCH (a {id:'SpaceX'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'lead developer (sat constellation)', r.weight = 5, r.note = '400-1000 detection + 200 interceptor satellites';
MATCH (a {id:'Palantir'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'data fusion/AI (Gotham backbone)', r.weight = 5;
MATCH (a {id:'Anduril'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'autonomous drones/sensors', r.weight = 5;
MATCH (a {id:'MDA'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'program office', r.weight = 5;
MATCH (a {id:'US'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'executive order Jan 2025', r.weight = 5;

// ── US Army direct contract ──
MATCH (a {id:'Palantir'}) MATCH (b {id:'USArmy'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts $400M+', r.weight = 4, r.note = '$400M Army contract Dec 2025. Total DoD: $795M expandable to $1.3B.';

// ── Palantir-DOGE nexus ──
MATCH (a {id:'Palantir'}) MATCH (b {id:'DOGE'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts, embedded staff', r.weight = 5, r.note = 'DOGE hired multiple former Palantir employees. Palantir tapped to build master immigration database. Q4-2025: US govt revenue $343M (+45% YoY). Total 2025: $3.75B.';
MATCH (a {id:'DOGE'}) MATCH (b {id:'US'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 3;
MATCH (a {id:'MDA'}) MATCH (b {id:'US'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 2;
MATCH (a {id:'USArmy'}) MATCH (b {id:'US'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 2;
MATCH (a {id:'IRS'}) MATCH (b {id:'US'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 2;

// ════════════════════════════════════════════
// §5  EDGES — GERMAN POLICE GOTHAM DEPLOYMENTS
// ════════════════════════════════════════════

// Expand existing Landeskriminalamt with specific states
MATCH (a {id:'Palantir'}) MATCH (b {id:'BavariaPolice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts (Gotham)', r.weight = 3, r.note = 'GFF constitutional complaint filed. Claims limited to terrorism, organized drugs, sexual offences.';
MATCH (a {id:'BavariaPolice'}) MATCH (b {id:'Gotham'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 3;

MATCH (a {id:'Palantir'}) MATCH (b {id:'HessenPolice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts (Hessendata)', r.weight = 3;
MATCH (a {id:'HessenPolice'}) MATCH (b {id:'Hessendata'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 3;
MATCH (a {id:'Palantir'}) MATCH (b {id:'Hessendata'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;

MATCH (a {id:'Palantir'}) MATCH (b {id:'NRWPolice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts (Gotham)', r.weight = 3;
MATCH (a {id:'NRWPolice'}) MATCH (b {id:'Gotham'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 3;

MATCH (a {id:'Palantir'}) MATCH (b {id:'BWPolice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contract signed (legally blocked)', r.weight = 2, r.note = 'CDU interior ministry signed 5yr multi-million contract. No legal authority yet. Police law change required. AI features may be excluded.';

// German police → Germany
MATCH (a {id:'BavariaPolice'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'HessenPolice'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'NRWPolice'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'BWPolice'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'GFF'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;

// GFF challenges
MATCH (a {id:'GFF'}) MATCH (b {id:'BavariaPolice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'constitutional complaint filed', r.weight = 3;

// Faeser blocked federal adoption
MATCH (a {id:'Faeser'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'blocked federal adoption 2023', r.weight = 3;
MATCH (a {id:'Faeser'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'Federal Interior Minister', r.weight = 2;

// ════════════════════════════════════════════
// §6  EDGES — THIEL-EPSTEIN (UPDATED FROM DOJ FILES FEB 2026)
// ════════════════════════════════════════════
// NOTE: The base Thiel-Epstein edge exists in aiwar_enrichment_epstein.cypher
// These MERGE operations enrich with newly released DOJ detail

// Thiel-Epstein: now documented as one of deepest Epstein tech connections
// DOJ files: correspondence 2014-2019, meetings at NYC townhouse, SF office, Thiel home
// Epstein called Thiel "great friend", offered Roth IRA tax advice, invested $40M in Valar
// Epstein invited Thiel to "the island" — Thiel asked "When are you there?" (spokesperson: never went)
// Epstein considered buying Palantir shares
// When asked "Does my bad press give you pause?" Thiel replied: "If I was intimidated by bad press, I would not have gotten anywhere in life."

// Valar Ventures: Epstein $40M investment confirms financial pipeline
MATCH (a {id:'Epstein'}) MATCH (b {id:'ValarVentures'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '$40M investment 2015-2016', r.weight = 5, r.edge_function = 'DEAL_FLOW', r.flow_type = 'MONEY,ACCESS', r.opacity = 2, r.motive = 'REVENUE', r.phase = 'LOCKED', r.note = 'DOJ files Feb 2026. Epstein invested $40M into Thiel co-founded fund. Considered buying Palantir shares.';

// Epstein→Thiel: financial advice on Roth IRA
// (strengthens existing edge, adds source material)

// ════════════════════════════════════════════
// §7  EDGES — EUROPEAN SURVEILLANCE → EGYPT
// ════════════════════════════════════════════

// Gamma Group → FinSpy → Egypt
MATCH (a {id:'GammaGroup'}) MATCH (b {id:'FinSpy'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 4;
MATCH (a {id:'Egypt'}) MATCH (b {id:'FinSpy'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = 'Pre-2011 Mubarak + post-2013 Sisi. €287K contract found in secret police HQ after revolution.';
MATCH (a {id:'GammaGroup'}) MATCH (b {id:'UK'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'GammaGroup'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;

// Nexa Technologies → CEREBRO → Egypt
MATCH (a {id:'NexaTechnologies'}) MATCH (b {id:'CEREBRO'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 4;
MATCH (a {id:'Egypt'}) MATCH (b {id:'CEREBRO'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = 'Via UAE front company. €11.4M contract 2014. Deep packet inspection of all communications.';
MATCH (a {id:'NexaTechnologies'}) MATCH (b {id:'France'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id:'Vannier'}) MATCH (b {id:'NexaTechnologies'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'former CEO (indicted)', r.weight = 4;

// UAE funded Egypt's digital espionage
MATCH (a {id:'UAE'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'funded digital espionage €150M', r.weight = 5, r.note = '2013: UAE gave Sisi €150M cash for digital espionage capability. Backed Sisi coup.';

// Egypt also deploys Pegasus + Predator simultaneously
MATCH (a {id:'Egypt'}) MATCH (b {id:'Pegasus'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 4, r.note = 'Citizen Lab: Egyptian operators use Pegasus and Predator simultaneously. Hacked opposition politician Ayman Nour.';

// Egyptian GIS
MATCH (a {id:'EgyptGIS'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 3;

// ════════════════════════════════════════════
// §8  EDGES — EGYPTIAN ESPIONAGE IN GERMANY
// ════════════════════════════════════════════

MATCH (a {id:'AminA'}) MATCH (b {id:'EgyptGIS'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'intelligence asset from 2010', r.weight = 4, r.edge_function = 'ASSET', r.leverage = 'B_OVER_A', r.flow_type = 'INTELLIGENCE', r.opacity = 4, r.motive = 'SURVIVAL', r.phase = 'LOCKED', r.note = 'Recruited via Egyptian embassy Berlin. Compiled reports on German media + policy. Received family benefits.';

MATCH (a {id:'AminA'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'worked in Merkel BPA 1999-2020', r.weight = 3, r.note = 'BPA visitor service under spokesman Steffen Seibert. No access to accreditation databases. Charged Nov 2020.';

MATCH (a {id:'EgyptGIS'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'espionage operations', r.weight = 4, r.note = 'German domestic intel report: Egyptian services recruit Egyptians in Germany via diplomatic missions. Target Muslim Brotherhood, Coptic Christians, opposition.';

// ════════════════════════════════════════════
// §9  EDGES — PERSON LINKS (PALANTIR NETWORK)
// ════════════════════════════════════════════

MATCH (a {id:'SankarShyam'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'CTO', r.weight = 3;
MATCH (a {id:'Hegseth'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'briefed by SpaceX/Palantir/Anduril', r.weight = 4;
MATCH (a {id:'Hegseth'}) MATCH (b {id:'US'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'Secretary of Defense', r.weight = 3;

// Karp-Musk-DOGE nexus
MATCH (a {id:'Karp'}) MATCH (b {id:'Musk'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'endorses, calls "most important builder"', r.weight = 4, r.note = 'Karp on CNBC: "obviously the most important builder in the world." On Fox: "no better person" than Musk to lead DOGE. Karp: "We love disruption."';

MATCH (a {id:'Musk'}) MATCH (b {id:'DOGE'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'leader', r.weight = 5;

// Thiel 2009 essay: skeptical of democracy
// "freedom and democracy are no longer compatible"
// This ideological frame underpins Palantir's willingness to serve any state buyer
MATCH (a {id:'Thiel'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'founder, ideological frame', r.weight = 5, r.note = '2009 essay: "I no longer believe that freedom and democracy are compatible." Libertarian ideology enables serving authoritarian policing with mass surveillance tools.';

// ════════════════════════════════════════════
// §10  EDGES — NOVACT / SPAIN / SURVEILLANCE RESEARCH
// ════════════════════════════════════════════

MATCH (a {id:'Novact'}) MATCH (b {id:'Spain'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in Barcelona', r.weight = 0;
MATCH (a {id:'Novact'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'published surveillance report', r.weight = 2, r.note = '"Mass Surveillance in Maghreb and Mashreq" (2024). Documents: billion-dollar Western border surveillance investment, Egypt as state hacker, Israeli tech + capital for espionage.';
MATCH (a {id:'Novact'}) MATCH (b {id:'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'documents surveillance exports', r.weight = 2, r.note = 'RESCOP coalition (600+ orgs). Documents Israeli surveillance tech tested on Palestinians then exported to authoritarian regimes globally.';

// NSO → Egypt (Pegasus already exists as system, adding Egypt deployment link)
MATCH (a {id:'NSO'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'sold Pegasus', r.weight = 4;

// France → NATO
MATCH (a {id:'France'}) MATCH (b {id:'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;

// Egypt → UAE
// (already created above in §7)

// ════════════════════════════════════════════
// §11  EDGES — GOLDEN DOME CONFLICT OF INTEREST
// ════════════════════════════════════════════

// SpaceX-Palantir-Anduril triangle for Golden Dome
MATCH (a {id:'SpaceX'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'Golden Dome consortium', r.weight = 4, r.note = 'Joint bid. "Departure from usual acquisition process." Direct pitch to DefSec Hegseth.';
MATCH (a {id:'SpaceX'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'Golden Dome consortium', r.weight = 4;
MATCH (a {id:'Palantir'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'Golden Dome consortium', r.weight = 4;

// Musk conflict of interest
MATCH (a {id:'Musk'}) MATCH (b {id:'GoldenDome'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'conflict of interest', r.weight = 5, r.note = '42 Congress members asked DoD IG to review. POGO: "slush fund" for tech companies. Subscription model gives "undue influence over national security."';

// ════════════════════════════════════════════
// §12  PLACE EDGES
// ════════════════════════════════════════════

MATCH (a {id:'Gotham'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'Hessendata'}) MATCH (b {id:'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'ICM'}) MATCH (b {id:'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'MavenSmartSystem'}) MATCH (b {id:'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'DOGEDatabase'}) MATCH (b {id:'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'GoldenDome'}) MATCH (b {id:'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'FinSpy'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'CEREBRO'}) MATCH (b {id:'Egypt'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id:'Palantir'}) MATCH (b {id:'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;

// ════════════════════════════════════════════════════════════════════
// §13  EMERGENT PATTERNS
// ════════════════════════════════════════════════════════════════════
//
// ── PATTERN A: The Palantir-DOGE-Immigration Pipeline ──
//   Palantir ──contracts──→ ICE ($95.9M ICM)
//   Palantir ──embedded staff──→ DOGE ──commissioned──→ Master Database
//   Palantir employees ──embedded──→ IRS (tax data → ICE)
//   DOGE ──$30M──→ ICE (real-time migrant tracking)
//   Result: tax + immigration + law enforcement in single searchable database
//
// ── PATTERN B: The Golden Dome Consortium ──
//   SpaceX (satellites) + Palantir (AI/data fusion) + Anduril (drones/sensors)
//   ──joint pitch──→ DefSec Hegseth ──"departure from usual acquisition"──→ $175B+
//   Musk owns SpaceX + leads DOGE = conflict of interest
//   Thiel owns Palantir + backed Vance (VP) + Epstein $40M
//   42 Congress members → DoD IG review
//
// ── PATTERN C: European Surveillance → Authoritarian Export Pipeline ──
//   Gamma Group (UK/DE) ──FinSpy──→ Egypt (Mubarak + Sisi)
//   Nexa Technologies (FR) ──CEREBRO──→ Egypt (via UAE front, €11.4M)
//   UAE ──€150M cash──→ Sisi for digital espionage
//   NSO (IL) ──Pegasus──→ Egypt (used simultaneously with Predator)
//   Pattern: European tech → Gulf financing → North African repression
//   Legal response: Paris indictment (Vannier et al.), GFF complaint (Bavaria)
//
// ── PATTERN D: Egyptian Intelligence Reciprocal Operations ──
//   Egypt GIS ──recruited via embassy──→ Amin A. (in Merkel BPA since 1999)
//   Amin A. ──intelligence on media/policy──→ Egypt GIS (2010-2020)
//   Same Egypt that buys European surveillance simultaneously runs HUMINT in Europe
//   German intel report: systematic recruitment of Egyptian diaspora
//
// ── PATTERN E: Palantir German Police Expansion ──
//   Bavaria (Gotham) + Hessen (Hessendata) + NRW (Gotham) = operational
//   Baden-Württemberg = contract signed, legally blocked
//   Federal = blocked by Faeser (SPD) 2023
//   Hamburg, Bremen, Thuringia = opposing
//   GFF filed constitutional complaint vs Bavaria
//   Thiel 2009: "freedom and democracy are no longer compatible"
//   → US surveillance tool spreading through German police despite democratic opposition
//
// ── PATTERN F: Epstein→Thiel→Palantir Financial Pipeline (DOJ confirmed) ──
//   Epstein ──$40M──→ Valar Ventures ←──co-founder── Thiel
//   Epstein ──considered buying──→ Palantir shares
//   Epstein ──tax advice (Roth IRA)──→ Thiel
//   Epstein ──"great friend" (2014-2019)──→ Thiel
//   Thiel: "If I was intimidated by bad press, I would not have gotten anywhere in life."
//   Thiel ──$15M+ campaign──→ Vance ──VP──→ Trump admin
//   Palantir ──$3.75B 2025 revenue──→ US government
//   Money laundered through legitimate VC → defense contracts → state power
//
// ════════════════════════════════════════════════════════════════════
// NODE COUNT: +7 systems, +15 stakeholders, +5 persons = +27 nodes
// EDGE COUNT: ~60 new edges
// TOTAL ENRICHMENT: connects Palantir surveillance-industrial complex,
//   European spyware exports, Egyptian intelligence operations, DOGE,
//   Golden Dome, and the Thiel-Epstein financial pipeline into
//   a unified graph of surveillance capitalism → state power.
// ════════════════════════════════════════════════════════════════════
