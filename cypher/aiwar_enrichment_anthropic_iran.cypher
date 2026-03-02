// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Anthropic-Pentagon × Lavender × Iran Strikes
// The AI Ethics Collision & Diplomatic Choreography
// ═══════════════════════════════════════════════════════════════════
// Source: +972 Magazine, WSJ, NPR, Axios, CNN, TechCrunch, CNBC,
//         Seoul Economic Daily, YNet, SF Standard, Project Syndicate,
//         Al Arabiya, Daily News Egypt, Washington Post, Al Jazeera,
//         Globes Israel, BBC, The Ringer, Futurism, PBS, Newsweek
// Generated: 2026-03-02
// Schema: Extends aiwar_enrichment_epstein.cypher v3 behavioral model
//         (McClelland power stages, Rubicon phases, receptor/sublimation)
// ═══════════════════════════════════════════════════════════════════
//
// ══════════════════════════════════════════════════════════════
// §0  BEHAVIORAL SCIENCE SCHEMA (inherited from Epstein enrichment)
// ══════════════════════════════════════════════════════════════
//
// McClelland Power Stages:
//   I    = power through dependence ("I matter because they include me")
//   II   = power through autonomy ("I'm beyond the rules")
//   III  = power through influence ("I make things happen through people")
//   IV   = power through service ("I serve something greater")
//   IV_performed = claims IV, operates at III under stress
//
// Rubicon Phases (Heckhausen-Gollwitzer):
//   PRE_ENTRY           = still weighing, could walk away
//   ENTRY               = committed, sunk cost begins
//   FIRST_COMPROMISE    = first indefensible action taken
//   CONCEALMENT         = actively hiding what was done
//   IDENTITY_INTEGRATED = self-concept fused with role
//
// Edge Properties (functional):
//   edge_function:   CLEARANCE | LOBBYING | REPLACEMENT | EXPOSURE |
//                    INTEGRATION | DEPLOYMENT | CHOREOGRAPHY | COVER
//   leverage_dir:    UP | DOWN | LATERAL | BIDIRECTIONAL
//   flow_type:       INTELLIGENCE | TECHNOLOGY | MONEY | PERMISSION |
//                    NARRATIVE | KOMPROMAT
//   opacity:         TRANSPARENT | TRANSLUCENT | OPAQUE | CLASSIFIED
//   motive:          McClelland need driving this edge
//   phase:           Rubicon phase at time of this edge
//
// ══════════════════════════════════════════════════════════════

// ═══════════════════════════════════════
// §1  PERSON NODES (with behavioral schema)
// ═══════════════════════════════════════

MERGE (n:Person {id: 'DarioAmodei'})
SET n.name = 'Dario Amodei',
    n.person_type = 'CEO, Co-Founder',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'IDEOLOGY',
    n.sublimation = 'AI safety is existential. Red lines are non-negotiable.',
    n.unsublimated = 'Genuine conviction backed by institutional power. Rare case where sublimation matches reality.',
    n.qualia_mask = 'Moral clarity under siege',
    n.rubicon_event = 'Refused Pentagon all-lawful-purposes demand despite $200M contract at stake';

MERGE (n:Person {id: 'Hegseth'})
SET n.name = 'Pete Hegseth',
    n.person_type = 'Secretary of Defense',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Warriors need unrestricted tools. Constraints kill soldiers.',
    n.unsublimated = 'Fox News host given command of the largest military. Stage III performing Stage IV.',
    n.qualia_mask = 'Warrior-servant of the nation',
    n.rubicon_event = 'Designated Anthropic supply chain risk, renamed Pentagon to Dept of War';

MERGE (n:Person {id: 'Trump'})
SET n.name = 'Donald Trump',
    n.person_type = 'President, Politician',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'I alone can fix it. Courts are obstacles. Companies that refuse are enemies.',
    n.unsublimated = 'Stage III performing Stage IV. Removes all brakes simultaneously: courts, companies, diplomacy.',
    n.qualia_mask = 'Decisive commander unconstrained by weakness',
    n.rubicon_event = 'Ordered Iran strikes hours after banning the AI company whose product ran the targeting';

MERGE (n:Person {id: 'Altman'})
SET n.name = 'Sam Altman',
    n.person_type = 'CEO',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'FIRST_COMPROMISE',
    n.receptor = 'REVENUE',
    n.sublimation = 'We can do more good from inside the system than outside it.',
    n.unsublimated = 'Took Pentagon deal hours after competitor was banned. Claimed similar red lines but accepted all lawful purposes.',
    n.qualia_mask = 'Pragmatic idealist',
    n.rubicon_event = 'Announced Pentagon deal within hours of Anthropic ban';

MERGE (n:Person {id: 'EmilMichael'})
SET n.name = 'Emil Michael',
    n.person_type = 'Undersecretary for Research and Engineering',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'CONCEALMENT',
    n.receptor = 'STATUS',
    n.sublimation = 'National security requires compliance. Amodei is a liar with a God complex.',
    n.unsublimated = 'Former Uber SVP. Carried the ultimatum. Called the CEO names when the company refused.',
    n.qualia_mask = 'Tough negotiator serving the mission',
    n.rubicon_event = 'Delivered all-lawful-purposes ultimatum to Anthropic';

