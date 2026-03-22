// ═══════════════════════════════════════════════════════════════
// AIWAR v3.1 PATCH — 2026-03-22
// Iran War, Maven Program of Record, Nimbus, Constitutional Crisis,
// Trump 2019 Impeachment actors, Zelenskyy arc
// Sources: Reuters, DoD, Congress.gov, Al Jazeera, NPR, BBC,
//          +972 Magazine, Guardian, Heise, Bloomberg, NATO SHAPE
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §16 PERSON NODES — 2026 WAR CABINET + KEY ACTORS
// ════════════════════════════════════════════

MERGE (p:Person {id: 'Hegseth'}) SET p.name = 'Pete Hegseth', p.role = 'US Secretary of Defense', p.note = 'Oversaw Feb 28 2026 Iran strikes. Stated time of civilian experimentation over. Directed kriegsorientierte Modernisierung.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = 'Confirmation as SecDef — identity fused with war-fighting mission', p.sublimation = 'executing America First military doctrine', p.qualia_mask = 'warrior clarity, mission purity', p.unsublimated = 'managing messaging for undeclared war without congressional authorization', p.exposure_level = 1, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'Rubio'}) SET p.name = 'Marco Rubio', p.role = 'US Secretary of State', p.note = 'Admitted Mar 3 2026: Israel was preparing unilateral strike, US went pre-emptively. "Proactive defensive posture."', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'FIRST_COMPROMISE', p.rubicon_event = 'Public admission Israel forced US into war — cannot unsay', p.sublimation = 'defending US interests proactively', p.qualia_mask = 'strategic foresight, alliance management', p.unsublimated = 'publicly documented that Israel dragged US into undeclared war', p.exposure_level = 2, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'Feinberg'}) SET p.name = 'Steve Feinberg', p.role = 'Deputy Secretary of Defense, Cerberus Capital founder', p.note = 'Signed Mar 9 2026 memo making Maven official Program of Record. Cerberus: $50B+ AUM PE firm. Responsibility transfer from NGA to Pentagon AI office within 30 days.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.rubicon_event = 'Signed memo formalizing $1.23B+ AI weapons system as permanent military infrastructure', p.sublimation = 'modernizing military through private sector efficiency', p.qualia_mask = 'institutional competence, PE-style execution', p.unsublimated = 'PE billionaire embedding his sectors technology as permanent military dependency', p.exposure_level = 1, p.node_function = 'BROKER';

MERGE (p:Person {id: 'Netanyahu'}) SET p.name = 'Benjamin Netanyahu', p.role = 'Israeli Prime Minister', p.note = 'Pushed ground component for Iran. Claimed Iran has no enrichment or missile capability (contradicted by IAEA). Israel struck first, US followed per Rubio admission.', p.receptor = 'SURVIVAL', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = 'protecting Israel from existential threat', p.qualia_mask = 'strategic necessity, national survival', p.unsublimated = 'forced US into undeclared war by initiating strikes US then had to join', p.exposure_level = 1, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'MojtabaKhamenei'}) SET p.name = 'Mojtaba Khamenei', p.role = 'Iranian Supreme Leader (since Mar 8 2026)', p.note = 'Elected by Assembly of Experts to succeed father killed in Feb 28 strikes. Not seen in public. Called strikes gross miscalculation. Over 1400 killed in Iran.', p.receptor = 'SURVIVAL', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.exposure_level = 0, p.node_function = 'PRINCIPAL';

MERGE (p:Person {id: 'CameronStanley'}) SET p.name = 'Cameron Stanley', p.role = 'DoD Chief Digital and AI Officer (CDAO)', p.note = 'Oversaw Maven field testing. 80% success target, iterate from soldier feedback. No officer doubts next war is AI+data. Potomac Officers Club AI Summit.', p.receptor = 'MISSION', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.sublimation = 'building the future of warfare through data', p.qualia_mask = 'technical mastery, institutional transformation', p.unsublimated = 'normalizing 80% accuracy threshold for AI-assisted kill chains', p.exposure_level = 0, p.node_function = 'ENABLER';

