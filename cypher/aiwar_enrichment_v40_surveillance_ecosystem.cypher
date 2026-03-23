// ═══════════════════════════════════════════════════════════════
// AIWAR v4.0 PATCH — 2026-03-22
// SURVEILLANCE ECOSYSTEM: Pegasus forensics, PEGA Committee,
// Intellexa/Predator, German nexus (BKA/FinFisher/Trovicor),
// DPI Egypt, Anduril $20B, Stark Defence, Merz trip,
// In-Q-Tel as CIA funding bridge
// Sources: Amnesty, Citizen Lab, PEGA Report, FIDH, SEC, US Army
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §81 PERSON NODES
// ════════════════════════════════════════════

MERGE (p:Person {id: 'TalDilian'}) SET p.name = 'Tal Dilian', p.role = 'Intellexa founder, ex-IDF Unit 81 commander', p.note = 'Founded Intellexa Alliance (Predator spyware). Convicted Athens Feb 2026: 126 years (reduced to 8, appeal pending). Relocated to Cyprus/Greece for EU export licenses.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.exposure_level = 5, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'PalmerLuckey'}) SET p.name = 'Palmer Luckey', p.role = 'Anduril founder, ex-Oculus', p.note = 'Founded Anduril 2017. Lattice AI platform. $20B Army contract Mar 2026. Thiel + In-Q-Tel backed.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'Merz'}) SET p.name = 'Friedrich Merz', p.role = 'German Chancellor', p.note = 'Visited Trump Mar 3 2026 (3 days after Iran strikes). Supported goals, rejected direct German military involvement. Allowed Ramstein use.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'ENTRY', p.node_function = 'LEGITIMIZER';

MERGE (p:Person {id: 'DavidFriedman'}) SET p.name = 'David Friedman', p.role = 'NSO Group Chairman, ex-US Ambassador to Israel', p.note = 'Trump-appointed Ambassador 2017-2021. Now chairs NSO Group post-acquisition Oct 2025. Company remains on US Commerce blacklist.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'CROSSOVER', p.node_function = 'BROKER';

