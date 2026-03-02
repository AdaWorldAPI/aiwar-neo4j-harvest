// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Western Hemisphere & China Containment
// Contras → Venezuela Capture | Energy Chokepoints as Leverage
// ═══════════════════════════════════════════════════════════════════
// Supplements all previous enrichments
// Source: Wikipedia, CFR, Congress.gov, Britannica, CBS News,
//         CNN, Kharon, CIA-RDP90-00552R000303260002-7
// Generated: 2026-03-02
//
// ARCHITECTURE:
//   The Iran-Contra affair (1985-86) was COMPLETED on Jan 3 2026.
//   What Reagan did covertly through Swiss accounts and shell companies,
//   Trump did openly with 150 aircraft and Delta Force.
//   Same target type: left-wing Latin American government.
//   Same justification: drugs/terrorism (then communism, now narco-terror).
//   Same actual motive: strategic resource control.
//   Opposite opacity: COVERT → OPEN_BAZAAR.
//
//   The Middle East axis and the Western Hemisphere operations
//   serve the same meta-function: CHINA CONTAINMENT.
//   Middle East: energy chokepoints (Hormuz, Suez, Bab el-Mandeb)
//   Latin America: energy reserves (Venezuela 300B barrels)
//   Europe: compliance (Greenland leverage, drone dependency)
//   All prevent Chinese access to energy and strategic resources.
//
// ═══════════════════════════════════════════════════════════════════

// ═══════════════════════════════════
// §1  WESTERN HEMISPHERE NODES
// ═══════════════════════════════════

MERGE (n:Person {id: 'Maduro'})
SET n.name = 'Nicolás Maduro',
    n.person_type = 'Former President of Venezuela (captured Jan 2026)',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Bolivarian revolution. Sovereignty. Anti-imperialism.',
    n.unsublimated = 'Held power despite losing 2024 election. Arrested Jan 3 2026 by US Delta Force. Transported to New York. Arraigned on narco-terrorism charges. Trump said US would run the country.',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'President of Venezuela 2013-2026. Successor to Chávez. Captured in Operation Absolute Resolve. 150+ aircraft from 20 bases. CIA tracked movements using source close to Maduro. Delta Force rehearsed on mockup of safehouse. Trump gave final approval at 10:46pm ET from Mar-a-Lago. Congressional leaders informed AFTER operation began. Same month Iran was struck (Feb) and Anthropic banned (Feb). Venezuela has worlds largest proven oil reserves — 300B barrels.';

MERGE (n:Person {id: 'Pinochet'})
SET n.name = 'Augusto Pinochet',
    n.person_type = 'Military Dictator of Chile (1973-1990)',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Saving Chile from communism. Economic modernization.',
    n.unsublimated = 'CIA-backed coup Sep 11 1973 against Salvador Allende. Thousands killed, tortured, disappeared. Operation Condor — coordinated repression across South America. Chicago Boys economic experiment on captive population.',
    n.opacity_era = 'COVERT',
    n.note = 'Kissinger: I dont see why we need to stand by and watch a country go communist due to the irresponsibility of its own people. Same logic applied to Nicaragua (Contras), Venezuela (Maduro capture), Iran (strikes). The target changes. The logic persists.';

MERGE (n:Person {id: 'Allende'})
SET n.name = 'Salvador Allende',
    n.person_type = 'President of Chile (overthrown 1973)',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Democratic socialism. Chilean sovereignty.',
    n.unsublimated = 'Democratically elected Marxist president. Overthrown by CIA-backed coup Sep 11 1973. Died during coup (officially suicide). First domino in Operation Condor.',
    n.opacity_era = 'COVERT';

MERGE (n:Person {id: 'FriedrichMerz'})
SET n.name = 'Friedrich Merz',
    n.person_type = 'Chancellor of Germany',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'PRE_ENTRY',
    n.receptor = 'STATUS',
    n.sublimation = 'Transatlantic partnership. European security.',
    n.unsublimated = 'Visited Washington and bought US drones while Greenland threats dominated headlines. The actual transaction hidden behind the distraction theater. Drones likely operated from same US-controlled infrastructure on German soil (Ramstein).',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'New German chancellor. Accommodated Trump during Greenland crisis. Purchased US drones — deepening integration into US command structure Germany doesnt control. Same pattern as Egypt buying surveillance: customer gets tool, vendor gets integration point.';