MERGE (p:Person {id: 'Zelenskyy'}) SET p.name = 'Volodymyr Zelenskyy', p.role = 'President of Ukraine', p.note = 'Pressured by Trump 2019 (impeachment trigger). Wartime leader 2022+. Feb 2025 Oval Office blowup. Dec 2025 Mar-a-Lago 90% peace deal. Now offering drone expertise for Iran war. Maven tested in Ukraine first.', p.receptor = 'SURVIVAL', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = '2022 invasion — became wartime leader, no return possible', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'dependent on US leverage while navigating between being asset and sovereign', p.exposure_level = 0, p.node_function = 'PRINCIPAL';

// ── 2019 Impeachment Actors ──
MERGE (p:Person {id: 'Giuliani'}) SET p.name = 'Rudy Giuliani', p.role = 'Trump personal lawyer, former NYC mayor', p.note = 'Ran shadow foreign policy channel to pressure Ukraine. Got Yovanovitch fired. Directed Parnas/Fruman. Bolton: drug deal. Refused House subpoena.', p.receptor = 'DOMINANCE', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = 'Shadow diplomacy operation — professional identity fused with Trump defense', p.sublimation = 'investigating legitimate corruption on behalf of client', p.qualia_mask = 'legal warrior, Americas mayor', p.unsublimated = 'personal emissary turning foreign policy into political weapon for presidents reelection', p.exposure_level = 4, p.node_function = 'BROKER';

MERGE (p:Person {id: 'Sondland'}) SET p.name = 'Gordon Sondland', p.role = 'former US Ambassador to EU', p.note = 'Testified quid pro quo was as simple as 2+2=4. Amended testimony to confirm linkage. Fired post-acquittal.', p.receptor = 'STATUS', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'FIRST_COMPROMISE', p.rubicon_event = 'Delivered quid pro quo message to Ukraine at Trumps direction', p.sublimation = 'following presidential direction as ambassador', p.qualia_mask = 'diplomatic service, inner circle access', p.unsublimated = 'conduit for extortion of foreign government for domestic political gain', p.exposure_level = 3, p.node_function = 'ASSET';

MERGE (p:Person {id: 'Parnas'}) SET p.name = 'Lev Parnas', p.role = 'Giuliani associate, fixer', p.note = 'Handwritten note: get Zalensky to Annouce Biden case. Arrested Oct 2019 on campaign finance charges. Document dump Jan 2020. Testified under oath Mar 2024 Biden claims fabricated.', p.receptor = 'STATUS', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'LOCKED', p.rubicon_event = 'Arrest on federal charges — flipped, became cooperating witness', p.sublimation = 'helping investigate corruption', p.qualia_mask = 'insider access, being useful', p.unsublimated = 'fixer who delivered extortion messages and proved the scheme reached the top', p.exposure_level = 4, p.node_function = 'ASSET';

