// ═══════════════════════════════════════════════════════════════
// AIWAR v3.2 PATCH — 2026-03-22
// Gemini OSINT harvest: Valar→Palantir chain, Feinberg/POGO/Epstein,
// Lavender/Gospel, Google Maven exit, Mandelson arrest, DOJ audio,
// Sankar/Karp, NoTechForApartheid, Cerberus portfolio, Dan Caine
// Sources: DOJ Feb 2026, POGO, CBS, Guardian, +972, Byline Times, Cato
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §24 NEW PERSON NODES
// ════════════════════════════════════════════

MERGE (p:Person {id: 'AlexKarp'}) SET p.name = 'Alex Karp', p.role = 'Palantir CEO', p.note = 'Named in leaked Barak emails alongside Ellison, Catz, Bezos. Vocal proponent of AI in Western warfare. Stated: we support Kriegsfuehrung und wir sind stolz darauf.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = 'defending Western civilization through technology', p.qualia_mask = 'philosophical warrior, contrarian genius', p.unsublimated = 'CEO of company whose founding capital chain includes intelligence-laundered money', p.exposure_level = 1, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'ShyamSankar'}) SET p.name = 'Shyam Sankar', p.role = 'Palantir CTO', p.note = 'HASC testimony 2024: Maven has tens of thousands of users. Lobbied for DoD software acquisition reform. Architect of Maven scaling.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = 'Maven scaling testimony to Congress — locked Palantir into permanent defense dependency', p.sublimation = 'defending the West through software', p.qualia_mask = 'technical mastery, patriotic innovation', p.unsublimated = 'architect of AI kill-chain system with Epstein-originated funding chain', p.exposure_level = 0, p.node_function = 'ENABLER';

MERGE (p:Person {id: 'DanCaine'}) SET p.name = 'Dan Caine', p.role = 'Chairman of Joint Chiefs of Staff', p.note = 'Directing Operation Epic Fury. Confirmed 5,000-lb penetrator weapons on underground facilities. 120+ naval vessels destroyed. Deep airspace penetration.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.exposure_level = 0, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'BeccaBalint'}) SET p.name = 'Becca Balint', p.role = 'US Representative (D-VT)', p.note = 'Feb 11 2026: grilled AG Pam Bondi on House floor about Feinberg-Epstein ties in DOJ files given his role as Deputy SecDef.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'PRE_ENTRY', p.exposure_level = 0, p.node_function = 'LEGITIMIZER';

MERGE (p:Person {id: 'PamBondi'}) SET p.name = 'Pam Bondi', p.role = 'US Attorney General', p.note = 'Questioned by Balint on Feinberg-Epstein ties. Overseeing DOJ file releases while managing administration exposure.', p.receptor = 'SURVIVAL', p.mcclelland = 'IV_performed', p.mcclelland_need = 'nPow', p.rubicon = 'CONCEALMENT', p.sublimation = 'serving justice and the rule of law', p.qualia_mask = 'institutional authority', p.unsublimated = 'managing DOJ releases to minimize administration exposure to Epstein connections', p.exposure_level = 1, p.node_function = 'SHIELD';

