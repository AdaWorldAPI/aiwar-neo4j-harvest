// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Dream / Egypt / Pegasus Nexus
// Mercenary-spyware supply chain × Israeli offensive-cyber alumni ×
// the Kurz→Thiel bridge into the existing Thiel infrastructure cluster
// ═══════════════════════════════════════════════════════════════════
// Supplements: aiwar_enrichment_khashoggi_nexus.cypher
//              aiwar_enrichment_thiel_infrastructure.cypher
//
// Sources (per-edge `sources` property below):
//   Citizen Lab (Hide and Seek 2018; Pegasus vs Predator 2021; NilePhish 2017),
//   FIDH "Egypt: A Repression Made in France" (N°716a, 2018),
//   Washington Post (Altantawy/Predator, 2023-09),
//   Times of Israel / Euronews / Bain Capital Ventures (Dream funding 2025-26),
//   OCCRP & Handelsblatt (Kurz→Thiel Capital, 2021-22),
//   Middle East Eye / Byline Times / Boing Boing (Epstein-Thiel-Barak-Carbyne,
//   DOJ Epstein files 2026), IDS (state surveillance beyond Pegasus).
// Generated: 2026-06-20
//
// CONNECTING TISSUE (why these subgraphs join):
//   The Khashoggi nexus and the Thiel infrastructure cluster overlap at a
//   single seam: the Israeli offensive-cyber alumni pool (Unit 8200 / NSO).
//     • Pegasus (NSO, built under Shalev Hulio) was found on the phones of
//       Jamal Khashoggi's associates → links into KhashoggiMurder.
//     • Hulio then co-founded Dream Security WITH Sebastian Kurz.
//     • Kurz had joined Peter THIEL's Thiel Capital as "Global Strategist"
//       BEFORE co-founding Dream → links Dream into the existing Thiel node.
//     • Dream is now expanding into data analytics → direct Palantir competitor.
//   So the seam is NOT one conspiracy; it is two distinct cap tables joined at
//   the "ex-Israeli-intelligence surveillance-tech founder" node. Tagged as
//   analytic_inference where the join is structural rather than transactional.
// ═══════════════════════════════════════════════════════════════════


// ═══════════════════════════════════
// §1  PERSON NODES
// ═══════════════════════════════════

MERGE (n:Person {id: 'ShalevHulio'})
SET n.name = 'Shalev Hulio',
    n.person_type = 'Co-founder/ex-CEO NSO Group; co-founder/CEO Dream Security',
    n.status = 'documented',
    n.sources = 'TimesOfIsrael 2025-02; OCCRP; Bain Capital Ventures 2025-06; FTM 2025-10',
    n.note = 'Co-founded NSO Group, maker of Pegasus spyware; stepped down as NSO CEO Aug 2022 amid Pegasus scandal and US blacklist. Jan 2023 co-founded Dream Security with Sebastian Kurz and Gil Dolev. The single human edge connecting the Pegasus/Khashoggi subgraph to the Dream/Kurz/Thiel subgraph.';

MERGE (n:Person {id: 'SebastianKurz'})
SET n.name = 'Sebastian Kurz',
    n.person_type = 'Former Chancellor of Austria; President/co-founder Dream Security; ex-Thiel Capital Global Strategist',
    n.status = 'documented',
    n.sources = 'OCCRP; Handelsblatt 2022-10; Euronews 2025-02; Trendingtopics 2026-06',
    n.note = 'Resigned as Austrian Chancellor 2021 amid a corruption investigation (later convicted of false testimony 2024, contested/appealed; denies wrongdoing). End of Dec 2021 hired by Peter Thiel''s Thiel Capital as Global Strategist. 2023 co-founded Dream Security; President; reportedly ~15% stake (~$450M on paper at $3B valuation). THE BRIDGE NODE: Pegasus-world (via Dream/Hulio) ↔ Thiel-world (via Thiel Capital employment).';