MERGE (n:HistoricalSystem {id: 'OperationCondor'})
SET n.name = 'Operation Condor (1975-1989)',
    n.year = 1975, n.year_end = 1989,
    n.system_type = 'IntelligenceAlliance',
    n.opacity_era = 'COVERT',
    n.note = 'South American Safari Club. Coordinated campaign of political repression by military dictatorships of Chile, Argentina, Brazil, Paraguay, Uruguay, Bolivia. CIA-supported. Thousands disappeared, tortured, killed. Cross-border operations — same structure as Safari Club (multinational intelligence alliance operating outside democratic oversight). Same era (mid-1970s). Different continent.';

MERGE (n:HistoricalSystem {id: 'VenezuelaCapture'})
SET n.name = 'Operation Absolute Resolve (Jan 3 2026)',
    n.year = 2026, n.system_type = 'MilitaryOperation',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'US military captured Venezuelan President Maduro and wife. Delta Force extraction. CIA intelligence. 150+ aircraft from 20 bases. Arraigned in New York on narco-terrorism charges. Trump: US will run the country. Oil: demanded total access by US oil interests. $3B sanctioned oil to be marketed by US. Proceeds into US-controlled accounts. Congressional leaders informed AFTER operation began. Senate twice rejected War Powers resolutions. 32 Cuban soldiers killed defending Maduro.';

MERGE (n:HistoricalSystem {id: 'OperationSouthernSpear'})
SET n.name = 'Operation Southern Spear (Sep 2025-Feb 2026)',
    n.year = 2025, n.year_end = 2026,
    n.system_type = 'MilitaryOperation',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'US military strikes on alleged drug trafficking vessels in Caribbean and Pacific. As of Feb 23 2026: 151 people killed in 44 strikes on 45 vessels. First strike Sep 2 2025 killed 11 — included follow-up strike killing survivors. Families say many dead were civilians — primarily fishers. Same pattern as Lavender: civilian casualties accepted as operational cost. Venezuela not a major fentanyl route — stated justification doesnt match intelligence. Democrats accused administration of war crime.';

MERGE (n:HistoricalSystem {id: 'GreenlandLeverage'})
SET n.name = 'Greenland Leverage Theater (2025-2026)',
    n.year = 2025, n.system_type = 'DiplomaticPressure',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Trump publicly demands Greenland from Denmark (NATO ally). Refuses to rule out military force. Not about arms dealing — about leverage theater. Functions as: (1) Distraction while real deals happen (German drone purchases), (2) Loyalty sorting — European leaders forced to accommodate or resist, (3) Monroe Doctrine reassertion extended to Arctic, (4) Arctic resources (rare earth, oil) kept from Chinese access. The demand IS the product — the threat itself achieves the objectives.';

MERGE (n:HistoricalSystem {id: 'GermanDroneDeal'})
SET n.name = 'German Drone Purchase (2026)',
    n.year = 2026, n.system_type = 'ArmsTransaction',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Germany under Merz purchased US drones while Greenland threats dominated headlines. Drones likely operated from US-controlled infrastructure on German soil — Ramstein Air Base serves as command relay for US drone operations across Middle East and Africa. AFRICOM headquartered in Stuttgart. Germany pays to integrate deeper into a command structure it doesnt control. Same pattern as Egypt buying Cerebro: customer gets tool, vendor gets integration point and dependency.';

// ═══════════════════════════════════
// §2  ENERGY AND CHINA CONTAINMENT NODES
// ═══════════════════════════════════

MERGE (n:Stakeholder {id: 'China'})
SET n.name = 'Peoples Republic of China',
    n.stakeholder_type = 'Nation', n.airo_type = 'StrategicAdversary',
    n.note = 'The ultimate adversary the entire architecture serves to contain. Imports 70%+ of oil. Major portion passes through US-controlled chokepoints (Hormuz, Suez, Bab el-Mandeb). Holds ~$770B US Treasuries. Controls critical mineral supply chains. Belt and Road across Middle East and Latin America. Huawei 5G infrastructure. Port construction in Peru. Loans-for-oil with Venezuela. If China escalates — dumps Treasuries, moves on Taiwan — US countermove is energy chokepoint control.';