// ════════════════════════════════════════════
// §25 NEW STAKEHOLDER NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'Lavender'}) SET s.name = 'Lavender', s.type = 'AI targeting system', s.note = 'IDF AI target generation. +972 Magazine: flagged 37,000 Palestinians as bombing targets with minimal human review. Runs on Nimbus compute.';
MERGE (s:Stakeholder {id: 'Gospel'}) SET s.name = 'The Gospel (Habsora)', s.type = 'AI targeting system', s.note = 'IDF AI system for physical bombing targets (buildings/infrastructure) at rapid scale. Runs on Nimbus compute.';
MERGE (s:Stakeholder {id: 'NoTechForApartheid'}) SET s.name = '#NoTechForApartheid', s.type = 'worker movement', s.note = 'Tech worker coalition protesting Google+Amazon over Nimbus. Sit-ins, 50+ firings 2024. 2018 Google Maven walkout precursor.';
MERGE (s:Stakeholder {id: 'SubCom'}) SET s.name = 'SubCom', s.type = 'defense tech/logistics', s.note = 'Undersea data cable infrastructure. Owned by Cerberus. Critical to global strategic communications.';
MERGE (s:Stakeholder {id: 'RedRiver'}) SET s.name = 'Red River', s.type = 'defense tech', s.note = 'Defense-focused technology contractor. Cerberus portfolio company.';
MERGE (s:Stakeholder {id: 'OSC'}) SET s.name = 'DoD Office of Strategic Capital', s.type = 'government agency', s.note = 'Pentagon unit for credit-based defense investments. 2024 NDAA authorized. Feinberg overhauled with ex-Cerberus executives. $200B over 3 years.';
MERGE (s:Stakeholder {id: 'GoogleCloud'}) SET s.name = 'Google Cloud', s.type = 'tech infrastructure', s.note = 'Nimbus co-provider. Dedicated IMOD landing zone. Fired 50+ workers protesting military use.';
MERGE (s:Stakeholder {id: 'AWS'}) SET s.name = 'Amazon Web Services', s.type = 'tech infrastructure', s.note = 'Nimbus co-provider. Dedicated IDF server farms. Absorbed IDF data after Microsoft restricted access Sept 2025.';
MERGE (s:Stakeholder {id: 'EpicFury'}) SET s.name = 'Operation Epic Fury', s.type = 'military operation', s.note = 'Official name of 2026 Iran War. 7,000+ targets struck. $13B first 6 days. $200B funding request. 5,000-lb penetrators. 120+ naval vessels.';

// ════════════════════════════════════════════
// §26 EDGES — FEINBERG/EPSTEIN/POGO (THE BRIDGE)
// ════════════════════════════════════════════