MERGE (n:Person {id: 'GilDolev'})
SET n.name = 'Gil Dolev',
    n.person_type = 'Co-founder Dream Security; cyber-intelligence (ex-Microsoft, Israeli defense units)',
    n.status = 'documented',
    n.sources = 'Bain Capital Ventures 2025-06; Cyber Magazine 2025-02',
    n.note = 'Third Dream co-founder; technical/cyber-intelligence background.';

MERGE (n:Person {id: 'TalDilian'})
SET n.name = 'Tal Dilian',
    n.person_type = 'Founder Intellexa Alliance / took over Cytrox; ex-IDF intelligence',
    n.status = 'documented',
    n.sources = 'Citizen Lab 2021; Times of Israel 2023-09; Forbes',
    n.note = 'Former IDF intelligence officer, previously associated with the NSO Group milieu; took over Cytrox in 2019 to build Intellexa as a one-stop spyware shop (maker of Predator). Secondary connective node within the Israeli offensive-cyber alumni pool.';

MERGE (n:Person {id: 'AymanNour'})
SET n.name = 'Ayman Nour',
    n.person_type = 'Exiled Egyptian opposition politician',
    n.status = 'documented',
    n.sources = 'Citizen Lab "Pegasus vs Predator" 2021-12',
    n.note = 'His iPhone was simultaneously infected with BOTH Cytrox Predator AND NSO Pegasus, operated by two different government clients — the clearest documented Egypt double-infection case.';

MERGE (n:Person {id: 'AhmedAltantawy'})
SET n.name = 'Ahmed Altantawy',
    n.person_type = 'Egyptian opposition figure / former MP, 2023 presidential hopeful',
    n.status = 'documented',
    n.sources = 'Citizen Lab + Google TAG 2023-09; Washington Post 2023-09',
    n.note = 'Targeted with Predator after announcing a presidential bid; researchers judged Egyptian authorities the likely operator. Discovery forced Apple to ship emergency patches.';

MERGE (n:Person {id: 'OmarAbdulaziz'})
SET n.name = 'Omar Abdulaziz',
    n.person_type = 'Saudi dissident, Khashoggi associate (Canada-based)',
    n.status = 'documented',
    n.sources = 'Citizen Lab 2018; Khashoggi-circle Pegasus reporting',
    n.note = 'Close Khashoggi associate whose phone Citizen Lab found infected with Pegasus in 2018, months before Khashoggi''s murder — the documented technical link between Pegasus and the Khashoggi circle. (NSO denies its tech was used to target Khashoggi himself.)';


// ═══════════════════════════════════
// §2  STAKEHOLDER / VENDOR NODES
// ═══════════════════════════════════

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'NSOGroup'})
SET n.name = 'NSO Group',
    n.stakeholder_type = 'Surveillance',
    n.airo_type = 'AIDeveloper',
    n.status = 'documented',
    n.sources = 'Citizen Lab; Amnesty Security Lab; US Commerce blacklist 2021',
    n.note = 'Israeli cyber-arms firm; maker of Pegasus zero-click spyware. US-blacklisted Nov 2021. Pegasus operators documented in 45+ countries targeting journalists, dissidents, opposition. Founder Hulio''s exit fed directly into Dream.';

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'DreamSecurity'})
SET n.name = 'Dream Security ("DREAM")',
    n.stakeholder_type = 'Surveillance/SovereignAI',
    n.airo_type = 'AIDeveloper',
    n.status = 'documented',
    n.sources = 'TimesOfIsrael/Euronews 2025-02; Bain CV 2025-06; Trendingtopics/StartupFortune 2026-06',
    n.note = 'Tel Aviv-founded (Jan 2023) "sovereign AI" + cyber-defense firm for governments/critical infrastructure. Products Atlas/Sphere/Hero. $260M round June 2026 → $3B valuation, ~$412M raised, ~350 staff (Tel Aviv/Abu Dhabi/Vienna), B200 datacenter near Modi''in. Investors: Bain Capital Ventures, Group 11 (Dovi Frances), Aleph, Bicycle Capital, Antler, Tru Arrow, Tau. Now adding AI data-analytics → explicit Palantir competitor. Markets itself as DEFENSIVE; denies NSO connection (disputed by FTM, which counted ~12 ex-NSO/spyware staff).';

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'CytroxIntellexa'})
SET n.name = 'Cytrox / Intellexa Alliance',
    n.stakeholder_type = 'Surveillance',
    n.airo_type = 'AIDeveloper',
    n.status = 'documented',
    n.sources = 'Citizen Lab 2021; Meta/Threat report 2021',
    n.note = 'Maker of Predator spyware (iOS+Android). Part of the Intellexa Alliance assembled by Tal Dilian. Customers identified incl. Egypt, Armenia, Greece, Saudi Arabia, Oman, others. Pegasus''s commercial cousin.';