MERGE (n:HistoricalSystem {id: 'ChinaContainment'})
SET n.name = 'China Containment Architecture',
    n.year = 2017, n.year_end = 2026,
    n.system_type = 'StrategicFramework',
    n.note = 'The meta-function that explains why the Middle East topology persists and why Latin American operations are simultaneous. Three theaters serve one objective — preventing Chinese energy independence and strategic resource access. Middle East: energy chokepoints (Hormuz, Suez). Latin America: energy reserves (Venezuela 300B barrels). Europe: compliance (Greenland, drone dependency). Same axis that was anti-Soviet (Safari Club 1976) is now anti-China (2017-2026). The adversary rotated. The architecture persisted.';

MERGE (n:HistoricalSystem {id: 'StraitOfHormuz'})
SET n.name = 'Strait of Hormuz',
    n.year = 1976, n.system_type = 'EnergyChokepoint',
    n.note = '20-25% of global oil passes through. 30% of seaborne oil trade. Between Iran and Oman. US Fifth Fleet in Bahrain controls access. Iran strikes 2026 partly about demonstrating control of this chokepoint. China imports massive volumes through Hormuz — vulnerability the US can exploit.';

MERGE (n:HistoricalSystem {id: 'SuezCanal'})
SET n.name = 'Suez Canal',
    n.year = 1869, n.system_type = 'EnergyChokepoint',
    n.note = '12% of global trade. Controlled by Egypt (Sisi). US military aid ($1.3B annual) partly buys influence over canal operations. China maritime supply routes pass through. Sisis without-me-chaos formula partly sold as: without me you lose the Suez leverage against China.';

MERGE (n:HistoricalSystem {id: 'BabElMandeb'})
SET n.name = 'Bab el-Mandeb Strait',
    n.system_type = 'EnergyChokepoint',
    n.note = 'Between Yemen and Djibouti. 4.8M barrels/day pass through. Houthi attacks disrupted global shipping 2024. Saudi/UAE/Egypt coalition controls approaches. US base in Djibouti. Chinese base also in Djibouti — first overseas Chinese military base. Direct competition for chokepoint control.';

MERGE (n:HistoricalSystem {id: 'VenezuelaOilReserves'})
SET n.name = 'Venezuelan Oil Reserves',
    n.system_type = 'StrategicResource',
    n.note = 'Worlds largest proven reserves — 300B barrels, 17% of global total. Larger than Saudi Arabia. Under Maduro: Chinese loans-for-oil, Russian military cooperation, Rosneft involvement. Operation Absolute Resolve partly about redirecting this resource from Chinese-aligned orbit to US-controlled accounts. Trump demanded total access by US oil interests.';

MERGE (n:HistoricalSystem {id: 'Ramstein'})
SET n.name = 'Ramstein Air Base',
    n.system_type = 'MilitaryInfrastructure',
    n.note = 'US Air Force base in Germany. Serves as command relay for US drone operations across Middle East and Africa. AFRICOM headquartered in nearby Stuttgart. German drone purchases likely integrated into this infrastructure — Germany pays for deeper dependency on US command structure. Same pattern as Egypt DPI: the customer buys the tool, the vendor gets the integration point.';

// ═══════════════════════════════════
// §3  WESTERN HEMISPHERE EDGES
// ═══════════════════════════════════