// ════════════════════════════════════════════
// §17 STAKEHOLDER NODES — MILITARY AI + GEOPOLITICAL
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'Maven'}) SET s.name = 'Maven Smart System (MSS)', s.type = 'AI weapons platform', s.note = 'Pentagon Program of Record since Mar 9 2026. $480M (2024) + $750M (May 2025) = $1.23B+. 20K+ DoD users. Target ID, kill-chain acceleration, real-time analysis. Tested in Ukraine. Deployed in Iran Feb 28 2026. Feinberg memo transfers from NGA to CDAO.';
MERGE (s:Stakeholder {id: 'MavenNATO'}) SET s.name = 'Maven Smart System NATO (MSS NATO)', s.type = 'AI weapons platform', s.note = 'NATO variant since 2025. Kampfraumwahrnehmung, Logistik, Zielerfassung. LLMs + generative AI + ML + Geheimdienstinformationen.';
MERGE (s:Stakeholder {id: 'CerberusCapital'}) SET s.name = 'Cerberus Capital Management', s.type = 'PE firm', s.note = 'Founded by Feinberg. $50B+ AUM. Defense sector investments. Feinberg now Deputy SecDef.';
MERGE (s:Stakeholder {id: 'IRGC'}) SET s.name = 'Islamic Revolutionary Guard Corps', s.type = 'military', s.note = 'Primary target of Feb 28 strikes. Threatened complete Hormuz closure. 500+ ballistic missiles, 2000 drones fired since Feb 28.';
MERGE (s:Stakeholder {id: 'StraitOfHormuz'}) SET s.name = 'Strait of Hormuz', s.type = 'strategic asset', s.note = '20% world oil transit. Effectively shut since war began. 3000 vessels stranded. Trump 48hr ultimatum Mar 22. IEA: largest supply disruption in history.';
MERGE (s:Stakeholder {id: 'IranWar2026'}) SET s.name = '2026 Iran War', s.type = 'military conflict', s.note = 'Started Feb 28 2026 with surprise US-Israeli strikes killing Khamenei. No congressional authorization. 4th week. 1400+ killed Iran, 1000+ Lebanon. $200B funding request. War Powers violated.';
MERGE (s:Stakeholder {id: 'Nimbus'}) SET s.name = 'Project Nimbus', s.type = 'cloud/AI military infrastructure', s.note = '$1.2B Google+Amazon sovereign cloud for Israeli govt + IDF (2021, 7yr). AI/ML services. Linked to Lavender/Gospel targeting systems in Gaza. Winking mechanism.';
MERGE (s:Stakeholder {id: 'IDF'}) SET s.name = 'Israel Defense Forces', s.type = 'military', s.note = 'Primary Nimbus beneficiary. AI targeting via Lavender/Gospel programs. Joint Iran operations with US.';
MERGE (s:Stakeholder {id: 'USCongress'}) SET s.name = 'US Congress', s.type = 'legislature', s.note = 'War Powers debate. H.Res.353 + H.Res.537 impeachment resolutions tabled by GOP majority. $200B war funding request pending.';

// ════════════════════════════════════════════
// §18 EDGES — IRAN WAR COMMAND CHAIN
// ════════════════════════════════════════════