MERGE (n:Stakeholder:Company {id: 'NexaAmesys'})
SET n.name = 'Nexa Technologies (ex-Amesys)',
    n.stakeholder_type = 'Surveillance',
    n.status = 'documented',
    n.sources = 'FIDH N°716a 2018',
    n.note = 'French firm; sold the CEREBRO mass cyber-surveillance system to Sisi''s Egypt (2014). As Amesys, already under judicial proceedings for complicity in torture over similar tech sold to Gaddafi''s Libya (2007). Centerpiece of the FIDH "made in France" thesis.';

MERGE (n:Stakeholder:Company {id: 'HackingTeam'})
SET n.name = 'Hacking Team',
    n.stakeholder_type = 'Surveillance',
    n.status = 'documented',
    n.sources = 'FIDH 2018; 2015 Hacking Team email leak (WikiLeaks)',
    n.note = 'Italian firm; sold Remote Control System ("DaVinci") to Egypt''s secret Technical Research Department; ~€412k contract. Used against activists ~2012-2013.';

MERGE (n:Stakeholder:Company {id: 'GammaFinFisher'})
SET n.name = 'Gamma Group (FinFisher)',
    n.stakeholder_type = 'Surveillance',
    n.status = 'documented',
    n.sources = 'FIDH 2018; State Security archive docs found 2011',
    n.note = 'German-British firm; FinFisher bought by Egyptian State Security (~2M EGP), exposed via documents protesters found in State Security HQ in March 2011. The 2011-revolution-era tool.';

MERGE (n:Stakeholder:Company {id: 'BlueCoat'})
SET n.name = 'Blue Coat Systems',
    n.stakeholder_type = 'Surveillance',
    n.status = 'documented',
    n.sources = 'FIDH 2018; Citizen Lab "Planet Blue Coat" 2013',
    n.note = 'US firm; ProxySG / DPI deployed on an Egyptian public network (2013, via reseller SEE Egypt) to identify and arrest groups of government critics from Facebook activity.';

MERGE (n:Stakeholder:Institution {id: 'TRD_Egypt'})
SET n.name = 'Technical Research Department (TRD), Egypt',
    n.stakeholder_type = 'IntelligenceAgency',
    n.status = 'documented',
    n.sources = 'Privacy International; FIDH 2018',
    n.note = 'Secret Egyptian intelligence unit answering directly to the president; largest "security solutions" budget; buyer from Nokia Siemens Networks and Hacking Team. Primary state customer node for the vendor stack.';

MERGE (n:Stakeholder:Institution {id: 'ThielCapital'})
SET n.name = 'Thiel Capital',
    n.stakeholder_type = 'InvestmentVehicle',
    n.status = 'documented',
    n.sources = 'OCCRP; Handelsblatt 2022',
    n.note = 'Peter Thiel''s personal investment vehicle. Employed Sebastian Kurz as Global Strategist from end-2021. The corporate vehicle through which the Kurz→Thiel bridge runs.';

MERGE (n:Stakeholder:Institution {id: 'Group11'})
SET n.name = 'Group 11 (Dovi Frances)',
    n.stakeholder_type = 'VC',
    n.status = 'documented',
    n.sources = 'TimesOfIsrael 2025-02; Trendingtopics 2026-06',
    n.note = 'Israeli-American VC; Dream backer since inception, co-led the 2026 round.';