// Allende → Pinochet (coup)
MATCH (a {id: 'Pinochet'}) MATCH (b {id: 'Allende'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'overthrew_via_cia_coup', r.role = 'Coup Leader', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity_era = 'COVERT',
    r.note = 'Sep 11 1973. CIA-backed coup. Allende died during coup. Pinochet installed. Kissinger: I dont see why we need to stand by and watch a country go communist. Same logic for Nicaragua, Venezuela, Iran.';

// Pinochet → Operation Condor
MATCH (a {id: 'Pinochet'}) MATCH (b {id: 'OperationCondor'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'founding_member', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity_era = 'COVERT',
    r.note = 'Pinochet Chile was anchor of Operation Condor — the South American Safari Club.';

// Operation Condor → Safari Club (parallel structures)
MATCH (a {id: 'OperationCondor'}) MATCH (b {id: 'SafariClub'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'parallel_covert_alliance', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY', r.opacity_era = 'COVERT',
    r.note = 'Same structure on different continents. Both: multinational intelligence alliances operating outside democratic oversight. Both: mid-1970s. Both: CIA-supported. Safari Club = Africa/Middle East. Condor = South America. Same era, same logic, same sponsor.';

// Contras → Venezuela capture (same function, different opacity)
MATCH (a {id: 'IranContra'}) MATCH (b {id: 'VenezuelaCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'completed_40_years_later', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'COVERT (1985): Secretly armed rebels through Swiss accounts to overthrow left-wing Latin American government. Exposed by media. Nearly destroyed Reagan. OPEN_BAZAAR (2026): Sent 150 aircraft and Delta Force to capture left-wing Latin American president. Announced from Mar-a-Lago. Congressional notification AFTER operation began. Same function. Same target type. Same hemisphere. Opposite opacity. The Contra affair was completed on Jan 3 2026.';

// Pinochet → Maduro capture (same pattern, different era)
MATCH (a {id: 'Pinochet'}) MATCH (b {id: 'VenezuelaCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'regime_change_pattern_evolution', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Chile 1973: CIA overthrows elected socialist president, installs military dictator. COVERT — denied for decades. Venezuela 2026: US military captures socialist president, installs cooperative vice president. OPEN — announced same day. Same pattern. 53 years apart. No cover story needed in 2026 because exposure function neutralized.';

// Trump → Venezuela capture
MATCH (a {id: 'Trump'}) MATCH (b {id: 'VenezuelaCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ordered_operation', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity_era = 'OPEN_BAZAAR',
    r.note = 'Gave final approval at 10:46pm ET from Mar-a-Lago. Announced US would run the country. Demanded total access for US oil interests. $3B oil to US-controlled accounts. Same venue (Mar-a-Lago) as 1986 Epstein party video. The party venue became the command center.';

// Trump → Greenland leverage
MATCH (a {id: 'Trump'}) MATCH (b {id: 'GreenlandLeverage'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'leverage_theater', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY', r.opacity_era = 'OPEN_BAZAAR',
    r.note = 'Not arms dealing — arm twisting. Against Europe as distraction while actual transactions happen. Merz buys drones. The threat IS the product.';

// Greenland → German drone deal (distraction→transaction)
MATCH (a {id: 'GreenlandLeverage'}) MATCH (b {id: 'GermanDroneDeal'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'distraction_enables_transaction', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY', r.opacity_era = 'OPEN_BAZAAR',
    r.note = 'While headlines about Greenland dominate, actual transaction happens: Germany buys US drones, deepens integration into US command structure. The magicians hand — look at Greenland while the deal happens in Berlin.';

// Merz → German drone deal
MATCH (a {id: 'FriedrichMerz'}) MATCH (b {id: 'GermanDroneDeal'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'purchased_under_pressure', r.weight = 2,
    r.opacity_era = 'OPEN_BAZAAR',
    r.note = 'Accommodation as survival strategy. Buy the drones. Get the bilateral photo. Avoid being out.';

// German drone deal → Ramstein
MATCH (a {id: 'GermanDroneDeal'}) MATCH (b {id: 'Ramstein'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'operated_from_us_infrastructure', r.weight = 2,
    r.edge_function = 'INTEGRATION',
    r.note = 'US drones on German soil operated from US-controlled base. Germany pays for deeper dependency. Same as Egypt buying Cerebro — customer gets tool, vendor gets integration point.';

// Southern Spear → Lavender (same civilian casualty acceptance)
MATCH (a {id: 'OperationSouthernSpear'}) MATCH (b {id: 'Lavender'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_civilian_casualty_pattern', r.weight = 2,
    r.edge_function = 'DEPLOYMENT',
    r.note = 'Southern Spear: 151 killed in 44 strikes. Families say many were civilian fishers. Follow-up strike killed survivors. Lavender: 37K targets, 10% error rate, 15-20 civilian casualties per target accepted. Same pattern: operational efficiency prioritized over civilian protection. Different theater, same acceptance of civilian death as cost of operations.';

// ═══════════════════════════════════
// §4  CHINA CONTAINMENT EDGES
// ═══════════════════════════════════

// Middle East axis → China containment
MATCH (a {id: 'RiyadhSummit2017'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'energy_chokepoint_control', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.note = 'The Orb Summit formalized the US+Saudi+Egypt+Israel axis. This axis controls the energy chokepoints China depends on. MBS controls oil supply. Sisi controls Suez. UAE controls logistics. Israel provides intelligence and cyber capability. The axis IS the China containment infrastructure.';

// Hormuz → China containment
MATCH (a {id: 'StraitOfHormuz'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'primary_chokepoint', r.weight = 3,
    r.note = 'China imports massive oil volumes through Hormuz. Iran strikes 2026 demonstrate US willingness to use force near this chokepoint. Signal to China: we control your energy supply chain.';

// Suez → China containment
MATCH (a {id: 'SuezCanal'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'maritime_chokepoint', r.weight = 3,
    r.note = 'China maritime supply routes pass through Suez. Egypt controlled by Sisi. Sisi aligned with US axis. $1.3B annual military aid buys influence over canal. Without-me-chaos includes: without me you lose Suez leverage.';

// Suez → Egypt
MATCH (a {id: 'SuezCanal'}) MATCH (b {id: 'Sisi'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'controls', r.weight = 3,
    r.note = 'Sisi controls Suez Canal. Part of his value proposition to the axis. Same function as Mubarak before him.';

// Bab el-Mandeb → China containment
MATCH (a {id: 'BabElMandeb'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'contested_chokepoint', r.weight = 2,
    r.note = 'Both US and China have military bases in Djibouti. First direct US-China military proximity. Houthi attacks 2024 disrupted shipping. Saudi/UAE/Egypt coalition controls approaches.';

// Venezuela oil → China containment
MATCH (a {id: 'VenezuelaOilReserves'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'redirected_from_chinese_orbit', r.weight = 3,
    r.note = 'Under Maduro: Chinese loans-for-oil, growing dependency. Post-capture: US demands total access for US oil interests. $3B to US-controlled accounts. Operation Absolute Resolve redirected 300B barrels from Chinese-aligned to US-controlled. The capture was an energy operation dressed as counternarcotics.';

// Venezuela capture → China containment
MATCH (a {id: 'VenezuelaCapture'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'western_hemisphere_energy_denial', r.weight = 3,
    r.note = 'Capturing Maduro and seizing oil assets denies China its largest Western Hemisphere energy partner. Chinese companies sanctioned in December 2025 (four shipping companies, four vessels) for participating in Venezuelas shadow fleet. The Monroe Doctrine as China containment tool.';

// Iran strikes → China containment
MATCH (a {id: 'IranStrikes2026'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'chokepoint_control_demonstration', r.weight = 3,
    r.note = 'Striking Iran demonstrates US willingness to use force near Hormuz. China imported significant Iranian oil (often through shadow fleet). Iran strikes disrupt this supply while signaling: we can and will reshape the energy landscape militarily. China calculates Taiwan risk against this backdrop.';

// Greenland → China containment
MATCH (a {id: 'GreenlandLeverage'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'arctic_resource_denial', r.weight = 2,
    r.note = 'Greenland: rare earth minerals, oil, strategic Arctic position. China has been seeking Arctic access through Belt and Road and investment. US claim on Greenland prevents Chinese Arctic foothold while pressuring European compliance.';

// German drones → China containment
MATCH (a {id: 'GermanDroneDeal'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'european_compliance', r.weight = 2,
    r.note = 'Germany buying US drones instead of developing European capability or buying Chinese alternatives. Deepens European dependency on US technology. Prevents European strategic autonomy that might lead to independent China policy. Europe locked into US command structure through equipment dependency.';

// Safari Club → China containment (adversary rotation)
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'adversary_rotated_topology_persisted', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Safari Club (1976): anti-Soviet. Same axis: US+Saudi+Egypt. Orb Summit (2017): formalized axis, anti-Iran front, implicit anti-China function. Iran Strikes (2026): anti-Iran AND demonstration of chokepoint control for China. Venezuela Capture (2026): direct energy denial from Chinese orbit. The adversary rotated from Soviet to China. The topology persisted because the function persisted: control energy infrastructure that gives leverage over the adversary superpower.';

// MBS → China (hedging)
MATCH (a {id: 'MBS'}) MATCH (b {id: 'China'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'hedging_both_sides', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'MBS joined BRICS. Sells oil to China. But also lobbied Trump for Iran strikes. Same hedging Kessler identified in 1986: They wanted friends all over the world and maybe hedge their bets. Saudi Arabia has been hedging for 50 years. The hedging IS the strategy.';

// ═══════════════════════════════════
// §5  FEBRUARY-MARCH 2026: THE CONVERGENCE
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'Convergence2026'})
SET n.name = 'The 2026 Convergence (Jan-Mar)',
    n.year = 2026, n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Jan 3: Maduro captured. Operation Absolute Resolve. Oil seized. Jan-Feb: Southern Spear strikes continue (151 killed). Feb 11: Netanyahu meets Trump behind closed doors. Feb 23: Sisi visits MBS in Jeddah (clearance). Feb 27: Anthropic banned. Feb 28: Iran struck (9 cities, Khamenei killed). Feb 2026: Andrew arrested (Epstein consequences). All connected through same topology. Same axis. Same opacity era. Multiple theaters activated simultaneously. Middle East + Latin America + AI warfare + kompromat consequences. The open bazaar operating at full capacity across all theaters.';

// Connect convergence to all theaters
MATCH (a {id: 'Convergence2026'}) MATCH (b {id: 'VenezuelaCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'western_hemisphere_theater', r.weight = 2;

MATCH (a {id: 'Convergence2026'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'middle_east_theater', r.weight = 2;

MATCH (a {id: 'Convergence2026'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ai_warfare_theater', r.weight = 2;

MATCH (a {id: 'Convergence2026'}) MATCH (b {id: 'AndrewArrest2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'kompromat_consequences_theater', r.weight = 2;

MATCH (a {id: 'Convergence2026'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'serves_meta_function', r.weight = 3,
    r.note = 'All theaters serve China containment. Venezuela: energy denial. Iran: chokepoint control demonstration. Anthropic: unrestricted AI for military operations. Andrew: old-system cleanup. The convergence is the open bazaar operating at full capacity.';

// ═══════════════════════════════════════════════════
// §6  EMERGENT PATTERNS
// ═══════════════════════════════════════════════════
//
// PATTERN 23 — The Contra Completion:
//   What Reagan did covertly through Swiss accounts,
//   Trump did openly with 150 aircraft and Delta Force.
//   The Contra affair wasnt an aberration that was corrected.
//   It was a prototype that was perfected.
//   COVERT (1985): secret arms to rebels, Lake Resources, BCCI.
//   OPEN_BAZAAR (2026): 150 aircraft, Delta Force, captured president
//     arraigned in New York, oil seized, Trump announces from Mar-a-Lago.
//   The Boland Amendment was the predecessor of the Anthropic ban.
//   Both said: you cannot do this. Both were circumvented.
//   One through Enterprise (secret). One through federal ban (open).
//
// PATTERN 24 — The Energy Denial Architecture:
//   Middle East: Hormuz (US Fifth Fleet), Suez (Sisi), Bab el-Mandeb
//   Latin America: Venezuela (300B barrels seized from Chinese orbit)
//   Arctic: Greenland (rare earth, oil, strategic position)
//   All prevent Chinese energy independence.
//   All controlled by the same axis or its extensions.
//   The topology persists because the function persists:
//   control energy infrastructure that leverages the adversary.
//   Soviet → China. The adversary rotated. The architecture didnt.
//
// PATTERN 25 — Europe as Compliance Target:
//   Greenland threats = arm twisting, not arms dealing.
//   German drone purchase = actual transaction hidden by distraction.
//   Drones operated from US base on German soil = dependency integration.
//   Europe pays to deepen integration into command structure it doesnt control.
//   Same as Egypt buying Cerebro: customer gets tool, vendor gets integration.
//   The compliance prevents European strategic autonomy
//   that might lead to independent China policy.
//
// PATTERN 26 — Condor = South American Safari Club:
//   Operation Condor (1975): multinational intelligence alliance,
//     South America, CIA-supported, thousands disappeared.
//   Safari Club (1976): multinational intelligence alliance,
//     Africa/Middle East, CIA-supported, covert operations.
//   Same era. Same logic. Same sponsor. Different continent.
//   Both created when Congress limited CIA.
//   Both used multinational cover for American objectives.
//   Both left thousands dead.
//
// PATTERN 27 — Southern Spear = Lavender (Civilian Pattern):
//   Gaza (Lavender): 37K targets, 10% error, 15-20 civilians per target.
//   Caribbean (Southern Spear): 151 killed in 44 strikes, fishers killed.
//   Follow-up strike killed survivors of first strike.
//   Same acceptance of civilian death as operational cost.
//   Same AI/technology-enabled targeting.
//   Same administration defending both operations.
//   Different theater, same moral framework: efficiency > protection.
//
// TOTAL AIWAR GRAPH (all 5 enrichments):
//   Approximately 3,000+ lines of structural intelligence
//   Spanning 1973-2026, three continents, five opacity eras
//   Connected through one family tree (Khashoggi nexus)
//   Serving one meta-function (energy leverage over adversary superpower)
//
// ═══════════════════════════════════════════════════