MATCH (a {id:'Trump'}) MATCH (b {id:'Hegseth'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed SecDef', r.weight=4, r.source='White House 2025', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0, r.phase='LOCKED';
MATCH (a {id:'Trump'}) MATCH (b {id:'Rubio'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed SecState', r.weight=4, r.source='White House 2025', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0;
MATCH (a {id:'Trump'}) MATCH (b {id:'Feinberg'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed Deputy SecDef', r.weight=4, r.source='White House 2025', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0;
MATCH (a {id:'Trump'}) MATCH (b {id:'Netanyahu'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='joint Iran strikes Feb 28 2026', r.weight=5, r.source='DoD, Al Jazeera, NPR Mar 2026', r.detail='Surprise US-Israeli strikes killed Khamenei. Rubio admitted Israel was about to strike unilaterally, US went pre-emptively.', r.edge_function='DEAL_FLOW,INTELLIGENCE', r.leverage='MUTUAL', r.flow_type='INFLUENCE,INTELLIGENCE', r.opacity=1, r.motive='IDEOLOGY', r.phase='LOCKED', r.crossover_event='Rubio admission: Israel forced US hand — tail wagging dog documented', r.conversion_agent='INSTITUTIONAL';
MATCH (a {id:'Trump'}) MATCH (b {id:'IranWar2026'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='ordered strikes without congressional auth', r.weight=5, r.source='DoD, Congress.gov', r.detail='No declaration of war. No AUMF. War Powers Resolution violated. $200B funding request. 48hr Hormuz ultimatum.', r.edge_function='COVER_UP', r.flow_type='INFLUENCE', r.opacity=0, r.motive='AMBITION', r.phase='LOCKED';
MATCH (a {id:'Hegseth'}) MATCH (b {id:'IranWar2026'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='directed operations', r.weight=5, r.source='DoD Mar 2026', r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE', r.opacity=0;
MATCH (a {id:'Netanyahu'}) MATCH (b {id:'IranWar2026'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='initiated strikes Israel forced US into', r.weight=5, r.source='Rubio Mar 3 admission, Al Jazeera', r.detail='Israel preparing unilateral action. US joined pre-emptively. Ground component pushed by Netanyahu.', r.edge_function='INTELLIGENCE', r.leverage='A_OVER_B', r.flow_type='INFLUENCE,INTELLIGENCE', r.opacity=1, r.motive='IDEOLOGY', r.phase='WEAPONIZED';
MATCH (a {id:'Netanyahu'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='PM directs IDF', r.weight=4;
MATCH (a {id:'Netanyahu'}) MATCH (b {id:'Barak'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='Israeli political network', r.weight=2, r.detail='Both former PMs, shared intelligence establishment, Barak in Epstein correspondence';

// ════════════════════════════════════════════
// §19 EDGES — MAVEN / PALANTIR / NIMBUS CHAIN
// ════════════════════════════════════════════

MATCH (a {id:'Feinberg'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='signed Program of Record memo', r.weight=5, r.source='Reuters Mar 20 2026', r.detail='Transfers Maven from NGA to Pentagon CDAO within 30 days. Secures long-term funding across all branches.', r.edge_function='DEAL_FLOW', r.leverage='INSTITUTIONAL', r.flow_type='MONEY,INFLUENCE', r.opacity=0, r.motive='AMBITION';
MATCH (a {id:'Feinberg'}) MATCH (b {id:'CerberusCapital'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='founder', r.weight=3, r.edge_function='DEAL_FLOW', r.flow_type='MONEY', r.opacity=0;
MATCH (a {id:'Palantir'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='primary developer, $1.23B+ contracts', r.weight=5, r.source='DoD, SEC filings', r.detail='$480M (2024) + $750M (May 2025). Kill-chain acceleration, target ID, real-time analysis.', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0, r.motive='GREED';
MATCH (a {id:'Maven'}) MATCH (b {id:'IranWar2026'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='deployed for targeting in Iran ops', r.weight=5, r.source='DoD, Reuters Mar 2026', r.detail='AI target identification and kill-chain acceleration from Feb 28 2026.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=0;
MATCH (a {id:'Maven'}) MATCH (b {id:'DOD'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Program of Record, all branches', r.weight=5, r.source='Reuters Mar 2026', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=0;
MATCH (a {id:'MavenNATO'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='NATO variant since 2025', r.weight=4, r.source='NATO SHAPE', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0;
MATCH (a {id:'CameronStanley'}) MATCH (b {id:'Maven'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='CDAO oversaw field testing', r.weight=3, r.source='Potomac Officers Club AI Summit, Govcon Wire', r.detail='80% success target. Soldier feedback loop. Every officer believes next war is AI+data.';

// ── Nimbus (Google+Amazon→IDF) ──
MATCH (a {id:'Google'}) MATCH (b {id:'Nimbus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-developer, sovereign cloud', r.weight=4, r.source='Guardian, +972 Magazine', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=1;
MATCH (a {id:'Amazon'}) MATCH (b {id:'Nimbus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-developer AWS', r.weight=4, r.source='Guardian, Reuters', r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INTELLIGENCE', r.opacity=1;
MATCH (a {id:'Nimbus'}) MATCH (b {id:'IDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='sovereign cloud+AI for IDF', r.weight=5, r.source='+972 Magazine, Guardian', r.detail='$1.2B contract. AI/ML services. Linked to Lavender/Gospel targeting. Winking mechanism.', r.edge_function='DEAL_FLOW,INTELLIGENCE', r.flow_type='MONEY,INTELLIGENCE', r.opacity=1;
MATCH (a {id:'Netanyahu'}) MATCH (b {id:'Nimbus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='oversaw rollout', r.weight=3, r.source='Israeli govt statements';

// ── The Epstein→Palantir→Maven→Iran pipeline (documented edges only) ──
// These edges already exist in v3 but the chain is now operational:
// Epstein──$40M──→ValarVentures←──Thiel──→Palantir──→Maven──→IranWar2026
// Barak──"look at Palantir"──→DOJ recordings
// Mandelson──→GlobalCounsel──→Palantir UK contracts
// UK MoD──→£1.5B Maven partnership (tested in Ukraine)

// ════════════════════════════════════════════
// §20 EDGES — TRUMP-ZELENSKYY ARC (2019→2026)
// ════════════════════════════════════════════

MATCH (a {id:'Trump'}) MATCH (b {id:'Zelenskyy'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='pressure campaign→impeachment→war partner', r.weight=5, r.source='House Intel Committee 2019, DoD 2026', r.detail='Jul 2019: I would like you to do us a favor though. $391M aid withheld. Impeached Dec 2019. Feb 2025: Oval Office blowup. Dec 2025: Mar-a-Lago 90% peace deal. 2026: Zelenskyy offers drone expertise for Iran war.', r.edge_function='DEAL_FLOW,KOMPROMAT', r.leverage='A_OVER_B', r.flow_type='INFLUENCE,MONEY,INTELLIGENCE', r.opacity=1, r.motive='AMBITION', r.phase='LOCKED', r.crossover_event='Jul 25 2019 call — do us a favor though', r.conversion_agent='SELF';
MATCH (a {id:'Giuliani'}) MATCH (b {id:'Trump'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='personal lawyer, shadow diplomacy operator', r.weight=5, r.source='House Intel Committee 2019', r.detail='Ran irregular channel to pressure Ukraine. Got Yovanovitch fired. Directed Parnas/Fruman. Trump: speak to Rudy.', r.edge_function='GATEKEEPER,DEAL_FLOW', r.leverage='MUTUAL', r.flow_type='INFLUENCE,ACCESS', r.opacity=2, r.motive='LOYALTY', r.phase='LOCKED';
MATCH (a {id:'Giuliani'}) MATCH (b {id:'Zelenskyy'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='pressure campaign via irregular channel', r.weight=4, r.source='House testimony 2019', r.detail='Giuliani letter May 2019: requesting meeting as personal counsel to President Trump with his knowledge and consent.', r.edge_function='KOMPROMAT', r.leverage='A_OVER_B', r.flow_type='INFLUENCE', r.opacity=2, r.motive='AMBITION', r.phase='WEAPONIZED';
MATCH (a {id:'Sondland'}) MATCH (b {id:'Zelenskyy'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='delivered quid pro quo message', r.weight=4, r.source='Sondland testimony Nov 20 2019', r.detail='2+2=4. Ukraine must announce investigations for WH meeting + aid release.', r.edge_function='KOMPROMAT', r.leverage='A_OVER_B', r.flow_type='INFLUENCE', r.opacity=1;
MATCH (a {id:'Parnas'}) MATCH (b {id:'Giuliani'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='fixer, document provider', r.weight=4, r.source='DOJ, House Intel Jan 2020', r.detail='Handwritten note: get Zalensky to Annouce Biden case. Delivered messages. Arrested Oct 2019. Document dump proved scheme.', r.edge_function='GATEKEEPER', r.flow_type='DOCUMENTS,ACCESS', r.opacity=2, r.motive='LOYALTY', r.phase='LOCKED';

// ════════════════════════════════════════════
// §21 EDGES — CONSTITUTIONAL CRISIS
// ════════════════════════════════════════════

MATCH (a {id:'Trump'}) MATCH (b {id:'USCongress'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='War Powers violation, impeachment resolutions blocked', r.weight=4, r.source='Congress.gov, Polymarket Mar 2026', r.detail='H.Res.353 (Thanedar) + H.Res.537 (Green) cite Iran as impeachable. Tabled by GOP. Polymarket 11% near-term. Kalshi 67% by 2028. Midterms key.', r.edge_function='COVER_UP', r.leverage='INSTITUTIONAL', r.flow_type='INFLUENCE', r.opacity=0, r.motive='FEAR', r.phase='LOCKED';

// ════════════════════════════════════════════
// §22 EMERGENT PATTERNS (v3.1)
// ════════════════════════════════════════════

// PATTERN I: The Epstein→Maven Kill Chain (NEW v3.1)
//
//   Epstein──$40M──→ValarVentures←──Thiel──→Palantir──develops──→Maven
//   Barak──"look at Palantir"──→(DOJ recording)
//   Mandelson──leaked UK secrets to Epstein──→lobbied Palantir into UK
//   UK MoD──£1.5B──→Maven (tested in Ukraine first)
//   Feinberg──signed memo──→Maven = Pentagon Program of Record
//   Maven──deployed──→2026 Iran War (targeting, kill-chain acceleration)
//
//   The AI system now running US/NATO military kill chains was co-funded
//   through a Mossad-linked intelligence asset's investment fund, pushed
//   by an Israeli PM/handler in DOJ recordings, and lobbied into allied
//   governments by a politician who leaked those governments' classified
//   documents to the same intelligence asset. This is no longer historical
//   analysis — it is the active command infrastructure of a live war.

// PATTERN J: Israel Forcing US Into War (NEW v3.1)
//
//   Netanyahu──prepared unilateral strike──→Iran
//   Rubio──admitted publicly Mar 3──→"we went proactively in defense"
//   Trump──ordered US strikes Feb 28──→no congressional authorization
//   Critics (Al Jazeera)──→"Israel forced US into war"
//   H.Res.353 + H.Res.537──→cite War Powers violation
//   GOP majority──→blocks all resolutions
//
//   leverage_direction on Netanyahu→IranWar: A_OVER_B
//   Israel initiated. US followed. Congress excluded.
//   Same pattern as Barak→Epstein: handler sets agenda, asset executes.

// PATTERN K: The Zelenskyy Arc as Network Evolution (NEW v3.1)
//
//   2019: Trump pressures Zelenskyy (impeachment trigger)
//   2022: Zelenskyy becomes wartime leader
//   2024: Maven tested in Ukraine
//   2025: Oval Office blowup → Mar-a-Lago 90% peace deal
//   2026: Zelenskyy offers drone expertise for Iran war
//         Maven (Ukraine-tested) becomes US standard doctrine
//
//   Ukraine was the testing ground. Iran is the production deployment.
//   Zelenskyy went from extortion target to military technology testbed
//   to potential junior war partner — all within one graph traversal.

// PATTERN L: Nimbus + Maven = Dual AI Kill Infrastructure (NEW v3.1)
//
//   Maven (Palantir) → US/NATO targeting → Iran
//   Nimbus (Google+Amazon) → IDF targeting → Gaza (Lavender/Gospel)
//   Both: US Big Tech → military AI → active conflicts
//   Both: worker protests, ethical objections overridden
//   Both: "humans retain control" — at 20-second approval rates
//   Anthropic Claude integrated into Maven (per Bloomberg)
//   while Anthropic publicly clashes with Pentagon on ethics
//
//   The same infrastructure serves both kill chains.
//   The same companies build both targeting systems.
//   The same intelligence network (Epstein→Barak→Israel) benefits from both.

// PATTERN M: War as Distraction Engine (NEW v3.1)
//
//   Feb 19: Prince Andrew arrested (Epstein files)
//   Feb 20: Trump calls it "very sad thing"
//   Feb 28: US-Israeli strikes begin (9 days later)
//   Mar 2-8: #EpsteinWarDistraction trends on X
//   Mar 9: Maven becomes Program of Record (Epstein-connected co-funding buried)
//   Mar 22: Hormuz crisis, oil shock, Iran missiles on Israel
//
//   YouGov Mar 10-12: 40% of US adults believe conflict timed for distraction
//   @RepThomasMassie Mar 4: "War Powers ignored. Epstein news disappears."
//   @ggreenwald Mar 6: noted 9-day gap, "classic distraction politics"
//
//   No causal proof. But the graph structure shows: every node with
//   LOCKED edges benefits from the distraction. The war serves the
//   thermodynamics of silence — it changes every node's exit-cost calculation
//   by making Epstein exposure less newsworthy than incoming missiles.

// ════════════════════════════════════════════
// §23 STATISTICS (v3.1)
// ════════════════════════════════════════════

// Person nodes: 38 (v3:28 + v3.1: Hegseth, Rubio, Feinberg, Netanyahu,
//               MojtabaKhamenei, CameronStanley, Zelenskyy, Giuliani,
//               Sondland, Parnas)
// Stakeholder nodes: 40 (v3:31 + v3.1: Maven, MavenNATO, CerberusCapital,
//                    IRGC, StraitOfHormuz, IranWar2026, Nimbus, IDF, USCongress)
// Total edges: ~130 (v3:100 + v3.1:~30)
// Patterns: A-H (v3) + I-M (v3.1) = 13 emergent patterns
