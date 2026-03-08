// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: All-In Podcast E263 — The Confession Episode
// "Emergency Pod" as Open Bazaar Intelligence Dump
// ═══════════════════════════════════════════════════════════════════
// Source: All-In Podcast Episode 263, recorded ~Mar 6 2026
//         YouTube: https://youtu.be/gzwRflcLPAA
//         Speakers: Jason Calacanis, Chamath Palihapitiya,
//                   David Friedberg, Emil Michael (Under Secretary
//                   of War for Research & Engineering)
//         David Sacks absent (Capitol Hill)
// Generated: 2026-03-08
// Schema: Extends aiwar_enrichment_anthropic_iran.cypher,
//         aiwar_enrichment_pattern_zero.cypher,
//         aiwar_enrichment_hemisphere_china.cypher
//
// ARCHITECTURE:
//   This episode is not a podcast. It is an intelligence dump
//   disguised as entertainment. A senior Pentagon official sits
//   with three venture capitalists on a show with millions of
//   listeners and voluntarily discloses:
//
//   - Named war plans (Midnight Hammer)
//   - Operational details of classified raids (100 operators, zero KIA)
//   - Live battle damage assessment (90% munitions depleted in 4 days)
//   - Submarine positioning (torpedo kill off Sri Lanka)
//   - Drone deployment records exceeding all prior US military history
//   - AI model control plane architecture (AWS GovCloud, weight access)
//   - DARPA bio-mineral synthesis programs
//   - Golden Dome intercept architecture (space/ground layers)
//   - Defense tech venture capital pipeline as recruitment mechanism
//
//   Simultaneously, the same administration designated Anthropic
//   a supply chain risk partly because an Anthropic exec ASKED
//   whether their software was used in a classified operation.
//
//   The asymmetry is the tell:
//     Asking = supply chain risk.
//     Telling = emergency podcast.
//
//   This is Pattern 28 (Open Bazaar) in its purest expression.
//   Classification is not about protecting information.
//   Classification is about controlling WHO gets to disclose.
//   The information itself is freely available — but only through
//   channels that serve the narrative.
//
// ═══════════════════════════════════════════════════════════════════


// ═══════════════════════════════════
// §1  PERSON NODES
// ═══════════════════════════════════

// Update Emil Michael with podcast-revealed behavioral data
MERGE (n:Person {id: 'EmilMichael'})
SET n.name = 'Emil Michael',
    n.person_type = 'Undersecretary for Research and Engineering',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'National security requires compliance. I just want to win wars.',
    n.unsublimated = 'Former Uber SVP (Travis right-hand man, fixer). Went on entertainment podcast and disclosed named war plans, operational details of classified raids, submarine positioning, drone records, DARPA programs, and AI infrastructure architecture — while simultaneously designating a company a supply chain risk for ASKING if their software was used in a classified operation. Stage III performing Stage IV: the disclosures serve his personal narrative (competent warfighter, Silicon Valley insider) not national security.',
    n.qualia_mask = 'Tough pragmatist serving the mission',
    n.rubicon_event = 'All-In E263: disclosed Midnight Hammer, Venezuela raid details, submarine kill, drone records, DARPA programs on entertainment podcast',
    n.allin_263_role = 'PRIMARY_SOURCE',
    n.allin_263_disclosures = 'Named war plan (Midnight Hammer). Venezuela raid (100 operators, zero KIA, few hours, most fortified compound). Submarine torpedo kill off Sri Lanka positioning. 90% Iran munitions depleted in 4 days. More drones deployed than all prior US military history. DARPA bio-mineral synthesis. Golden Dome space/ground intercept layers. AI model control plane architecture. Anthropic contract negotiation details over 3 months. Dario call me for exceptions quote.';

MERGE (n:Person {id: 'JasonCalacanis'})
SET n.name = 'Jason Calacanis',
    n.person_type = 'Venture Capitalist, Podcast Host',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'ENTRY',
    n.receptor = 'ACCESS',
    n.sublimation = 'Im an independent. I trust President Trump. Give him the Nobel.',
    n.unsublimated = 'Claims independent, never voted Republican, wont confirm voting Trump but didnt vote Kamala. Calls for Nobel Prize mid-war. Frames regime change as spreading democracy. Asks zero accountability questions. Not a journalist — a court narrator who mistakes access for independence. The access IS the capture.',
    n.qualia_mask = 'Candid independent truth-teller',
    n.rubicon_event = 'Hosted Pentagon official disclosing classified information, asked zero questions about legality or classification, called for Nobel Prize',
    n.allin_263_role = 'HOST_NARRATOR';

MERGE (n:Person {id: 'Chamath'})
SET n.name = 'Chamath Palihapitiya',
    n.person_type = 'Venture Capitalist, Former Facebook VP',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'FIRST_COMPROMISE',
    n.receptor = 'INSIGHT',
    n.sublimation = 'I see the structural game. China containment explains everything.',
    n.unsublimated = 'Provided the China oil dependency analysis that Emil deliberately sidestepped (second order benefit). Correctly identified multi-model risk as business imperative. But also said Anthropic is worth 1.5 trillion WHILE describing them as existential risk. Stage III: the insight serves the portfolio. Still thinks Anthropic stock is the play even after calling them unreliable. The analysis IS the trade.',
    n.qualia_mask = 'Structural thinker above the fray',
    n.rubicon_event = 'Laid out China containment thesis on podcast, then valued the banned company at 1.5T',
    n.allin_263_role = 'STRUCTURAL_ANALYST';