// ═══════════════════════════════════
// §3  SPYWARE / SYSTEM NODES  (tools as HistoricalSystem, per schema)
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'Pegasus'})
SET n.name = 'Pegasus (NSO zero-click spyware)',
    n.year = 2016, n.system_type = 'Spyware',
    n.opacity_era = 'TRANSLUCENT',
    n.status = 'documented',
    n.sources = 'Citizen Lab; Amnesty; WhatsApp v. NSO',
    n.note = 'Zero-click mobile implant; full device capture (mic, camera, messages, location). Famous 2019 WhatsApp-call zero-click vector (delivery method, global — not Egypt-specific). Documented against journalists/dissidents incl. Khashoggi circle, Jordan, Mexico, India, Hungary, Spain, Saudi/UAE.';

MERGE (n:HistoricalSystem {id: 'Predator'})
SET n.name = 'Predator (Cytrox/Intellexa spyware)',
    n.year = 2021, n.system_type = 'Spyware',
    n.opacity_era = 'TRANSLUCENT',
    n.status = 'documented',
    n.sources = 'Citizen Lab 2021/2023; Washington Post 2023',
    n.note = 'Mercenary spyware; documented Egyptian operations against Nour and Altantawy.';

MERGE (n:HistoricalSystem {id: 'EgyptVendorStack'})
SET n.name = 'Egypt Mercenary-Spyware Supply Chain',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'TRANSLUCENT',
    n.status = 'documented',
    n.sources = 'FIDH 2018; Citizen Lab; IDS 2025',
    n.note = 'Transnational vendor stack into one buyer (Egyptian security/TRD): Israel (NSO/Pegasus, Cytrox/Predator), France (Nexa/CEREBRO, ERCOM/CORTEX, IDEMIA), Italy (Hacking Team/RCS), Germany-UK (Gamma/FinFisher), US (Blue Coat). NOT a single-vendor or single-country story. Pegasus is one edge; the system''s spine is European. Used to suppress dissent wholesale (60k+ political prisoners since 2013 per FIDH).';

MERGE (n:HistoricalSystem {id: 'IsraeliCyberAlumniPool'})
SET n.name = 'Israeli Offensive-Cyber Alumni Pool (Unit 8200 / NSO)',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'TRANSLUCENT',
    n.status = 'analytic_inference',
    n.sources = 'aggregate: Citizen Lab, FTM, Times of Israel',
    n.note = 'The shared-personnel substrate that joins otherwise-distinct companies: NSO (Hulio→Dream), Intellexa (Dilian, ex-NSO milieu), Carbyne (8200/Mossad alumni founding team). This is the JOIN between the Khashoggi nexus and the Thiel infrastructure cluster — a personnel/alumni edge, not a transactional one.';

MERGE (n:HistoricalSystem {id: 'TorCircumvention'})
SET n.name = 'Tor Circumvention Stack (obfsproxy→obfs4→meek)',
    n.year = 2012, n.year_end = 2016, n.system_type = 'Countermeasure',
    n.opacity_era = 'TRANSPARENT',
    n.status = 'documented',
    n.sources = 'Tor Project blog; OONI/Citizen Lab Egypt 2018; arXiv PT research',
    n.note = 'The break in the chain. obfsproxy/obfs2 (2012, vs Iran DPI), probe-resistant ScrambleSuit→obfs4 (2013-14, per-bridge shared secret defeats active probing), meek (2014, domain fronting). General-purpose anti-DPI/anti-probing tooling Egypt later attacked country-wide (Tor+Signal+SSH+HTTPS, from Aug 2016). Built for the censorship arms race, not for Egypt specifically.';


// ═══════════════════════════════════
// §4  CONNECTIVE EDGES
// ═══════════════════════════════════