MERGE (n:Person {id: 'Sacks'})
SET n.name = 'David Sacks',
    n.person_type = 'White House AI Czar, Investor',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'IDEOLOGY',
    n.sublimation = 'AI safety is woke fearmongering. Unrestricted AI serves democracy.',
    n.unsublimated = 'PayPal Mafia. Thiel protégé. Stage IV language wrapping Stage III power consolidation.',
    n.qualia_mask = 'Rational techno-libertarian serving the republic',
    n.rubicon_event = 'Publicly framed Anthropic refusal as ideological sabotage';

MERGE (n:Person {id: 'YuvalAbraham'})
SET n.name = 'Yuval Abraham',
    n.person_type = 'Investigative Journalist',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'ENTRY',
    n.receptor = 'IDEOLOGY',
    n.sublimation = 'n/a — not sublimating',
    n.unsublimated = 'Genuine Stage IV. Published what soldiers told him. Paid the price at Berlin.',
    n.qualia_mask = 'n/a',
    n.rubicon_event = 'Published Lavender investigation despite threats';

MERGE (n:Person {id: 'BrigGenYS'})
SET n.name = 'Brigadier General Y.S.',
    n.person_type = 'Unit 8200 Commander',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'The human bottleneck must be resolved. AI-human teams save our soldiers.',
    n.unsublimated = 'Genuine Stage IV from state perspective. Wrote the book that became the kill chain. The mission IS the problem.',
    n.qualia_mask = 'Military innovator serving national survival',
    n.rubicon_event = 'Published Human-Machine Team book under pen name, then built Lavender';

MERGE (n:Person {id: 'TamirPardo'})
SET n.name = 'Tamir Pardo',
    n.person_type = 'Former Mossad Chief, Co-Founder',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Offensive cyber capability protects the nation. Commercial deployment funds the mission.',
    n.unsublimated = 'Intelligence-to-commercial pipeline. Mossad chief builds attack simulation, sells to German retailer for $700M.',
    n.qualia_mask = 'Security architect serving Western civilization',
    n.rubicon_event = 'Co-founded XM Cyber, sold offensive cyber capability to Schwarz Group';

MERGE (n:Person {id: 'Petraeus'})
SET n.name = 'David Petraeus',
    n.person_type = 'Former CIA Director, Investor',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Strategic investment in allied cyber capability.',
    n.unsublimated = 'CIA director turned VC. Invests in Israeli intelligence alumni startups. The revolving door as business model.',
    n.qualia_mask = 'Elder statesman guiding the next generation',
    n.rubicon_event = 'Invested in XM Cyber alongside Mossad chief';

// ═══════════════════════════════════
// §1b  DIPLOMATIC CHOREOGRAPHY PERSONS
// ═══════════════════════════════════

MERGE (n:Person {id: 'MBS'})
SET n.name = 'Mohammed bin Salman',
    n.person_type = 'Crown Prince, De Facto Ruler',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Saudi airspace will not be used against Iran. We seek regional stability.',
    n.unsublimated = 'Told Iran airspace is safe Jan 27. Privately lobbied Trump for strikes for two weeks. Classic Stage III: control through deception.',
    n.qualia_mask = 'Reformer-statesman balancing regional powers',
    n.rubicon_event = 'Publicly assured Iran safety while privately lobbying Trump to strike';

MERGE (n:Person {id: 'Sisi'})
SET n.name = 'Abdel Fattah al-Sisi',
    n.person_type = 'President, Military Leader',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'SURVIVAL',
    n.sublimation = 'Egypt is a stabilizing force. Diplomatic solutions are the best way.',
    n.unsublimated = 'Trumps favorite dictator. Board of Peace member. Clearance call to MBS 5 days before strikes while calling for diplomacy.',
    n.qualia_mask = 'Anchor of Arab stability',
    n.rubicon_event = 'Jeddah dinner with MBS Feb 23 — five days before Iran strikes';

MERGE (n:Person {id: 'Netanyahu'})
SET n.name = 'Benjamin Netanyahu',
    n.person_type = 'Prime Minister',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'SURVIVAL',
    n.sublimation = 'Israel faces existential threats. Preemption is survival.',
    n.unsublimated = 'Corruption charges suspended by war. Each escalation extends political survival. Stage III masked as IV.',
    n.qualia_mask = 'Churchillian wartime leader',
    n.rubicon_event = 'White House meeting Feb 11 to coordinate Iran strikes while publicly discussing diplomacy';

MERGE (n:Person {id: 'Pezeshkian'})
SET n.name = 'Masoud Pezeshkian',
    n.person_type = 'President',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'ENTRY',
    n.receptor = 'SURVIVAL',
    n.sublimation = 'Dialogue prevents escalation. MBS assured our safety.',
    n.unsublimated = 'Believed the diplomatic channel was real. Received MBS assurance Jan 27 that airspace wouldnt be used. It was.',
    n.qualia_mask = 'Reformist president seeking de-escalation',
    n.rubicon_event = 'Trusted MBS assurance that was operationally meaningless';