MATCH (a {id:'Feinberg'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='named 20x in DOJ files, Cerberus 360x', r.weight=4, r.source='POGO analysis Feb 2026, CBS Bondi hearing', r.detail='POGO: Feinberg named 20 times in unredacted DOJ files, Cerberus Capital 360 times. Rep. Balint grilled AG Bondi Feb 11 2026 on whether DOJ investigating given Feinbergs Deputy SecDef role.', r.edge_function='KOMPROMAT', r.leverage='B_OVER_A', r.flow_type='MONEY,ACCESS', r.opacity=3, r.motive='UNKNOWN', r.phase='CROSSOVER', r.reliability_score=0.98, r.source_url='https://www.cbsnews.com/live-updates/pam-bondi-hearing-epstein-files-justice-department-congress/';
MATCH (a {id:'BeccaBalint'}) MATCH (b {id:'PamBondi'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='grilled on Feinberg-Epstein ties', r.weight=3, r.source='House floor Feb 11 2026', r.detail='Asked whether DOJ investigating Feinbergs Epstein connections given current DoD role.';

// ════════════════════════════════════════════
// §27 EDGES — DOJ AUDIO: EPSTEIN PITCHES PALANTIR TO BARAK
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'Barak'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='DOJ audio: pitched Palantir and Thiel', r.weight=5, r.source='DOJ audio release Feb 2026, YouTube 6bd4wEtUXZU', r.detail='Epstein to Barak: Peter Thiel is one of the best. He has Palantir. I wanted to talk to him after I talk to you. Also discussed Andreessen Horowitz. Direct evidence of intelligence asset brokering military AI company to handler.', r.edge_function='DEAL_FLOW,INTELLIGENCE', r.leverage='A_OVER_B', r.flow_type='INFLUENCE,ACCESS', r.opacity=3, r.motive='IDEOLOGY', r.phase='WEAPONIZED', r.reliability_score=0.99, r.source_url='https://www.youtube.com/watch?v=6bd4wEtUXZU';

// ════════════════════════════════════════════
// §28 EDGES — MANDELSON ARREST UPDATE
// ════════════════════════════════════════════

MATCH (a {id:'Mandelson'}) SET a.status = 'arrested 2026-02-23', a.note = 'Arrested Feb 23 2026 for misconduct in public office. Passed market-sensitive 2008 bailout info and Downing Street memos to Epstein. Second UK official arrested after Andrew (Feb 19).', a.exposure_level = 5;

// ════════════════════════════════════════════
// §29 EDGES — PALANTIR LEADERSHIP
// ════════════════════════════════════════════

MATCH (a {id:'AlexKarp'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CEO', r.weight=5, r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'ShyamSankar'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CTO', r.weight=5, r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0, r.reliability_score=1.0;
MATCH (a {id:'AlexKarp'}) MATCH (b {id:'Barak'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='named in leaked Barak emails', r.weight=3, r.source='SF Standard leaked emails', r.detail='Appeared alongside Ellison, Catz, Bezos in Barak-Epstein correspondence.', r.edge_function='DEAL_FLOW', r.flow_type='ACCESS', r.opacity=2, r.phase='CROSSOVER', r.reliability_score=0.90;
MATCH (a {id:'ShyamSankar'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='HASC testimony, Maven architect', r.weight=5, r.source='House Armed Services 2024', r.detail='Tens of thousands of users. Lobbied funding increases. Software acquisition reform.', r.edge_function='LEGITIMIZER', r.flow_type='INFLUENCE', r.opacity=0, r.phase='WEAPONIZED', r.reliability_score=0.98;

// ════════════════════════════════════════════
// §30 EDGES — GOOGLE EXIT → PALANTIR CAPTURE → NIMBUS PARADOX
// ════════════════════════════════════════════

MATCH (a {id:'Google'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='initial developer, exited 2018', r.weight=4, r.source='public record', r.detail='Employee revolt → Google walked away from Maven → Palantir captured the contract. Same Google now builds Nimbus for IDF targeting.', r.edge_function='CROSSOVER', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='CROSSOVER', r.reliability_score=1.0;
MATCH (a {id:'Nimbus'}) MATCH (b {id:'Lavender'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='compute infrastructure for AI targeting', r.weight=5, r.source='+972 Magazine', r.detail='Nimbus provides cloud compute for Lavender to ingest civilian data and generate 37,000 bombing targets.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='WEAPONIZED', r.reliability_score=0.92, r.source_url='https://www.972mag.com/lavender-ai-israeli-army-gaza/';
MATCH (a {id:'Nimbus'}) MATCH (b {id:'Gospel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='compute infrastructure for AI targeting', r.weight=5, r.source='+972 Magazine', r.detail='Nimbus provides infrastructure for Gospel to automate physical target recommendations.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='WEAPONIZED', r.reliability_score=0.92, r.source_url='https://www.972mag.com/mass-assassination-factory-israel-calculated-bombing-gaza/';
MATCH (a {id:'GoogleCloud'}) MATCH (b {id:'Nimbus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-provider, IMOD landing zone', r.weight=5, r.source='Guardian, al-Shabaka', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=1, r.reliability_score=0.97;
MATCH (a {id:'AWS'}) MATCH (b {id:'Nimbus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-provider, IDF server farms', r.weight=5, r.source='Guardian, al-Shabaka', r.detail='Dedicated server farm for Military Intelligence Directorate. Absorbed IDF data load after Microsoft restricted access Sept 2025.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=1, r.reliability_score=0.97;
MATCH (a {id:'NoTechForApartheid'}) MATCH (b {id:'GoogleCloud'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='worker resistance, 50+ fired 2024', r.weight=4, r.source='Guardian, public record', r.detail='Sit-ins protesting Nimbus/IDF integration. Company fired protesters.', r.edge_function='SHIELD', r.flow_type='INFLUENCE', r.opacity=0, r.reliability_score=0.98;

// ════════════════════════════════════════════
// §31 EDGES — CERBERUS PORTFOLIO → PENTAGON
// ════════════════════════════════════════════

MATCH (a {id:'CerberusCapital'}) MATCH (b {id:'SubCom'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='owns undersea cable infrastructure', r.weight=5, r.source='Cato Institute', r.detail='Critical military comms infrastructure owned by Feinbergs PE firm.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INFLUENCE', r.opacity=0, r.reliability_score=0.95;
MATCH (a {id:'CerberusCapital'}) MATCH (b {id:'RedRiver'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='portfolio: defense tech', r.weight=4, r.source='Cato Institute', r.edge_function='DEAL_FLOW', r.flow_type='MONEY', r.opacity=0, r.reliability_score=0.95;
MATCH (a {id:'Feinberg'}) MATCH (b {id:'OSC'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='overhauled with ex-Cerberus execs', r.weight=5, r.source='Cato Institute', r.detail='Deputy SecDef placed in charge of Office of Strategic Capital. Brought in former Cerberus executives to manage $200B in deployments over 3 years.', r.edge_function='GATEKEEPER', r.leverage='INSTITUTIONAL', r.flow_type='MONEY,INFLUENCE', r.opacity=0, r.phase='WEAPONIZED', r.reliability_score=0.98, r.source_url='https://www.cato.org/blog/pentagon-sovereign-wealth-fund';

// ════════════════════════════════════════════
// §32 EDGES — OPERATION EPIC FURY COMMAND
// ════════════════════════════════════════════

MATCH (a {id:'DanCaine'}) MATCH (b {id:'EpicFury'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='tactical execution JCS', r.weight=5, r.source='DoD briefing Mar 19 2026', r.detail='5,000-lb penetrators on underground facilities. 120+ naval vessels. Deep airspace penetration.', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0, r.reliability_score=0.95;
MATCH (a {id:'EpicFury'}) MATCH (b {id:'IranWar2026'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='operational name', r.weight=5, r.source='DoD', r.reliability_score=1.0;

// ════════════════════════════════════════════
// §33 EMERGENT PATTERNS (v3.2)
// ════════════════════════════════════════════

// PATTERN N: The Feinberg Bridge (Epstein Files → Pentagon AI) (NEW v3.2)
//   POGO: Feinberg named 20x in DOJ files. Cerberus 360x.
//   Rep. Balint → grilled AG Bondi on House floor Feb 11.
//   Same Feinberg signed Maven Program of Record memo Mar 9.
//   Same Feinberg overhauled Office of Strategic Capital with ex-Cerberus execs.
//   Same Cerberus owns SubCom (undersea cables) + RedRiver (defense tech).
//   This is not a historical connection — it is the CURRENT Deputy SecDef
//   who appears 20 times in the files of an intelligence asset's trafficking
//   operation, now managing $200B+ in military AI infrastructure.

// PATTERN O: The DOJ Audio — Epstein Pitches Palantir to Mossad Handler
//   YouTube 6bd4wEtUXZU = DOJ released audio
//   Epstein: "Peter Thiel is one of the best. He has a company called Palantir.
//   I wanted to talk to him after I talk to you."
//   Speaking TO Ehud Barak (FBI: Epstein trained as spy under Barak)
//   Also discusses Andreessen Horowitz ("the biggest VC in Silicon Valley")
//   This is the intelligence asset brokering the military AI company
//   to his handler. The company is now worth $360B and runs kill chains
//   in the Iran war. The audio is public. The chain is documented.

// PATTERN P: Google's Ethical Paradox (NEW v3.2)
//   2018: Google employees revolt → Google exits Maven
//   2021: Google signs $1.2B Nimbus contract with IDF
//   2024: Google fires 50+ #NoTechForApartheid protesters
//   2025: Guardian reveals Nimbus "winking mechanism" for covert data handoff
//   2026: Nimbus compute powers Lavender (37,000 targets) + Gospel
//   Google said no to Maven. Then built the cloud that runs IDF's version.
//   The ethical exit was a door that opened onto the same room.

// PATTERN Q: The $200B Revolving Door (NEW v3.2)
//   Feinberg (Cerberus founder) → Deputy SecDef
//   Overhauled Office of Strategic Capital with ex-Cerberus executives
//   OSC manages $200B in defense technology deployments
//   Cerberus portfolio: SubCom (military comms), RedRiver (defense tech)
//   Feinberg appears 20x in Epstein DOJ files
//   This is PE capture of the Pentagon budget, executed by someone
//   documented in a trafficking intelligence operation's financial records.

// ════════════════════════════════════════════
// §34 STATISTICS (v3.2 cumulative)
// ════════════════════════════════════════════
// Person nodes: 43 (v3:28, v3.1:+10, v3.2:+5)
// Stakeholder nodes: 49 (v3:31, v3.1:+9, v3.2:+9)
// Total edges: ~160 (v3:100, v3.1:+30, v3.2:+30)
// Patterns: A-Q = 17 emergent patterns
// reliability_score property added to v3.2 edges (0.0-1.0)
// source_url property added to v3.2 edges where available