// ════════════════════════════════════════════
// §82 STAKEHOLDER NODES — SPYWARE + DEFENSE TECH
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'Intellexa'}) SET s.name = 'Intellexa Alliance', s.type = 'mercenary spyware consortium', s.note = 'Tal Dilian (IDF Unit 81). Predator spyware. Cyprus/Greece base for EU export. US blacklisted Nov 2023. Athens conviction Feb 2026.';
MERGE (s:Stakeholder {id: 'Predator'}) SET s.name = 'Predator Spyware', s.type = 'mercenary spyware', s.note = 'Cytrox/Intellexa product. 0-click via Aladdin ad vector. 87 targets in Greece alone. Python-modular. PEGA investigated.';
MERGE (s:Stakeholder {id: 'PEGACommittee'}) SET s.name = 'EU Parliament PEGA Committee', s.type = 'parliamentary inquiry', s.note = 'May 2022-Jun 2023. Confirmed systematic spyware abuse by EU governments. Poland, Hungary, Greece, Spain, Cyprus implicated.';
MERGE (s:Stakeholder {id: 'Anduril'}) SET s.name = 'Anduril Industries', s.type = 'defense tech', s.note = 'Palmer Luckey. Lattice AI platform. $20B US Army enterprise contract Mar 13 2026. Counter-UAS, autonomous drones. Thiel + In-Q-Tel backed. Lattice↔Maven partnership since 2024.';
MERGE (s:Stakeholder {id: 'Lattice'}) SET s.name = 'Anduril Lattice', s.type = 'AI command platform', s.note = 'Real-time data fusion, autonomous drone control, mission command. Edge-to-cloud partnership with Palantir Maven.';
MERGE (s:Stakeholder {id: 'InQTel'}) SET s.name = 'In-Q-Tel', s.type = 'CIA venture fund', s.note = 'CIA strategic investment arm. Invested in Palantir, Anduril, Stark Defence. Bridge between intelligence community and commercial defense tech.';
MERGE (s:Stakeholder {id: 'StarkDefence'}) SET s.name = 'Stark Defence', s.type = 'defense tech (German)', s.note = 'Berlin kamikaze drone startup (Virtus). €2B framework deal Feb 2026. Thiel <10% via Founders Fund/In-Q-Tel. Bundestag approved €540M first tranche.';
MERGE (s:Stakeholder {id: 'BKA'}) SET s.name = 'Bundeskriminalamt (BKA)', s.type = 'federal police', s.note = 'Secretly purchased Pegasus from NSO (admitted Sept 2021 to Bundestag). Also investigated FinFisher for illegal exports. Dual role: buyer AND investigator of spyware.';
MERGE (s:Stakeholder {id: 'FinFisher'}) SET s.name = 'FinFisher (Munich)', s.type = 'spyware vendor (defunct)', s.note = 'FinSpy trojan sold to Egypt, Bahrain, Turkey. BKA raided 2020. Filed insolvency 2022. German pioneer of commercial dictator surveillance.';
MERGE (s:Stakeholder {id: 'Trovicor'}) SET s.name = 'Trovicor (Munich)', s.type = 'lawful interception', s.note = 'Ex-Siemens Intelligence Solutions → Nokia Siemens Networks → spun off as Trovicor. Sold interception centers to Bahrain (transcripts used in torture interrogations) and Iran.';
MERGE (s:Stakeholder {id: 'Sandvine'}) SET s.name = 'Sandvine', s.type = 'DPI vendor', s.note = 'Canadian/US. PacketLogic DPI used by Egypt for mass censorship + network injection. US Commerce blacklisted Feb 2024. Citizen Lab Bad Traffic report 2018.';
MERGE (s:Stakeholder {id: 'Amesys'}) SET s.name = 'Amesys / Nexa Technologies', s.type = 'DPI vendor (French)', s.note = 'Sold Cerebro/Eagle mass surveillance to Egypt (Project Tobruk 2014). French managers indicted 2021 for complicity in torture. FIDH complaint.';
MERGE (s:Stakeholder {id: 'CitizenLab'}) SET s.name = 'Citizen Lab (U of Toronto)', s.type = 'forensic tech lab', s.note = 'Global leader in state malware forensics. Documented Pegasus, Predator, Sandvine. Amnesty Pegasus Project partner.';
MERGE (s:Stakeholder {id: 'AmnestyLab'}) SET s.name = 'Amnesty International Security Lab', s.type = 'forensic NGO', s.note = 'Forensically verified Pegasus infections. 50,000 leaked phone numbers. 180 named journalists. Peer-reviewed methodology.';
MERGE (s:Stakeholder {id: 'GermanGov'}) SET s.name = 'German Federal Government', s.type = 'state actor', s.note = 'Second largest historical arms supplier to Israel (SIPRI). Allowed Ramstein for Iran ops. BKA secretly bought Pegasus.';

// ════════════════════════════════════════════
// §83 EDGES — INTELLEXA / PREDATOR / PEGA
// ════════════════════════════════════════════