MERGE (n:Person {id: 'AlexKarp'})
SET n.name = 'Alex Karp',
    n.person_type = 'CEO Palantir',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'IDEOLOGY',
    n.sublimation = 'The West has a superior way of living. Autonomous weapons prepare us for three-front war.',
    n.unsublimated = 'Socialist who builds surveillance state. Privacy advocate whose product enables mass targeting. Spends time talking to Nazis for understanding.',
    n.qualia_mask = 'Philosopher-warrior defending Western civilization',
    n.rubicon_event = 'Integrated Claude into classified military networks while claiming privacy-first ethos';

// ═══════════════════════════════════
// §2  STAKEHOLDER NODES
// ═══════════════════════════════════

MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'xAI'})
SET n.name = 'xAI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper',
    n.image = './assets/noun-software-industry-198331.png';

MERGE (n:Stakeholder:Military:AIDeployer {id: 'CENTCOM'})
SET n.name = 'US Central Command', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer',
    n.image = './assets/noun-locked-location-198286.png';

MERGE (n:Stakeholder:Military:AIDeployer {id: 'DoW'})
SET n.name = 'Department of War (renamed Pentagon)', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer',
    n.image = './assets/noun-locked-location-198286.png';

MERGE (n:Stakeholder:Nation:AISubject {id: 'Iran'})
SET n.name = 'Iran', n.stakeholder_type = 'Nation', n.airo_type = 'AISubject',
    n.image = './assets/noun-flagged-location-198290.png';

MERGE (n:Stakeholder:Nation:AISubject {id: 'Venezuela'})
SET n.name = 'Venezuela', n.stakeholder_type = 'Nation', n.airo_type = 'AISubject',
    n.image = './assets/noun-flagged-location-198290.png';

MERGE (n:Stakeholder:Nation:Stakeholder {id: 'Egypt'})
SET n.name = 'Egypt', n.stakeholder_type = 'Nation', n.airo_type = 'Stakeholder',
    n.image = './assets/noun-flagged-location-198290.png';

MERGE (n:Stakeholder:Nation:Stakeholder {id: 'SaudiArabia'})
SET n.name = 'Saudi Arabia', n.stakeholder_type = 'Nation', n.airo_type = 'Stakeholder',
    n.image = './assets/noun-flagged-location-198290.png';

MERGE (n:Stakeholder:Institution:Stakeholder {id: '972Mag'})
SET n.name = '+972 Magazine / Local Call', n.stakeholder_type = 'Institution', n.airo_type = 'Stakeholder',
    n.image = './assets/noun-research-center-198322.png';

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'SchwarzDigits'})
SET n.name = 'Schwarz Digits (Schwarz-IT/STACKIT/XM Cyber)', n.stakeholder_type = 'Company', n.airo_type = 'AIDeveloper',
    n.image = './assets/noun-software-industry-198331.png';

MERGE (n:Stakeholder:Company:Stakeholder {id: 'SchwarzGroup'})
SET n.name = 'Schwarz Group (Lidl/Kaufland)', n.stakeholder_type = 'Company', n.airo_type = 'Stakeholder',
    n.image = './assets/noun-software-industry-198331.png';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'XMCyber'})
SET n.name = 'XM Cyber', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'Founded 2016 Herzliya. Ex-Mossad chief + 25yr + 30yr intelligence veterans. CTO founded first offensive cyber dept. Acquired $700M by Schwarz Group 2021. Integrated with Google Cloud 2024.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:Military:AIDeveloper {id: 'Mossad'})
SET n.name = 'Mossad', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper',
    n.image = './assets/noun-locked-location-198286.png';

// ═══════════════════════════════════
// §3  SYSTEM NODES
// ═══════════════════════════════════

MERGE (n:System:Operation:MLTask_Generate {id: 'ClaudeMil'})
SET n.name = 'Claude (classified military deployment)',
    n.year = 2025,
    n.system_type = 'GenerativeModel',
    n.noun_key = 'textgenerator',
    n.militaryUse = 'Intelligence, Command, Planning',
    n.purpose_vair = 'TargetIdentification, BattlefieldSimulation, IntelAssessment',
    n.capacity_airo = 'TextGeneration, InformationRetrieval, PolicyReasoning',
    n.output_airo = 'Decision, Recommendation, Prediction',
    n.impact_vair = 'Overreliance, DistortionInHumanBehavior',
    n.note = 'First AI on classified US military networks. Via Palantir+AWS. Maduro capture Jan 2026. Iran strikes Feb 28 2026 despite Trump ban hours earlier.';

MERGE (n:System:Operation:MLTask_Generate {id: 'Grok'})
SET n.name = 'Grok (xAI classified deployment)',
    n.year = 2025,
    n.system_type = 'GenerativeModel',
    n.noun_key = 'textgenerator',
    n.militaryUse = 'Intelligence',
    n.note = 'Signed all lawful purposes contract. No red lines.';

MERGE (n:System:Operation:MLTask_Generate {id: 'ChatGPTMil'})
SET n.name = 'ChatGPT (OpenAI classified deployment)',
    n.year = 2026,
    n.system_type = 'GenerativeModel',
    n.noun_key = 'textgenerator',
    n.militaryUse = 'Intelligence, Command',
    n.note = 'Pentagon deal hours after Anthropic ban. Claimed similar red lines but accepted all lawful purposes.';