// ── Hulio founded NSO ; NSO deploys Pegasus
MATCH (a {id: 'ShalevHulio'}) MATCH (b {id: 'NSOGroup'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'co-founder / ex-CEO', r.weight = 5, r.edge_function = 'FOUNDING',
    r.flow_type = 'CONTROL', r.opacity = 1, r.status = 'documented',
    r.sources = 'OCCRP; NSO record', r.note = 'Built and led NSO through the Pegasus era; left Aug 2022.';

MATCH (a {id: 'NSOGroup'}) MATCH (b {id: 'Pegasus'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'develops/sells', r.weight = 5, r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'TECHNOLOGY', r.opacity = 2, r.status = 'documented',
    r.sources = 'Citizen Lab; Amnesty', r.note = 'Pegasus is NSO''s flagship product.';

// ── Pegasus → Khashoggi circle (documented on associates; NSO denies Khashoggi himself)
MATCH (a {id: 'Pegasus'}) MATCH (b {id: 'OmarAbdulaziz'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'infected phone (2018)', r.weight = 4, r.edge_function = 'TARGETING',
    r.flow_type = 'SURVEILLANCE', r.opacity = 3, r.status = 'documented',
    r.sources = 'Citizen Lab 2018', r.note = 'Pegasus found on close Khashoggi associate''s phone months before the murder.';

MATCH (a {id: 'Pegasus'}) MATCH (b {id: 'KhashoggiMurder'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'surveillance of circle preceded murder', r.weight = 3,
    r.edge_function = 'INTELLIGENCE', r.flow_type = 'SURVEILLANCE', r.opacity = 4,
    r.status = 'contested',
    r.sources = 'Citizen Lab; NSO public denial',
    r.note = 'Pegasus documented on Khashoggi associates (Abdulaziz, and reporting on Cengiz/Elatr). NSO denies its technology was used to target Khashoggi directly. Tagged contested: associate-targeting documented, direct-targeting denied/unproven.';

MATCH (a {id: 'Pegasus'}) MATCH (b {id: 'MBS'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'Saudi operator (attributed)', r.weight = 3, r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'SURVEILLANCE', r.opacity = 4, r.status = 'contested',
    r.sources = 'Citizen Lab operator attribution',
    r.note = 'Citizen Lab attributed Pegasus operators incl. Saudi Arabia; operator-level, country-geolocated — not a signed contract.';

// ── Hulio + Kurz + Dolev co-found Dream
MATCH (a {id: 'ShalevHulio'}) MATCH (b {id: 'DreamSecurity'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'co-founder / CEO', r.weight = 5, r.edge_function = 'FOUNDING',
    r.flow_type = 'CONTROL', r.opacity = 1, r.status = 'documented',
    r.sources = 'Bain CV 2025', r.note = 'NSO→Dream pivot: offensive to nominally defensive.';
MATCH (a {id: 'SebastianKurz'}) MATCH (b {id: 'DreamSecurity'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'co-founder / President / ~15%', r.weight = 5, r.edge_function = 'FOUNDING',
    r.flow_type = 'CONTROL,ACCESS', r.opacity = 1, r.status = 'documented',
    r.sources = 'Trendingtopics 2026-06', r.note = 'Opens government doors; reputational laundering per FTM critique.';
MATCH (a {id: 'GilDolev'}) MATCH (b {id: 'DreamSecurity'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'co-founder', r.weight = 4, r.edge_function = 'FOUNDING',
    r.flow_type = 'CONTROL', r.opacity = 1, r.status = 'documented', r.sources = 'Bain CV 2025';

// ── THE BRIDGE: Kurz → Thiel Capital → Thiel (joins to existing Thiel cluster)
MATCH (a {id: 'SebastianKurz'}) MATCH (b {id: 'ThielCapital'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'Global Strategist (from end-2021)', r.weight = 4, r.edge_function = 'EMPLOYMENT',
    r.flow_type = 'ACCESS,IDEOLOGY', r.opacity = 2, r.status = 'documented',
    r.sources = 'OCCRP; Handelsblatt 2022',
    r.note = 'Kurz embedded in Thiel''s network BEFORE founding Dream.';
MATCH (a {id: 'ThielCapital'}) MATCH (b {id: 'Thiel'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'investment vehicle of', r.weight = 5, r.edge_function = 'INTEGRATION',
    r.flow_type = 'CONTROL', r.opacity = 1, r.status = 'documented', r.sources = 'public record';
MATCH (a {id: 'SebastianKurz'}) MATCH (b {id: 'Thiel'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'protégé / employee', r.weight = 3, r.edge_function = 'INTELLIGENCE',
    r.flow_type = 'ACCESS,IDEOLOGY', r.opacity = 2, r.status = 'documented',
    r.sources = 'OCCRP; met Munich Security Conf 2017',
    r.note = 'THE SEAM: this edge is where the Pegasus/Dream subgraph overlaps the Thiel infrastructure subgraph.';

// ── Dream competes with Palantir (joins to existing Palantir node)
MATCH (a {id: 'DreamSecurity'}) MATCH (b {id: 'Palantir'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'data-analytics competitor (2026)', r.weight = 2, r.edge_function = 'COMPETITION',
    r.flow_type = 'MARKET', r.opacity = 2, r.status = 'documented',
    r.sources = 'Trendingtopics 2026-06',
    r.note = 'Dream expanding from cyber-defense into AI data analytics, the Palantir segment. Same ex-intel-founder world, now rivals.';

// ── Dream investor edge
MATCH (a {id: 'Group11'}) MATCH (b {id: 'DreamSecurity'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'investor (since inception)', r.weight = 3, r.edge_function = 'INVESTMENT',
    r.flow_type = 'MONEY', r.opacity = 2, r.status = 'documented', r.sources = 'TimesOfIsrael 2025-02';

// ── Israeli cyber alumni pool binds Hulio / Dilian / Carbyne (the JOIN node)
MATCH (a {id: 'ShalevHulio'}) MATCH (b {id: 'IsraeliCyberAlumniPool'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'NSO founder', r.weight = 4, r.edge_function = 'INTEGRATION',
    r.flow_type = 'PERSONNEL', r.opacity = 3, r.status = 'analytic_inference', r.sources = 'aggregate';
MATCH (a {id: 'TalDilian'}) MATCH (b {id: 'IsraeliCyberAlumniPool'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'Intellexa / ex-NSO milieu', r.weight = 3, r.edge_function = 'INTEGRATION',
    r.flow_type = 'PERSONNEL', r.opacity = 3, r.status = 'analytic_inference', r.sources = 'Times of Israel 2023';
MATCH (a {id: 'Carbyne'}) MATCH (b {id: 'IsraeliCyberAlumniPool'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = '8200/Mossad alumni founders', r.weight = 3, r.edge_function = 'INTEGRATION',
    r.flow_type = 'PERSONNEL', r.opacity = 3, r.status = 'analytic_inference',
    r.sources = 'thiel_infrastructure.cypher; TRT/MintPress',
    r.note = 'This is the edge that makes the two clusters one graph: Carbyne (Thiel/Barak/Epstein) and Pegasus/Dream (Hulio) share the alumni substrate, not a transaction.';

// ── Dilian controls Cytrox/Intellexa ; Cytrox deploys Predator
MATCH (a {id: 'TalDilian'}) MATCH (b {id: 'CytroxIntellexa'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'took over 2019 / founder', r.weight = 4, r.edge_function = 'FOUNDING',
    r.flow_type = 'CONTROL', r.opacity = 2, r.status = 'documented', r.sources = 'Citizen Lab 2021';
MATCH (a {id: 'CytroxIntellexa'}) MATCH (b {id: 'Predator'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'develops/sells', r.weight = 5, r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'TECHNOLOGY', r.opacity = 2, r.status = 'documented', r.sources = 'Citizen Lab 2021';

// ── Predator + Pegasus → Egyptian targets
MATCH (a {id: 'Predator'}) MATCH (b {id: 'AymanNour'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'infected', r.weight = 4, r.edge_function = 'TARGETING',
    r.flow_type = 'SURVEILLANCE', r.opacity = 3, r.status = 'documented', r.sources = 'Citizen Lab 2021';
MATCH (a {id: 'Pegasus'}) MATCH (b {id: 'AymanNour'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'co-infected (double infection)', r.weight = 4, r.edge_function = 'TARGETING',
    r.flow_type = 'SURVEILLANCE', r.opacity = 3, r.status = 'documented', r.sources = 'Citizen Lab 2021',
    r.note = 'Same phone, two spyware products, two government clients.';
MATCH (a {id: 'Predator'}) MATCH (b {id: 'AhmedAltantawy'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'targeted after presidential bid', r.weight = 4, r.edge_function = 'TARGETING',
    r.flow_type = 'SURVEILLANCE', r.opacity = 3, r.status = 'documented',
    r.sources = 'Citizen Lab + Google TAG 2023; WaPo 2023';

// ── Vendor stack → Egyptian state (EgyptSurveillanceState exists; TRD new)
MATCH (a {id: 'NexaAmesys'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'sold CEREBRO (2014)', r.weight = 4, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'FIDH 2018',
    r.note = 'Amesys precedent: prior torture-complicity proceeding over Libya sales.';
MATCH (a {id: 'HackingTeam'}) MATCH (b {id: 'TRD_Egypt'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'sold RCS/DaVinci', r.weight = 3, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'FIDH 2018; HT leak 2015';
MATCH (a {id: 'GammaFinFisher'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'FinFisher to State Security (pre-2011)', r.weight = 3, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'FIDH; 2011 HQ docs';
MATCH (a {id: 'BlueCoat'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ProxySG/DPI (2013)', r.weight = 3, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'FIDH; Citizen Lab 2013';
MATCH (a {id: 'CytroxIntellexa'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'Predator customer', r.weight = 3, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'Citizen Lab/Meta 2021';
MATCH (a {id: 'TRD_Egypt'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'core buyer / operator', r.weight = 4, r.edge_function = 'INTEGRATION',
    r.flow_type = 'INTELLIGENCE', r.opacity = 4, r.status = 'documented', r.sources = 'Privacy International; FIDH';

// ── Roll the vendors up into the meta supply-chain node
MATCH (b {id: 'EgyptVendorStack'})
MATCH (a) WHERE a.id IN ['NSOGroup','CytroxIntellexa','NexaAmesys','HackingTeam','GammaFinFisher','BlueCoat']
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'member vendor', r.weight = 2, r.edge_function = 'INTEGRATION',
    r.flow_type = 'TECHNOLOGY', r.opacity = 2, r.status = 'documented', r.sources = 'FIDH 2018; Citizen Lab';
MATCH (a {id: 'EgyptVendorStack'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'supplies repression architecture', r.weight = 4, r.edge_function = 'SUPPLY',
    r.flow_type = 'TECHNOLOGY', r.opacity = 3, r.status = 'documented', r.sources = 'FIDH 2018; IDS 2025';

// ── Countermeasure: Tor stack vs Egyptian surveillance (the break in the chain)
MATCH (a {id: 'TorCircumvention'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'circumvents / attacked country-wide 2016', r.weight = 3, r.edge_function = 'COUNTERMEASURE',
    r.flow_type = 'EVASION', r.opacity = 2, r.status = 'documented',
    r.sources = 'Tor Project; OONI/Citizen Lab 2018; FIDH 2018',
    r.note = 'Egypt''s Aug-2016+ DPI/RST attacks on Tor, Signal, SSH, HTTPS are what probe-resistant bridges (obfs4) and domain fronting (meek) were built to defeat — though built for the global arms race, not Egypt specifically.';


// ═══════════════════════════════════
// §5  PROVENANCE / SANITY
// ═══════════════════════════════════
// Quick verification queries (run manually, not part of the load):
//   // new nodes added this enrichment
//   MATCH (n) WHERE n.sources CONTAINS 'FIDH' OR n.id IN
//     ['DreamSecurity','NSOGroup','SebastianKurz','ShalevHulio'] RETURN n.id, labels(n);
//   // the seam edge (Pegasus subgraph ↔ Thiel subgraph)
//   MATCH p=(:Person {id:'SebastianKurz'})-[:PERSON_LINK]->(:Person {id:'Thiel'}) RETURN p;
//   // contested vs documented audit
//   MATCH ()-[r]->() WHERE r.status IN ['contested','denied','analytic_inference']
//     RETURN r.label, r.status, r.sources ORDER BY r.status;
// ═══════════════════════════════════════════════════════════════════