MATCH (a {id:'TalDilian'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='former Unit 81 commander', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'TalDilian'}) MATCH (b {id:'Intellexa'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Intellexa'}) MATCH (b {id:'Predator'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='develops via Cytrox subsidiary', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'PEGACommittee'}) MATCH (b {id:'Predator'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='investigated, confirmed abuse', r.weight=5, r.source='PEGA Final Report Jun 2023', r.reliability_score=1.0;
MATCH (a {id:'PEGACommittee'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='investigated Pegasus deployments', r.weight=5, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §84 EDGES — ANDURIL + IN-Q-TEL + THIEL BRIDGE
// ════════════════════════════════════════════

MATCH (a {id:'PalmerLuckey'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='founder', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Anduril'}) MATCH (b {id:'Lattice'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='develops Lattice AI platform', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Lattice'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='edge-to-cloud partnership since 2024', r.weight=5, r.source='Palantir/Anduril announcement', r.detail='Lattice (autonomous targeting) integrates with Maven (intelligence analysis). Combined kill chain.', r.reliability_score=1.0;
MATCH (a {id:'InQTel'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CIA venture investor', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'InQTel'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='early CIA venture investor', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Thiel'}) MATCH (b {id:'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='investor via Founders Fund', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'Thiel'}) MATCH (b {id:'StarkDefence'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='minority investor <10% via Founders Fund', r.weight=4, r.source='Kurier.at Feb 2026', r.reliability_score=1.0;

// ════════════════════════════════════════════
// §85 EDGES — GERMAN NEXUS
// ════════════════════════════════════════════

MATCH (a {id:'BKA'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='secretly purchased Pegasus, admitted Sept 2021', r.weight=5, r.source='Bundestag Innenausschuss Sept 2021', r.detail='BKA bought Pegasus from NSO. Same BKA later investigated FinFisher for selling spyware to dictators.', r.reliability_score=1.0;
MATCH (a {id:'Merz'}) MATCH (b {id:'Trump'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='visited Mar 3 2026, discussed Iran ops', r.weight=4, r.source='Reuters, White House', r.reliability_score=1.0;
MATCH (a {id:'GermanGov'}) MATCH (b {id:'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='2nd largest historical arms supplier', r.weight=4, r.source='SIPRI', r.reliability_score=1.0;
MATCH (a {id:'DavidFriedman'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='chairman post-acquisition Oct 2025', r.weight=5, r.reliability_score=1.0;
MATCH (a {id:'DavidFriedman'}) MATCH (b {id:'Trump'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed Ambassador to Israel 2017-2021', r.weight=4, r.reliability_score=1.0;

// ════════════════════════════════════════════
// §86 EMERGENT PATTERNS (v4.0)
// ════════════════════════════════════════════

// PATTERN AJ: The Thiel Defense Constellation (v4.0)
//   Thiel → co-founded Palantir → Maven ($1.3B+, Iran kill chain)
//   Thiel → invested in Anduril → Lattice ($20B Army contract)
//   Thiel → invested in Stark Defence → German kamikaze drones (€2B)
//   Thiel → invested via Valar (Epstein $40M co-invested)
//   In-Q-Tel (CIA) → invested in Palantir + Anduril
//   Lattice ↔ Maven partnership since 2024
//   One investor bridges: Epstein money, CIA funding, US military AI,
//   German defense procurement, and autonomous weapons platforms.

// PATTERN AK: The German Paradox (v4.0)
//   Germany: GDPR champion, digital sovereignty advocate
//   BKA: secretly bought Pegasus from NSO
//   FinFisher (Munich): sold trojans to dictators, raided then bankrupt
//   Trovicor (Munich, ex-Siemens): sold interception to Bahrain/Iran
//   Merz: visited Trump 3 days after Iran strikes, allowed Ramstein
//   Stark Defence: German drones with Thiel minority stake
//   XM Cyber: Mossad-founded, now in Schwarz/STACKIT = German infrastructure
//   The country that lectures on data protection simultaneously:
//   buys spyware, hosts illegal spyware exporters, allows its bases
//   for undeclared wars, and integrates intelligence-founded security
//   tools into its sovereign cloud infrastructure.

// PATTERN AL: IDF Unit 81 + Unit 8200 = Complete Spectrum (v4.0)
//   Unit 8200 (SIGINT): NSO, Check Point, Palo Alto, Wiz, Cybereason, XM Cyber
//   Unit 81 (tech/special ops): Intellexa/Predator (Tal Dilian)
//   Together: endpoint spyware + network security + cloud scanning +
//   attack path mapping + mercenary surveillance
//   Both units produce commercial founders serving the same target:
//   western infrastructure, western governments, western citizens.

// PATTERN AM: The NSO Ownership Loop (v4.0)
//   NSO: Israeli-founded, Unit 8200 alumni
//   NSO: US Commerce blacklisted Nov 2021
//   NSO: acquired by US investment group Oct 2025
//   NSO: chaired by David Friedman (Trump's Ambassador to Israel)
//   Pegasus: still deployed on EU politicians (PEGA confirmed)
//   BKA: secretly purchased Pegasus
//   A blacklisted company, owned by Americans, led by a Trump appointee,
//   whose product is used by German federal police against German targets
//   and against EU parliamentarians investigating that same product.

// ════════════════════════════════════════════
// §87 STATISTICS (v4.0 cumulative)
// ════════════════════════════════════════════
// Person nodes: 56 (+4: TalDilian, PalmerLuckey, Merz, DavidFriedman)
// Stakeholder nodes: 112 (+17: Intellexa, Predator, PEGACommittee,
//   Anduril, Lattice, InQTel, StarkDefence, BKA, FinFisher, Trovicor,
//   Sandvine, Amesys, CitizenLab, AmnestyLab, GermanGov + metrics)
// Total edges: ~310
// Patterns: A-AM = 39 emergent patterns
// 12 files on GitHub