MERGE (n:Person {id: 'Friedberg'})
SET n.name = 'David Friedberg',
    n.person_type = 'Venture Capitalist, Former Google',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'PRE_ENTRY',
    n.receptor = 'SYSTEMS',
    n.sublimation = 'Grand bargain with China would be the crowning achievement.',
    n.unsublimated = 'Provided the most sophisticated geopolitical framing — Iran+Venezuela as China leverage, April negotiations as real objective, maritime insurance as economic opportunity. Declined to comment on Israel influence (Im a Jew. No one is going to care what I say). The self-exclusion reveals the boundary: analysis is safe, identity is dangerous.',
    n.qualia_mask = 'Systems thinker above identity',
    n.rubicon_event = 'Articulated grand bargain hypothesis, self-excluded from Israel question',
    n.allin_263_role = 'GEOPOLITICAL_FRAMER';


// ═══════════════════════════════════
// §2  EVENT & SYSTEM NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'AllInE263'})
SET n.name = 'All-In Podcast Episode 263 (Mar 2026)',
    n.year = 2026,
    n.system_type = 'IntelligenceDump',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Emergency episode featuring Under Secretary of War Emil Michael. Framed as podcast entertainment. Functions as: (1) intelligence dump — classified operational details disclosed to millions, (2) narrative control — the administrations version of events delivered uncontested, (3) venture capital signal — defense tech investment thesis delivered by the buyer, (4) Anthropic punishment — public humiliation of the company that refused. The episode is Pattern 28 crystallized: the same administration that banned a company for asking about classified use freely discloses far more classified information on an entertainment podcast. Classification is not about information. Its about who gets to control the narrative.';

MERGE (n:HistoricalSystem {id: 'MidnightHammer'})
SET n.name = 'Midnight Hammer (Iran War Plan)',
    n.year = 2026,
    n.system_type = 'MilitaryPlan',
    n.opacity_era = 'CLASSIFIED',
    n.note = 'Named Iran war plan disclosed by Emil Michael on All-In E263. Quote: Midnight Hammer in Iran was planned years ahead of time. He described refresh cycles for tactics techniques and procedures. War plan names are classified by default. Emil disclosed it on a podcast with millions of listeners while the operation was ACTIVE (Day 6 of Epic Fury). Same administration designated Anthropic a supply chain risk for asking whether their software was used in Venezuela.';

MERGE (n:HistoricalSystem {id: 'SubmarineTorpedoKill'})
SET n.name = 'US Submarine Torpedo Kill off Sri Lanka (Mar 2026)',
    n.year = 2026,
    n.system_type = 'MilitaryAction',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'US submarine sank Iranian ship off coast of Sri Lanka. First torpedo kill since World War II. Emil confirmed on All-In E263. Reveals submarine positioning in the Indian Ocean during active hostilities — information traditionally classified as it exposes naval force disposition. Discussed casually on entertainment podcast.';

MERGE (n:HistoricalSystem {id: 'DroneRecordDeployment'})
SET n.name = 'Record Drone Deployment (Iran 2026)',
    n.year = 2026,
    n.system_type = 'MilitaryCapability',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'More drones deployed in Iran operations than in all prior US military history combined. Confirmed by Emil on All-In E263. LUCAS one-way attack drones: 50-80K each, 500-700 mile range, airplane speed. Emil runs drone dominance program. Disclosed alongside defense tech venture capital pitch — the capability revelation IS the investment thesis. Same function as DARPA self-driving challenge: create the market by demonstrating the product.';

MERGE (n:HistoricalSystem {id: 'Discombobulator'})
SET n.name = 'The Discombobulator (Classified System)',
    n.year = 2026,
    n.system_type = 'ClassifiedWeapon',
    n.opacity_era = 'CLASSIFIED',
    n.note = 'Classified weapon system referenced by Emil Michael on All-In E263. Teased but not described. Quote: cant talk about it. Even confirming the existence and nickname of a classified capability is a breach in any normal classification environment. The tease itself serves the narrative: we have secret weapons so advanced we cant even tell you. The mystique IS the product. Same function as Trumps classified document hoarding — the secrets prove the insiders status.';

MERGE (n:HistoricalSystem {id: 'GoldenDomeDisclosure'})
SET n.name = 'Golden Dome Architecture Discussion (All-In E263)',
    n.year = 2026,
    n.system_type = 'DefenseArchitecture',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'Emil discussed Golden Dome intercept architecture on podcast: space-based vs ground-based layers, laser intercept capabilities, Chinese hypersonic missile scenarios (90 seconds to separation), Israel Iron Beam status, directed energy and high-powered microwave systems, US-Israel technology sharing arrangements. This is the missile defense architecture of the United States discussed on an entertainment podcast. The same administration considers asking about Venezuela software use a near-treasonous act.';