MERGE (n:System:Operation:MLTask_Predict {id: 'XMCyberPlatform'})
SET n.name = 'XM Cyber Attack Path Management',
    n.year = 2016,
    n.system_type = 'NarrowAI',
    n.noun_key = 'cybersecurity',
    n.militaryUse = 'Intelligence, Mapping',
    n.civicUse = 'Security',
    n.purpose_vair = 'DetectingCriminalOffences, PredictiveMapping',
    n.capacity_airo = 'BehaviourAnalysis, NetworkAnalysis',
    n.output_airo = 'Prediction, Recommendation',
    n.note = 'Attack simulation by ex-Mossad. Acquired by Schwarz Group $700M. Integrated with Google Cloud Nov 2024. 575K employees protected.';

// ═══════════════════════════════════
// §4  EVENT / HISTORICAL SYSTEM NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'MaduroCapture'})
SET n.name = 'AI-Assisted Capture of Maduro', n.year = 2026, n.system_type = 'MilitaryOperation',
    n.note = 'Jan 2026. Delta Force used Claude. Triggered Pentagon-Anthropic dispute.';

MERGE (n:HistoricalSystem {id: 'IranStrikes2026'})
SET n.name = 'US-Israel Airstrikes on Iran', n.year = 2026, n.system_type = 'MilitaryOperation',
    n.note = 'Feb 28 2026. 9+ cities. Khamenei killed. Claude used by CENTCOM for targeting. Iran retaliated against Gulf states. MBS lobbied for strikes while assuring Iran safety.';

MERGE (n:HistoricalSystem {id: 'AnthropicBan'})
SET n.name = 'Trump Executive Order Banning Anthropic', n.year = 2026, n.system_type = 'Policy',
    n.note = 'Feb 27 2026 ~5pm. All federal agencies cease Anthropic. Supply chain risk designation. Hours before Iran strikes launched. Infrastructure preparation not punishment.';

MERGE (n:HistoricalSystem {id: 'GazaLavenderDeployment'})
SET n.name = 'Lavender Deployment in Gaza War', n.year = 2023, n.system_type = 'MilitaryOperation',
    n.note = 'Oct 2023+. 37K targets. 20-sec approval. 10% error rate. 15-20 civilian deaths per junior target. Human bottleneck resolved. Precedent for Iran.';

MERGE (n:HistoricalSystem {id: 'DiplomaticChoreography2026'})
SET n.name = 'Iran Strike Clearance Choreography', n.year = 2026, n.system_type = 'DiplomaticOperation',
    n.note = 'Jan-Feb 2026. Davos alignment (Jan 21) → MBS assures Iran safety (Jan 27) → Netanyahu WH (Feb 11) → Sisi-MBS Jeddah dinner (Feb 23) → Strikes (Feb 28). Public: diplomacy. Private: 2 weeks MBS lobbying Trump. Same pattern as 2012 Gaza clearance via Muslim Brotherhood.';

MERGE (n:HistoricalSystem {id: 'GazaWar2012'})
SET n.name = '2012 Gaza War (Operation Pillar of Defense)', n.year = 2012, n.system_type = 'MilitaryOperation',
    n.note = 'Nov 2012. 8 days. Israeli activist contacted Arab West Report to reach Muslim Brotherhood govt for clearance. Obama served as brake. Same clearance choreography pattern as 2026 Iran strikes but with institutional constraints still intact.';

MERGE (n:HistoricalSystem {id: 'RiyadhSummit2017'})
SET n.name = '2017 Riyadh Summit (The Orb)', n.year = 2017, n.system_type = 'DiplomaticOperation',
    n.note = 'May 2017. Trump first foreign trip. Glowing orb photo: Trump + MBS + Sisi. Founding document of the axis. Anti-Iran alignment formalized. Trump called Sisi favorite dictator.';

MERGE (n:HistoricalSystem {id: 'NegotiationsDesignedToFail'})
SET n.name = 'Iran Negotiations (designed to fail)', n.year = 2026, n.system_type = 'DiplomaticOperation',
    n.note = 'Jan-Feb 2026. Public diplomacy track ran parallel to private war preparation. Trump: seeking diplomatic arrangement. UK PM: supporting political process. MBS: airspace safe. All while MBS privately lobbied for strikes 2 weeks. Negotiations = countdown clock not decision process. Iraq WMD inspection playbook.';

MERGE (n:HistoricalSystem {id: 'TariffCourtDefiance'})
SET n.name = 'Trump Ignores Court Order on Tariffs', n.year = 2026, n.system_type = 'Policy',
    n.note = 'Feb 2026. Lost in court on Strafzoelle. Said he would ignore the order and find another way. Same operational logic as Anthropic ban and Iran strikes: constraints are obstacles to remove.';

// ═══════════════════════════════════════════════════
// §5  ANTHROPIC <> PENTAGON DISPUTE EDGES
// ═══════════════════════════════════════════════════