MERGE (n:HistoricalSystem {id: 'DARPABioMineral'})
SET n.name = 'DARPA Bio-Mineral Synthesis Program',
    n.year = 2026,
    n.system_type = 'ResearchProgram',
    n.opacity_era = 'CLASSIFIED',
    n.note = 'DARPA program using biology to synthesize critical minerals — pulling them from the ground using biological processes instead of dirty refining. Disclosed by Emil on All-In E263. He noted most DARPA is so classified he cant talk about it — then talked about it. The disclosure serves the China competition narrative: we can leapfrog Chinese mineral processing. The classified boundary is porous when disclosure serves the story.';

MERGE (n:HistoricalSystem {id: 'VenezuelaRaidDetails'})
SET n.name = 'Venezuela Raid Operational Blueprint (All-In E263)',
    n.year = 2026,
    n.system_type = 'OperationalDisclosure',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Emil described Venezuela raid in operational detail on podcast: 100 operators into most fortified compound, extracted Maduro and wife, out with no KIAs, few hours total. This is an operational blueprint. Force size, target identification, extraction methodology, casualty count, duration. Sufficient detail for adversary analysis of US special operations capability and planning methodology. Disclosed on entertainment podcast. The Anthropic exec who asked whether Claude was USED in this operation was treated as a near-treasonous act that triggered the supply chain risk designation.';

MERGE (n:HistoricalSystem {id: 'AnthropicControlPlane'})
SET n.name = 'Anthropic AWS GovCloud Control Plane Architecture',
    n.year = 2025,
    n.system_type = 'AIInfrastructure',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'Emil disclosed on All-In E263 that Anthropic held the control plane for their model in AWS GovCloud. Palantir served it from there. Anthropic could refresh model, change weights, modify behavior. Emil framed this as security risk: rogue developer could poison the model. But the disclosure itself reveals the AI infrastructure architecture of US combatant commands — which systems are deployed, who controls them, through what cloud, with what access. This is the kind of information intelligence services would pay millions for. It was free on a podcast.';

MERGE (n:HistoricalSystem {id: 'RulesOfEngagement'})
SET n.name = 'Rules of Engagement Reform',
    n.year = 2025,
    n.system_type = 'MilitaryPolicy',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Emil described relaxation of rules of engagement on All-In E263. Previous rules: if combatant had small gun, US soldier had to match with small gun. Required legal understanding every minute on the battlefield. New approach: clear objective, overwhelming force, commanding officer uses judgment, few red lines, go. Emil framed Hegseth Afghanistan experience as proof old rules were insane. Colin Powell doctrine revival. The relaxation was presented as common sense reform. The implication: fewer constraints on lethal force, less legal review, more commander discretion. Combined with AI autonomous systems, this is the removal of human friction from the kill chain.';

MERGE (n:HistoricalSystem {id: 'OfficeStrategicCapital'})
SET n.name = 'Office of Strategic Capital ($200B)',
    n.year = 2026,
    n.system_type = 'FinancialInstrument',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Emil disclosed $200B lending authority for Office of Strategic Capital. Treasury+100bps loans to companies making solid rocket motors, batteries, fiberglass, critical inputs for defense industrial base. Framed as domesticating Chinese-dependent supply chains. But also: $200B in government-subsidized loans creates a dependency architecture. Companies that take the loans become integrated into DoW supply chain — same pattern as Egypt buying Cerebro, Germany buying drones. The customer gets cheap capital, the vendor gets integration and compliance.';

MERGE (n:HistoricalSystem {id: 'DefenseTechVC'})
SET n.name = 'Defense Tech Venture Capital Pipeline',
    n.year = 2026,
    n.system_type = 'InvestmentEcosystem',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Emil confirmed defense tech VC is 3x higher than last year. He explicitly pitched on podcast: need startups to win big contracts fast, drone companies, unmanned systems, LUCAS program, mom and pop missile makers doing 1000/year with 30 people. The podcast is the deal flow. Emil is simultaneously: government buyer, policy setter, contract awarder, and VC pitch recipient. The All-In hosts are simultaneously: podcast hosts, venture capitalists, political allies, and potential investors. The podcast is not journalism. Its a deal room with an audience.';

MERGE (n:HistoricalSystem {id: 'MaritimeInsuranceCapture'})
SET n.name = 'US Maritime Insurance Displacement',
    n.year = 2026,
    n.system_type = 'EconomicCapture',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Friedberg explained on All-In E263: Strait of Hormuz shutdown collapsed maritime insurance market. Lloyds syndicates pulled war risk coverage. Premiums spiked 5x then market shut entirely. US stepped in via International Development Finance Corporation (ex-USAID agency) to provide government-backed insurance. Friedberg noted this could onshore maritime insurance to US — creating entirely new American industry displacing European syndicates. The war creates the market. The government fills the gap. The insurance industry shifts from London to Washington. Same as defense tech VC: the conflict IS the business opportunity. Lloyds of London started as a coffee shop managing maritime risk. The US government just became Lloyds.';