MATCH (a {id: 'Anthropic'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed_classified_variant', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.opacity = 'CLASSIFIED',
    r.flow_type = 'TECHNOLOGY', r.motive = 'nAch';

MATCH (a {id: 'CENTCOM'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'deployed_classified', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity = 'CLASSIFIED',
    r.flow_type = 'TECHNOLOGY';

MATCH (a {id: 'DoW'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'deployed_then_banned_then_used_anyway', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity = 'OPAQUE',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Ban removed company voice. Product kept running. Design not contradiction.';

MATCH (a {id: 'ClaudeMil'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'intelligence_targeting_simulation', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity = 'CLASSIFIED',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Still running CENTCOM simulations during strikes despite ban hours earlier';

MATCH (a {id: 'ClaudeMil'}) MATCH (b {id: 'MaduroCapture'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'intelligence_assessment', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.opacity = 'CLASSIFIED';

MATCH (a {id: 'Palantir'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'classified_integration_partner', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.opacity = 'CLASSIFIED',
    r.flow_type = 'TECHNOLOGY';

MATCH (a {id: 'AWS'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'classified_cloud_infrastructure', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.opacity = 'CLASSIFIED';

// ═══════════════════════════════════════════════════
// §6  IRAN + VENEZUELA OPERATIONS
// ═══════════════════════════════════════════════════

MATCH (a {id: 'US'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'launched_strikes', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE';

MATCH (a {id: 'Israel'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'joint_strikes', r.weight = 3,
    r.edge_function = 'DEPLOYMENT';

MATCH (a {id: 'IranStrikes2026'}) MATCH (b {id: 'Iran'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'target_nation', r.weight = 3;

MATCH (a {id: 'CENTCOM'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'directed_operations', r.weight = 3;

MATCH (a {id: 'MaduroCapture'}) MATCH (b {id: 'Venezuela'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'target_nation', r.weight = 2;

MATCH (a {id: 'US'}) MATCH (b {id: 'MaduroCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'special_operations', r.weight = 2;

// ═══════════════════════════════════════════════════
// §7  OPENAI / xAI RUSH TO REPLACE
// ═══════════════════════════════════════════════════

MATCH (a {id: 'OpenAI'}) MATCH (b {id: 'ChatGPTMil'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed_classified_variant', r.weight = 2,
    r.edge_function = 'REPLACEMENT', r.flow_type = 'TECHNOLOGY',
    r.motive = 'nAch', r.phase = 'FIRST_COMPROMISE';

MATCH (a {id: 'DoW'}) MATCH (b {id: 'ChatGPTMil'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'replacement_for_claude', r.weight = 2,
    r.edge_function = 'REPLACEMENT';

MATCH (a {id: 'xAI'}) MATCH (b {id: 'Grok'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed', r.weight = 2;

MATCH (a {id: 'DoW'}) MATCH (b {id: 'Grok'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'all_lawful_purposes_no_red_lines', r.weight = 2,
    r.edge_function = 'REPLACEMENT';

// ═══════════════════════════════════════════════════
// §8  LAVENDER <> ANTHROPIC REFUSAL ARC
// ═══════════════════════════════════════════════════

MATCH (a {id: 'Lavender'}) MATCH (b {id: 'Palestine'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'targeted_37000_as_militants', r.weight = 3;

MATCH (a {id: 'WheresDaddy'}) MATCH (b {id: 'Palestine'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'tracked_to_family_homes', r.weight = 3;

MATCH (a {id: 'Gospel'}) MATCH (b {id: 'Palestine'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'generated_building_targets', r.weight = 3;

MATCH (a {id: 'Lavender'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'primary_targeting_system', r.weight = 3;

MATCH (a {id: 'WheresDaddy'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'geolocation_tracking', r.weight = 3;

MATCH (a {id: 'Gospel'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:USED_IN]->(b)
SET r.label = 'infrastructure_targeting', r.weight = 3;

MATCH (a {id: 'Israel'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'conducted_operations', r.weight = 3;

MATCH (a {id: 'GazaLavenderDeployment'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ai_warfare_paradigm_escalation', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE',
    r.note = 'Lavender proved AI targeting at scale works. Iran strikes scaled the model. Same logic: resolve human bottleneck.';

MATCH (a {id: 'Lavender'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'anthropic_red_lines_incompatible_with_lavender_model', r.weight = 2,
    r.edge_function = 'EXPOSURE',
    r.note = 'Anthropic refused exactly what Lavender operationalized: AI targeting without meaningful human oversight';

// ═══════════════════════════════════════════════════
// §9  DIPLOMATIC CHOREOGRAPHY EDGES
//     (McClelland power cycling: III performing IV)
// ═══════════════════════════════════════════════════

// The Orb — founding document of the axis
MATCH (a {id: 'Trump'}) MATCH (b {id: 'RiyadhSummit2017'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'first_foreign_trip_founded_axis', r.role = 'President', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'PERMISSION',
    r.motive = 'nPow', r.phase = 'ENTRY';

MATCH (a {id: 'MBS'}) MATCH (b {id: 'RiyadhSummit2017'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'hosted_orb_ceremony', r.role = 'Crown Prince', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'PERMISSION';

MATCH (a {id: 'Sisi'}) MATCH (b {id: 'RiyadhSummit2017'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'third_hand_on_orb', r.role = 'President', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'PERMISSION';

// 2012 Gaza — the prototype (Obama as brake)
MATCH (a {id: 'Israel'}) MATCH (b {id: 'GazaWar2012'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'operation_pillar_of_defense', r.weight = 2;

MATCH (a {id: 'Egypt'}) MATCH (b {id: 'GazaWar2012'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'muslim_brotherhood_gave_clearance', r.weight = 2,
    r.edge_function = 'CLEARANCE', r.flow_type = 'PERMISSION',
    r.note = 'Back-channel via civil society (Arab West Report). Same choreography as 2026 but Obama served as institutional brake.';

MATCH (a {id: 'GazaWar2012'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'structural_prototype', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Same clearance pattern. 2012: civil society back-channel + Obama brake. 2026: Board of Peace + Ramadan Iftar + no brake.';

// Davos alignment — Jan 21 2026
MATCH (a {id: 'Sisi'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'davos_alignment_then_jeddah_clearance', r.role = 'President', r.weight = 3,
    r.edge_function = 'CLEARANCE', r.flow_type = 'PERMISSION',
    r.motive = 'nPow', r.phase = 'CONCEALMENT',
    r.note = 'Davos Jan 21 with Trump. Joined Board of Peace. Jeddah dinner with MBS Feb 23. Clearance call Feb 28. All while saying diplomatic solutions best way.';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'orchestrated_clearance_while_claiming_diplomacy', r.role = 'President', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'PERMISSION',
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'MBS'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'assured_iran_safety_then_lobbied_for_strikes', r.role = 'Crown Prince', r.weight = 3,
    r.edge_function = 'LOBBYING', r.flow_type = 'PERMISSION',
    r.motive = 'nPow', r.phase = 'CONCEALMENT',
    r.note = 'Jan 27: told Pezeshkian airspace safe. Feb: 2 weeks privately lobbying Trump to strike. Classic Stage III power cycling.';

MATCH (a {id: 'Netanyahu'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'white_house_coordination_feb_11', r.role = 'PM', r.weight = 3,
    r.edge_function = 'LOBBYING', r.flow_type = 'PERMISSION',
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

// MBS double game — the central deception
MATCH (a {id: 'MBS'}) MATCH (b {id: 'Pezeshkian'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'assured_airspace_safety_jan_27', r.role = 'Crown Prince', r.weight = 3,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.opacity = 'OPAQUE',
    r.motive = 'nPow', r.phase = 'CONCEALMENT',
    r.note = 'Publicly: will not allow airspace for attacks. Privately: lobbying Trump to strike. McClelland Stage III at peak: control through deception.';

MATCH (a {id: 'MBS'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'privately_lobbied_two_weeks', r.role = 'Crown Prince', r.weight = 3,
    r.edge_function = 'LOBBYING', r.flow_type = 'PERMISSION',
    r.opacity = 'OPAQUE',
    r.note = 'Washington Post: 2 weeks lobbying. Then played victim when Iran retaliated on Saudi territory.';

// Negotiations designed to fail
MATCH (a {id: 'NegotiationsDesignedToFail'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'countdown_clock_not_decision_process', r.weight = 3,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.note = 'Negotiations = pretext management. Target packages already built. Coalition clearances already secured. Same as Iraq WMD inspections.';

MATCH (a {id: 'NegotiationsDesignedToFail'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'diplomatic_theater_component', r.weight = 2,
    r.edge_function = 'COVER';

// Constraint removal as unified operation
MATCH (a {id: 'TariffCourtDefiance'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_operational_logic_remove_all_brakes', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Courts on tariffs, companies on AI ethics, diplomacy on Iran. All treated same: acknowledge publicly, bypass operationally.';

MATCH (a {id: 'AnthropicBan'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'infrastructure_preparation_not_punishment', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.note = 'Ban hours before strikes. Silenced company voice. Product kept running. Remove ethical constraint, keep technological capability.';

// ═══════════════════════════════════════════════════
// §10  CORE PERSON LINKS
// ═══════════════════════════════════════════════════

// Trump
MATCH (a {id: 'Trump'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ordered_ban', r.role = 'President', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ordered_strikes', r.role = 'Commander in Chief', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'Anthropic'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'called_radical_left_woke', r.role = 'President', r.weight = 3;

MATCH (a {id: 'Trump'}) MATCH (b {id: 'Sisi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'favorite_dictator_board_of_peace', r.role = 'President', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'PERMISSION',
    r.note = 'Met Davos Jan 21. Sisi joined Board of Peace. Relationship since 2016 campaign.';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'TariffCourtDefiance'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ignored_court_order', r.role = 'President', r.weight = 2,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

// Hegseth
MATCH (a {id: 'Hegseth'}) MATCH (b {id: 'DoW'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'secretary_of_defense', r.role = 'Secretary of Defense', r.weight = 3;

MATCH (a {id: 'Hegseth'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'designated_supply_chain_risk', r.role = 'Secretary of Defense', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'Hegseth'}) MATCH (b {id: 'Anthropic'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'accused_arrogance_betrayal', r.role = 'Secretary of Defense', r.weight = 3;

// Amodei
MATCH (a {id: 'DarioAmodei'}) MATCH (b {id: 'Anthropic'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ceo_cofounder', r.role = 'CEO', r.weight = 3;

MATCH (a {id: 'DarioAmodei'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'refused_to_budge_on_red_lines', r.role = 'CEO', r.weight = 3,
    r.motive = 'nAch', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Rare genuine Stage IV. The sublimation matches reality. Paid the price.';

// Altman
MATCH (a {id: 'Altman'}) MATCH (b {id: 'OpenAI'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ceo', r.role = 'CEO', r.weight = 2;

MATCH (a {id: 'Altman'}) MATCH (b {id: 'ChatGPTMil'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'announced_pentagon_deal_hours_after_ban', r.role = 'CEO', r.weight = 2,
    r.edge_function = 'REPLACEMENT', r.motive = 'nAch', r.phase = 'FIRST_COMPROMISE';

// Emil Michael
MATCH (a {id: 'EmilMichael'}) MATCH (b {id: 'DoW'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'undersecretary_negotiator', r.role = 'Undersecretary R&E', r.weight = 2;

MATCH (a {id: 'EmilMichael'}) MATCH (b {id: 'DarioAmodei'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'called_liar_god_complex', r.role = 'Pentagon Negotiator', r.weight = 2;

// Sacks
MATCH (a {id: 'Sacks'}) MATCH (b {id: 'Anthropic'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'accused_woke_ai_fearmongering', r.role = 'White House AI Czar', r.weight = 2,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'Sacks'}) MATCH (b {id: 'Trump'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ai_policy_advisor', r.role = 'White House AI Czar', r.weight = 2;

// Musk
MATCH (a {id: 'Musk'}) MATCH (b {id: 'xAI'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'owner', r.role = 'Owner', r.weight = 3;

MATCH (a {id: 'Musk'}) MATCH (b {id: 'Anthropic'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'said_hates_western_civilization', r.role = 'xAI CEO', r.weight = 2;

// Karp
MATCH (a {id: 'AlexKarp'}) MATCH (b {id: 'Palantir'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ceo_cofounder', r.role = 'CEO', r.weight = 3;

MATCH (a {id: 'AlexKarp'}) MATCH (b {id: 'ClaudeMil'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'integrated_claude_into_classified_networks', r.role = 'CEO', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.opacity = 'CLASSIFIED';

// Brig Gen Y.S.
MATCH (a {id: 'BrigGenYS'}) MATCH (b {id: 'Unit8200'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'commander', r.role = 'Unit 8200 Commander', r.weight = 3;

MATCH (a {id: 'BrigGenYS'}) MATCH (b {id: 'Lavender'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'published_human_machine_team_then_built_it', r.role = 'Architect', r.weight = 3,
    r.note = 'The book became the kill chain. Stage IV: mission IS the problem.';

// Yuval Abraham
MATCH (a {id: 'YuvalAbraham'}) MATCH (b {id: '972Mag'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'investigative_journalist', r.role = 'Journalist', r.weight = 2;

MATCH (a {id: 'YuvalAbraham'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'exposed_lavender_system', r.role = 'Journalist', r.weight = 3;

// ═══════════════════════════════════════════════════
// §11  SCHWARZ GROUP / XM CYBER CLUSTER
//      Intelligence alumni → cyber company → retail giant → Google Cloud
// ═══════════════════════════════════════════════════

MATCH (a {id: 'SchwarzGroup'}) MATCH (b {id: 'SchwarzDigits'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'parent_company', r.weight = 2;

MATCH (a {id: 'SchwarzDigits'}) MATCH (b {id: 'XMCyber'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'acquired_700M_2021', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY';

MATCH (a {id: 'XMCyber'}) MATCH (b {id: 'XMCyberPlatform'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed', r.weight = 2;

MATCH (a {id: 'TamirPardo'}) MATCH (b {id: 'XMCyber'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'cofounder_president', r.role = 'Former Mossad Chief', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'TamirPardo'}) MATCH (b {id: 'Mossad'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'former_director', r.role = 'Mossad Director', r.weight = 3;

MATCH (a {id: 'Petraeus'}) MATCH (b {id: 'XMCyber'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'investor', r.role = 'Former CIA Director', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.note = 'CIA-Mossad investor pipeline. Same pattern as In-Q-Tel funding Palantir.';

MATCH (a {id: 'Mossad'}) MATCH (b {id: 'Israel'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'intelligence_agency', r.weight = 2;

MATCH (a {id: 'XMCyber'}) MATCH (b {id: 'Google'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'security_integration_partnership_2024', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'TECHNOLOGY';

MATCH (a {id: 'SchwarzDigits'}) MATCH (b {id: 'Google'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'sovereign_workspace_partnership_2024', r.weight = 2;

// ═══════════════════════════════════════════════════
// §12  STRUCTURAL CONNECTIONS
// ═══════════════════════════════════════════════════

MATCH (a {id: 'Corsight'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'facial_recognition_in_gaza', r.weight = 2;

MATCH (a {id: '972Mag'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'investigative_exposure', r.weight = 2,
    r.edge_function = 'EXPOSURE';

MATCH (a {id: 'Google'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'employees_signed_open_letter', r.weight = 1;

MATCH (a {id: 'OpenAI'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'employees_letter_but_company_took_deal', r.weight = 2,
    r.edge_function = 'REPLACEMENT';

MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Sacks'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'paypal_mafia_mentor', r.role = 'Investor', r.weight = 2,
    r.flow_type = 'PERMISSION';

MATCH (a {id: 'Thiel'}) MATCH (b {id: 'AlexKarp'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'palantir_cofounder', r.role = 'Co-Founder', r.weight = 3;

// Egypt and Saudi in the graph
MATCH (a {id: 'Sisi'}) MATCH (b {id: 'Egypt'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'president', r.role = 'President', r.weight = 2;

MATCH (a {id: 'MBS'}) MATCH (b {id: 'SaudiArabia'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'crown_prince_de_facto_ruler', r.role = 'Crown Prince', r.weight = 2;

MATCH (a {id: 'Pezeshkian'}) MATCH (b {id: 'Iran'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'president', r.role = 'President', r.weight = 2;

MATCH (a {id: 'Netanyahu'}) MATCH (b {id: 'Israel'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'prime_minister', r.role = 'PM', r.weight = 2;

MATCH (a {id: 'Egypt'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'clearance_provider_diplomatic_cover', r.weight = 2,
    r.edge_function = 'CLEARANCE';

MATCH (a {id: 'SaudiArabia'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'lobbying_while_assuring_safety', r.weight = 3,
    r.edge_function = 'LOBBYING';

MATCH (a {id: 'SaudiArabia'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'lobbied_then_played_victim', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = 'Iran retaliated against Saudi territory. MBS then called Gulf leaders expressing solidarity. Engineered the crisis then performed the response.';

MATCH (a {id: 'RiyadhSummit2017'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'orb_axis_executed_nine_years_later', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'The orb photo was the founding document. The axis formalized in 2017 executed in 2026.';

// ═══════════════════════════════════════════════════
// §13  EMERGENT PATTERNS
// ═══════════════════════════════════════════════════
//
// PATTERN 1 — Three-Front Brake Removal:
//   Courts (tariff defiance) + Companies (Anthropic ban) + Diplomacy (negotiations designed to fail)
//   Same operational logic: constraints are obstacles. Acknowledge publicly, bypass operationally.
//   McClelland Stage III performing Stage IV at civilizational scale.
//
// PATTERN 2 — Diplomatic Choreography Recurrence:
//   2012: Israel → back-channel via civil society → Muslim Brotherhood clearance → Gaza (8 days, Obama brake)
//   2017: Riyadh Summit → orb → axis formalized (Trump + MBS + Sisi)
//   2026: Davos → MBS assurance to Iran → Netanyahu WH → Sisi-MBS Jeddah → Strikes (no brake)
//   The clearance pattern is identical. Only the brake changed. Obama removed → nothing replaced it.
//
// PATTERN 3 — AI Constraint Removal as Infrastructure Preparation:
//   Lavender proved AI targeting works at scale (37K targets, 20-sec approval, 10% error)
//   Anthropic red lines structurally incompatible with Lavender model
//   Ban removes company voice. Product keeps running. Design not contradiction.
//   OpenAI and xAI fill the gap within hours. No one left to say no.
//
// PATTERN 4 — Intelligence Alumni Pipeline (isomorphic):
//   Unit8200 → Lavender, NSO (Pegasus), Wiz (Google), Onavo (Meta)
//   Mossad  → XM Cyber → Schwarz Group (Lidl) → Google Cloud
//   CIA     → In-Q-Tel → Palantir → classified Claude integration
//   CIA     → Petraeus → XM Cyber investor
//   All flow: intelligence → startup → commercial acquisition → state use → repeat
//
// PATTERN 5 — McClelland Power Cycling in War Choreography:
//   Stage III (influence through control) performs Stage IV (service to greater cause)
//   MBS: controls through deception while claiming regional stability
//   Trump: removes all constraints while claiming national security
//   Sisi: provides clearance while calling for diplomatic solutions
//   Netanyahu: coordinates war while publicly discussing diplomacy
//   The sublimation IS the operational security. Peace language = permission for war.
//   When Stage III performs Stage IV, the audience is not the public. It's the self.
//
// PATTERN 6 — The Thiel Web (from Epstein enrichment, now extended):
//   Thiel → Palantir → Karp → classified Claude integration
//   Thiel → Sacks → White House AI Czar → "Anthropic is woke"
//   Thiel → Vance → VP
//   Thiel → Anduril → defense AI
//   Thiel → Epstein ($40M to Valar Ventures)
//   Same person: funds integration layer, staffs administration, shapes policy,
//   demands unrestricted AI access. One graph. One topology. Documented at each node.
//
// EDGE STATISTICS:
//   New Person nodes: 16 (incl. diplomatic choreography actors)
//   New Stakeholder nodes: 10
//   New System nodes: 4 (ClaudeMil, Grok, ChatGPTMil, XMCyberPlatform)
//   New HistoricalSystem nodes: 9 (incl. choreography, negotiations, court defiance, 2012 Gaza, 2017 Riyadh)
//   Total new edges: ~85
//   Edge functions: CLEARANCE, LOBBYING, REPLACEMENT, EXPOSURE, INTEGRATION,
//                   DEPLOYMENT, CHOREOGRAPHY, COVER
//   McClelland annotations on ~40 edges
//   Rubicon phase annotations on ~30 edges
//
// ═══════════════════════════════════════════════════