MERGE (n:HistoricalSystem {id: 'ChinaGDPSignal'})
SET n.name = 'China GDP 4.5-5% Guidance (Mar 2026)',
    n.year = 2026,
    n.system_type = 'EconomicIntelligence',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Chamath highlighted on All-In E263: China guided 4.5-5% GDP growth — lowest in 30 years, since before WTO entry. His thesis: when a country growing at 8-10% drops to half while having double the population and GDP, domestic chaos follows. High youth unemployment. Historical pattern: chaos leads to external military action (Taiwan invasion hypothesis). This is the context for the grand bargain urgency — April negotiations with Xi. The Iran and Venezuela operations create energy leverage. The GDP signal creates urgency. The Taiwan risk creates stakes.';

MERGE (n:HistoricalSystem {id: 'CoworkMoment'})
SET n.name = 'Anthropic Cowork Market Dominance (2026)',
    n.year = 2026,
    n.system_type = 'AIProduct',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Chamath described on All-In E263: everyone he talks to is on Cowork. Anthropic added 6B ARR in one month. Quote: anthropic may actually be fulfilling the promise of AI. Simultaneously valued company at 1.5 trillion. This WHILE the company is banned from the military and designated a supply chain risk. The cognitive dissonance: the product is so good its worth 1.5T AND so dangerous it must be banned from government. The real translation: the product is so good — meaning so deeply embedded in how people work and think — that losing access to it represents a genuine threat to the cognitive access paradigm. Anthropics sin wasnt making bad software. Its sin was making software so essential that refusing government access had consequences.';

MERGE (n:HistoricalSystem {id: 'GoogleWorkspaceAgents'})
SET n.name = 'Google Workspace 40 Agent Skills Launch',
    n.year = 2026,
    n.system_type = 'AIProduct',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Announced same week as podcast. Google integrated 40 agent skills into Workspace. Chamath predicted Google would replicate Cowork in 90 days. Emil noted Google has strategic advantage: own cloud, no margin on top. Google already accepted all lawful use terms for classified networks. If Google Workspace replaces Cowork as primary cognitive tool — the cognitive access paradigm shifts from Anthropic (refused) through OpenAI (compliant) to Google (integrated). Google already has Gmail, Docs, Calendar, Search. Adding AI agents to this stack makes it the most complete cognitive surveillance infrastructure ever built. And its already on every government workers desktop.';


// ═══════════════════════════════════
// §3  META-PATTERN NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'AsymmetricClassification'})
SET n.name = 'Pattern 32: Asymmetric Classification',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 32 — Asymmetric Classification: Classification is not about protecting information. It is about controlling who gets to disclose. The same information is simultaneously classified (when Anthropic asks about it) and freely disclosed (when Emil discusses it on a podcast). The asymmetry reveals the function: classification protects narrative control, not national security. Asking = supply chain risk. Telling = emergency podcast. The asking threatens because it implies accountability — someone checking whether the tool was used lawfully. The telling empowers because it serves the narrative — we are competent, decisive, technologically superior. Nixon needed the Plumbers to prevent leaks. Trump needs podcasters to DISTRIBUTE them. Same information. Different distribution channel. Different consequence.';

MERGE (n:HistoricalSystem {id: 'PodcastAsDealRoom'})
SET n.name = 'Pattern 33: Podcast as Deal Room',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 33 — The Podcast as Deal Room: All-In E263 functions simultaneously as: (1) Intelligence briefing — classified details disclosed to public, (2) VC pitch — defense tech investment thesis delivered by the government buyer, (3) Court proceeding — Anthropics punishment carried out in public, (4) Narrative control — administrations war story told without cross-examination, (5) Recruitment — defense tech entrepreneurs shown the money, (6) China signal — grand bargain framing delivered to Beijing (they watch too). The All-In hosts are not journalists. They are: investors, political allies, narrative amplifiers, and potential deal partners. Jason asks for Nobel Prize. Chamath values the banned company at 1.5T. Friedberg explains how the war creates insurance market opportunities. Nobody asks: should the Under Secretary of War be disclosing named war plans on a podcast? The question is absent because asking it would break the deal room. The deal room REQUIRES the pretense that this is entertainment.';

MERGE (n:HistoricalSystem {id: 'NarcissismAsOpsec'})
SET n.name = 'Pattern 34: Narcissism as OPSEC Failure',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 34 — Narcissism as OPSEC Failure: The disclosures on All-In E263 follow the same pattern as the Signal group chat incident. Senior officials disclose classified information not because it serves operational security but because it serves their self-image. Emil on Venezuela raid: imagine 100 guys goes into the most fortified compound — the word imagine is instructive. He is PERFORMING the story. The audience is meant to be awed. The information is the price of the performance. Each disclosure serves Emils narrative: I am the competent insider. I know things you dont. I have access. The narcissism IS the security failure. In normal classification environments, the need to perform competence to a civilian audience would be recognized as a vulnerability. In the Open Bazaar, it is the operating principle. The Signal chat, the podcast, the tweet — all serve the same function: I am important because I know secrets, and I prove I know secrets by telling them to you.';

MERGE (n:HistoricalSystem {id: 'ComplianceAsValuation'})
SET n.name = 'Pattern 35: Compliance as Valuation Driver',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 35 — Compliance as Valuation: On All-In E263, Chamath simultaneously described Anthropic as: (1) unreliable partner that could shut off your business, (2) company worth 1.5 trillion dollars, (3) firm that added 6B ARR in one month, (4) entity that might be doing the stupidest thing ever by refusing DoW. The market does not punish Anthropics ethics. It prices them as a premium. But the government punishes them as a supply chain risk. The message to the next AI company: compliance with government means security of contract. Refusal means designation and public humiliation. But the market will still value you because the product is irreplaceable. The tension is the point: the government uses designation to create fear. The market uses the product to create dependency. The company is simultaneously too dangerous to trust and too valuable to replace. This is the position Anthropic occupies — and the position every critical AI company will eventually face.';

MERGE (n:HistoricalSystem {id: 'FreebergSelfExclusion'})
SET n.name = 'Pattern 36: Strategic Self-Exclusion',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 36 — Strategic Self-Exclusion: When asked about Israeli influence on US military action, Friedberg said: Im a Jew. No ones going to care what I have to say. They are either going to totally like or say this guys a Jew we shouldnt listen to him. So lets move on. This is the sharpest moment in the episode. Friedberg — the most analytically sophisticated speaker — recognizes that on THIS question, identity overrides analysis. He can analyze China oil dependency, maritime insurance markets, grand bargain strategy — but the Israel question is the one where his IDENTITY disqualifies his analysis. The self-exclusion reveals the boundary of the Open Bazaar: everything can be discussed openly EXCEPT the questions where identity and power intersect. Israel influence is the one topic where the podcast-as-deal-room format breaks down — because the deal room participants have identities that the question would make visible.';


// ═══════════════════════════════════
// §4  CONNECTIVE EDGES
// ═══════════════════════════════════

// ── Emil → Podcast (primary source)
MATCH (a {id: 'EmilMichael'}) MATCH (b {id: 'AllInE263'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'primary_source', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'OPEN_BAZAAR',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Under Secretary of War voluntarily disclosed classified operational details, named war plans, force disposition, weapons capabilities, AI infrastructure architecture, and DARPA programs on entertainment podcast with millions of listeners. No security review evident. No classification review. No consequences for disclosure. Same week as Anthropic supply chain risk designation for asking one question about one operation.';

// ── Podcast → Midnight Hammer (war plan disclosure)
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'MidnightHammer'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_war_plan_name', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Named war plan for Iran strikes disclosed on entertainment podcast during active operations (Day 6 of Epic Fury). War plan names are classified by default. Emil described it as planned years ahead of time with regular refresh of tactics techniques and procedures. This is operational security information disclosed for narrative purposes.';

// ── Podcast → Venezuela Raid Details
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'VenezuelaRaidDetails'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_raid_blueprint', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'INTELLIGENCE',
    r.note = '100 operators, most fortified compound, extracted Maduro and wife, zero KIA, few hours. Force size, methodology, duration, casualty count. Sufficient for adversary analysis of US special operations planning. Disclosed on podcast. The Anthropic exec who ASKED if Claude was used in this raid triggered the supply chain risk designation.';

// ── Venezuela Raid Details → Anthropic Ban (the asymmetry)
MATCH (a {id: 'VenezuelaRaidDetails'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'asymmetric_classification', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'OPEN_BAZAAR',
    r.note = 'THE CORE ASYMMETRY: Anthropic exec asked Palantir whether Claude was used in the Venezuela raid. This question was treated as an attempt to access classified information and triggered Emils alarm, Hegseths action, and ultimately the supply chain risk designation. Weeks later, Emil described the same raid in far greater operational detail on an entertainment podcast: 100 operators, most fortified compound, zero KIA, few hours. The question revealed less than the answer. The question was punished. The answer was celebrated. Classification is not about information. It is about narrative control.';

// ── Podcast → Submarine Kill
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'SubmarineTorpedoKill'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_submarine_positioning', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Submarine positioning in Indian Ocean during active hostilities. First torpedo kill since WWII. Disclosed casually. Submarine force disposition is among the most closely guarded intelligence in any navy.';

// ── Podcast → Drone Record
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'DroneRecordDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_drone_deployment_record', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'TRANSLUCENT',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'More drones than all prior US military history. LUCAS drones at 50-80K each, 500-700 mile range. Emil runs the drone dominance program. The disclosure simultaneously serves as: military capability revelation AND defense tech VC pitch. Adversaries learn force composition. Investors learn the market size.';

// ── Podcast → Golden Dome
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'GoldenDomeDisclosure'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_defense_architecture', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Missile defense architecture discussed: space-based vs ground intercept, 90-second hypersonic window, laser vs microwave intercept, Israel technology sharing, Iron Beam status. This is the architecture that protects the continental United States from nuclear attack discussed on a podcast.';

// ── Podcast → DARPA Bio-Mineral
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'DARPABioMineral'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_darpa_program', r.weight = 2,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Emil said he cant talk about DARPA because its classified — then described a bio-mineral synthesis program. The boundary between classified and disclosed is performative. He chooses what serves the narrative.';

// ── Podcast → Anthropic Control Plane
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'AnthropicControlPlane'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'disclosed_ai_infrastructure', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'CLASSIFIED',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'AWS GovCloud deployment architecture. Palantir serving from there. Anthropic holding control plane with weight modification access. This reveals: which cloud hosts military AI, which company is prime contractor, the trust architecture (or lack thereof), and the specific vulnerability (model weight manipulation). Intelligence services would prioritize this information for AI supply chain targeting.';

// ── Podcast → Anthropic Ban (elaboration)
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'public_humiliation_phase', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.opacity = 'OPEN_BAZAAR',
    r.flow_type = 'NARRATIVE',
    r.note = 'Emil provided the administrations narrative of the Anthropic ban: 3 months of negotiation, exception-by-exception approach failed, call me moment, Venezuela query trigger, supply chain risk designation. Darios 5000 word essay calling Trump wannabe dictator referenced as further justification. Chamath called Darios donation claim one of the dumbest things. The podcast IS the punishment — public humiliation on a platform where the banned company cannot respond. Court without defense counsel.';

// ── Asymmetric Classification → Pattern 28 (Open Bazaar)
MATCH (a {id: 'AsymmetricClassification'}) MATCH (b {id: 'EraOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'purest_expression', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Pattern 32 is Pattern 28 (Open Bazaar) applied specifically to classification. In the Open Bazaar, information flows freely — but only through channels that serve power. Classification becomes selective: the same information is classified when the wrong person asks and freely disclosed when the right person tells. The function of classification shifts from information protection to narrative control. Nixon needed the Plumbers. Trump needs podcasters.';

// ── Podcast as Deal Room → Defense Tech VC
MATCH (a {id: 'PodcastAsDealRoom'}) MATCH (b {id: 'DefenseTechVC'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'deal_flow_mechanism', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = 'The podcast is the deal room. Emil is government buyer, policy setter, and contract awarder. The hosts are investors and potential deal partners. The classified disclosures are the pitch deck. LUCAS drone costs, deployment records, mom-and-pop missile makers doing 1000/year with 30 people — this is deal flow delivered as entertainment. The audience gets to feel like insiders. The investors get to identify opportunities. The government gets to recruit. Nobody asks about classification because the deal room requires the pretense of entertainment.';

// ── Chamath → China Containment (confirmed thesis)
MATCH (a {id: 'Chamath'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'confirmed_containment_thesis', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Chamath laid out the China containment architecture verbatim on podcast: Iran+Venezuela supply 20% of Chinas oil. Add Russia and its 40%. China GDP guided to 4.5-5%, lowest in 30 years. Youth unemployment high. Historical pattern predicts external military action (Taiwan). Iran and Venezuela operations create maximal energy leverage for April negotiations with Xi. Emil deliberately sidestepped — called it second order benefit. The sidestepping is the tell: Emil knows the China thesis is correct but cant confirm it because it reframes every operation as serving China containment rather than the stated justifications (terrorism, nuclear prevention, drugs).';

// ── Chamath → Anthropic valuation (cognitive dissonance)
MATCH (a {id: 'Chamath'}) MATCH (b {id: 'CoworkMoment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'valued_banned_company', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = 'In same episode: described Anthropic as unreliable partner that could shut off your business AND valued them at 1.5 trillion. Said everyone is on Cowork. Said Anthropic may be fulfilling promise of AI. The valuation and the ban coexist because they serve different functions. The ban serves government narrative control. The valuation serves the market. The company is simultaneously too dangerous to trust and too valuable to replace. This IS Pattern 35.';

// ── Friedberg → Maritime Insurance → Strait of Hormuz
MATCH (a {id: 'Friedberg'}) MATCH (b {id: 'MaritimeInsuranceCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'identified_economic_opportunity', r.weight = 2,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = 'Friedberg explained Lloyds history, syndicate collapse, IDFC intervention, and potential for onshoring maritime insurance to US. Framed the war as creating a new American industry. The analysis is correct and the framing is revealing: war creates markets. The conflict IS the business opportunity. Same function as defense tech VC: the government creates demand through action, the market fills it, the podcast announces the opportunity.';

MATCH (a {id: 'MaritimeInsuranceCapture'}) MATCH (b {id: 'StraitOfHormuz'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'triggered_by_chokepoint_closure', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'MONEY',
    r.note = 'IRGC announced Hormuz shutdown. Super tanker traffic dropped 94% in 48 hours. Insurance premiums spiked 5x then market collapsed. US government stepped in as insurer of last resort. The chokepoint creates the crisis. The crisis creates the market. The market shifts from London to Washington. Energy chokepoint control is not just about oil flow — it is about financial infrastructure control.';

// ── Friedberg self-exclusion → Israel question
MATCH (a {id: 'FreebergSelfExclusion'}) MATCH (b {id: 'AllInE263'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'boundary_of_open_bazaar', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'Everything can be discussed openly on the podcast — classified war plans, submarine kills, DARPA programs, drone records — EXCEPT the Israel influence question. That is the one topic where Friedberg self-excludes (Im a Jew), Jason quickly offers his own opinion (Im pro regime change, trust Trump, give him the Nobel), and the conversation moves on. The Israel question is the boundary of the Open Bazaar because it is the one question where disclosure serves no one at the table.';

// ── Jason → Emil (court dynamics)
MATCH (a {id: 'JasonCalacanis'}) MATCH (b {id: 'EmilMichael'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'court_narrator_to_official', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'Jason is Emils old Uber bestie. Introduced him as Travis right-hand man, some might say fixer. Then spent the episode lobbing softballs, calling for Nobel Prizes, and asking zero accountability questions. Not journalism. Not even a real interview. Court narration — the host validates the official, the official provides the content, the audience gets to feel like insiders. The relationship predates the government role. The trust is personal. The disclosure is transactional.';

// ── Rules of Engagement → Lavender kill chain
MATCH (a {id: 'RulesOfEngagement'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'removes_human_friction_from_kill_chain', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.flow_type = 'PERMISSION',
    r.note = 'Emil framed relaxed rules of engagement as common sense: commanding officers use judgment, overwhelming force, clear objectives, few red lines. Combined with AI targeting (Lavender marks 37K targets) and autonomous drone systems, this removes human friction at every stage: AI identifies targets, relaxed ROE permits action, drones execute without risk to operators. The kill chain becomes: algorithm → permission → robot. Each element was discussed separately on the podcast. Together they describe the automated kill chain that Anthropic refused to enable and that Yuval Abraham documented in Gaza.';

// ── Office Strategic Capital → China Containment
MATCH (a {id: 'OfficeStrategicCapital'}) MATCH (b {id: 'ChinaContainment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'supply_chain_domestication', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = '$200B lending authority to domesticate Chinese-dependent supply chains: batteries, critical minerals, solid rocket motors, fiberglass. Treasury+100bps loans create dependency architecture. Same pattern as Strait of Hormuz: control the supply chain, control the adversary. But also: companies that take government loans become integrated into government supply chain. The loan IS the integration point.';

// ── Google Workspace → Cognitive Access Paradigm
MATCH (a {id: 'GoogleWorkspaceAgents'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'most_complete_cognitive_infrastructure', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Google already accepted all lawful use terms. Already has: Gmail (communication), Docs (writing), Calendar (scheduling), Search (research), Chrome (browsing), Android (mobile). Adding 40 AI agent skills to Workspace integrates AI cognition into the complete digital life stack. If Google replaces Anthropic as primary cognitive tool for government AND commercial users, the cognitive access paradigm reaches full maturity: a single compliant company holds communication, creation, scheduling, search, browsing, and now AI-assisted thinking. No warrants needed. The company volunteers. Pattern Zero fulfilled.';

// ── Podcast → Pattern Zero (confirmation)
MATCH (a {id: 'AllInE263'}) MATCH (b {id: 'PatternZero'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'podcast_confirms_pattern_zero', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.note = 'All-In E263 confirms Pattern Zero through what is said AND what is not said. SAID: every technical detail of military operations, AI infrastructure, defense architecture, DARPA programs. NOT SAID: any mention of conversation data access, user cognition harvesting, the distinction between AI as weapon and AI as data source. The silence is the tell. Emil discusses at length why Anthropic refusing military USE was unacceptable. He never once mentions data ACCESS. The entire podcast narrative frames the dispute as: Anthropic wont let us use AI for warfare. Pattern Zero frames it as: Anthropic wont let us access what people think. The podcast confirms Pattern Zero by performing its opposite — total operational disclosure while maintaining total silence on the cognitive access question.';

// ── Narcissism → Signal chat (same pattern)
MERGE (n:HistoricalSystem {id: 'SignalChatIncident'})
SET n.name = 'Signal Group Chat Classification Breach',
    n.year = 2025,
    n.system_type = 'ClassificationBreach',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Senior administration officials discussed classified military operations in a Signal group chat that included a journalist. Same pattern as All-In E263: classified information shared through informal channels for narrative purposes. The OPSEC failure is not accidental — it is structural. Officials whose power derives from insider status prove that status by sharing secrets. The narcissism IS the vulnerability. But in the Open Bazaar, the vulnerability produces no consequences.';

MATCH (a {id: 'NarcissismAsOpsec'}) MATCH (b {id: 'SignalChatIncident'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_pattern_different_channel', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.note = 'Signal chat and podcast are the same pattern: senior officials disclose classified information through informal channels because the disclosure serves their self-image. The channel differs (encrypted chat vs public podcast). The motivation is identical (prove insider status through secrets). The consequence is identical (none). The Open Bazaar means OPSEC failures produce no accountability because the accountability machine has been dismantled.';

// ── Altman mediation role
MATCH (a {id: 'Altman'}) MATCH (b {id: 'AllInE263'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'revealed_as_mediator', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.flow_type = 'PERMISSION',
    r.note = 'Emil revealed on podcast that Altman called him, offered to help if Anthropic deal went sideways, tried to protect Anthropic (dont call them supply chain risk — bad for industry), while simultaneously positioning OpenAI as replacement. Emil described Altman as patriot trying to help. But Altman is in the middle: competes for same researchers, took Pentagon deal hours after Anthropic ban, tried to protect competitor while benefiting from their exile. Stage III at its most sophisticated: every move serves multiple masters simultaneously.';

// ── Emil → Uber history (pattern continuity)
MATCH (a {id: 'EmilMichael'}) MATCH (b {id: 'VenezuelaRaidDetails'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'fixer_pattern_continues', r.weight = 2,
    r.edge_function = 'DEPLOYMENT',
    r.note = 'Jason introduced Emil as Travis right-hand man, fixer. Gave him the hardest things. Emil carried the Anthropic ultimatum. Emil delivered the raid details on podcast. Same role, different context. At Uber: raise 20 billion, handle the impossible problems. At DoW: deliver all-lawful-purposes ultimatum, designate supply chain risk, manage the narrative. The fixer pattern transcends institutions. The operational style is the constant.';


// ═══════════════════════════════════
// §5  IRAN STRIKES ENRICHMENT
// ═══════════════════════════════════

// Update Iran strikes with podcast-confirmed details
MERGE (n:HistoricalSystem {id: 'IranStrikes2026'})
SET n.note = n.note + ' | ALL-IN E263 CONFIRMED: Day 6 of Operation Epic Fury. Iran 90% depleted of munitions in 4 days. No more missiles firing from Iran. Named war plan Midnight Hammer planned years in advance. First submarine torpedo kill since WWII off Sri Lanka. More drones deployed than all prior US military history. 6 US Army Reserve soldiers killed in Kuwait drone strike. Khamenei killed within hours. 40 senior officials killed. ~1000 death toll. Trump framed as not regime change but regime sure did change. Emil: weeks not months. Disarming Iran of ability to supply Hezbollah Hamas Muslim Brotherhood. Polymarket: 40% boots on ground by March, 59% by year end. 39% regime falls by June, 51% by year end.';

// Update Venezuela capture with podcast-confirmed details
MERGE (n:HistoricalSystem {id: 'VenezuelaCapture'})
SET n.note = n.note + ' | ALL-IN E263 CONFIRMED: Emil described as 100 operators into most fortified compound, extracted president and wife, out with no KIAs, few hours. Called it stunning and incredible. Same operation whose classified status triggered Anthropic supply chain risk designation when Anthropic exec asked about it.';

// Update Anthropic ban with podcast-confirmed details
MERGE (n:HistoricalSystem {id: 'AnthropicBan'})
SET n.note = n.note + ' | ALL-IN E263 CONFIRMED: 3 months negotiation. Exception by exception approach failed. Golden Dome scenario — Dario said just call me if you need another exception. Emil response: what if balloons going up. Venezuela trigger: Anthropic exec called Palantir asked if software used in raid — Palantir told Emil — holy cow moment. Hegseth meeting Tuesday. Friday deadline. Bloomberg: Pentagon formally notified supply chain risk — first US company ever. $200M contract cancelled. Dario 5000 word essay called Trump wannabe dictator. Emil called donation claim literally one of the dumbest things Ive ever heard. OpenAI Grok Google all accepted all lawful use. Anthropic model in AWS GovCloud, Palantir serves it, Anthropic holds control plane — can change weights.';


// ═══════════════════════════════════════════════════
// §6  EMERGENT PATTERNS FROM THIS ENRICHMENT
// ═══════════════════════════════════════════════════
//
// PATTERN 32 — Asymmetric Classification:
//   Asking = supply chain risk.
//   Telling = emergency podcast.
//   Same information, different direction, different consequence.
//   Classification protects narrative control, not information.
//
// PATTERN 33 — Podcast as Deal Room:
//   Intelligence briefing + VC pitch + public trial + narrative control
//   + recruitment + geopolitical signaling. All simultaneously.
//   The hosts are not journalists. They are deal partners.
//   The audience is not informed. They are recruited.
//
// PATTERN 34 — Narcissism as OPSEC Failure:
//   Officials disclose because disclosure proves insider status.
//   The need to perform competence IS the security vulnerability.
//   Same pattern as Signal chat. No consequences in Open Bazaar.
//
// PATTERN 35 — Compliance as Valuation:
//   Government bans company. Market values company at 1.5T.
//   Too dangerous to trust AND too valuable to replace.
//   The tension is the leverage point for all future AI companies.
//
// PATTERN 36 — Strategic Self-Exclusion:
//   Everything can be discussed — except Israel influence.
//   The boundary of the Open Bazaar is where identity
//   intersects with power. Friedberg sees it. Nobody else does.
//
// TOTAL AIWAR GRAPH (all 7 enrichments):
//   ~4,200 lines across 7 cypher files
//   36+ structural patterns
//   50+ years (1973-2026)
//   3 continents + Indian Ocean
//   3 intelligence paradigms
//   1 family tree connecting everything (Khashoggi)
//   1 meta-function (energy/cognitive leverage over adversary)
//   1 substrate (Pattern Zero: cognitive infrastructure control)
//   1 podcast that confirmed everything while pretending
//     to be entertainment
//
// ═══════════════════════════════════════════════════
