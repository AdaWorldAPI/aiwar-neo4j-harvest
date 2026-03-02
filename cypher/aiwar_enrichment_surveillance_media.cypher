// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Surveillance Infrastructure × Media Capture
// The Three-Layer Authoritarian Stack
// ═══════════════════════════════════════════════════════════════════
// Supplements: aiwar_enrichment_anthropic_iran.cypher
// Source: EgyptWatch/Disclose (Egypt Papers), SMEX, TIMEP, Citizen Lab,
//         Masaar, CNBC, NPR, CNN, Wikipedia, FMT, Variety, Deadline
// Generated: 2026-03-02
//
// ARCHITECTURE:
//   Layer 1 — Political Legitimacy: "Without me there is chaos" (McClelland IV_performed)
//   Layer 2 — Surveillance Infrastructure: DPI, Pegasus, Cerebro, Sandvine, Palantir
//   Layer 3 — AI-Controlled Warfare: Lavender, Claude, Grok, ChatGPT
//   Layer 4 — Media Capture: FCC pressure, settlements, editorial control
//   The layers are self-reinforcing: legitimacy purchases surveillance,
//   surveillance generates targeting data, AI scales targeting,
//   media capture prevents exposure, cycle repeats.
// ═══════════════════════════════════════════════════════════════════

// ═══════════════════════════════════
// §1  SURVEILLANCE INFRASTRUCTURE NODES
// ═══════════════════════════════════

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'NexaTech'})
SET n.name = 'Nexa Technologies (formerly Amesys)',
    n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'French surveillance firm. Sold Cerebro to Egypt via UAE funding. Under judicial investigation in France for complicity in torture and enforced disappearance.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Sandvine'})
SET n.name = 'Sandvine',
    n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'PacketLogic DPI devices used in Egypt for website blocking, cryptocurrency mining injection, and surveillance. Citizen Lab documented fingerprint 0x3412.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'BlueCoat'})
SET n.name = 'Blue Coat Systems (now Symantec)',
    n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'US company. ProxySG DPI software imported by Egypt 2013. Geolocation, tracking, monitoring, filtering, WhatsApp/Viber/Skype hacking.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'DarkMatter'})
SET n.name = 'DarkMatter',
    n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'Emirati cyber company. Hired former NSA/CIA operatives (Project Raven). Spied on activists, Qatari emir, US citizens. UAE domestic surveillance arm.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'HackingTeam'})
SET n.name = 'Hacking Team',
    n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper',
    n.note = 'Italian surveillance firm. Provided tools to Egyptian government. SSH protocol blocked in Egypt since 2016 partly due to their deployments.',
    n.image = './assets/noun-radiation-205518.png';

MERGE (n:Stakeholder:Nation:AIDeployer {id: 'UAE'})
SET n.name = 'United Arab Emirates',
    n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer',
    n.note = 'Funded Egypt surveillance infrastructure. €150M cash to Sisi after 2013 coup. Purchased Cerebro via Nexa for Egypt. DarkMatter domestic surveillance. Khalifa/MBZ: without me chaos.',
    n.image = './assets/noun-flagged-location-198290.png';

// System nodes for surveillance tech
MERGE (n:System:Operation:MLTask_Monitor {id: 'Cerebro'})
SET n.name = 'Cerebro (mass surveillance system)',
    n.year = 2014,
    n.system_type = 'SurveillanceSystem',
    n.noun_key = 'surveillance',
    n.civicUse = 'Surveillance, Censorship',
    n.purpose_vair = 'MassSurveillance, Monitoring',
    n.capacity_airo = 'DeepPacketInspection, CommunicationInterception',
    n.output_airo = 'Detection, Monitoring',
    n.impact_vair = 'Overreliance, DistortionInHumanBehavior, UnderminingFreedom',
    n.note = 'DPI system. Monitors voice calls, SMS, email, instant messages, social media, search engines. Sold by Nexa Technologies to Egypt, funded by UAE. €11.4M contract 2014.';

MERGE (n:System:Operation:MLTask_Monitor {id: 'ProxySG'})
SET n.name = 'ProxySG (Blue Coat DPI)',
    n.year = 2013,
    n.system_type = 'SurveillanceSystem',
    n.noun_key = 'surveillance',
    n.civicUse = 'Surveillance, Censorship',
    n.purpose_vair = 'MassSurveillance, Geolocation, Tracking',
    n.capacity_airo = 'DeepPacketInspection',
    n.note = 'Geolocation, tracking, monitoring, filtering. WhatsApp, Viber, Skype hacking. Imported by Egypt 2013.';

MERGE (n:System:Operation:MLTask_Monitor {id: 'SandvinePacketLogic'})
SET n.name = 'Sandvine PacketLogic',
    n.year = 2017,
    n.system_type = 'SurveillanceSystem',
    n.noun_key = 'surveillance',
    n.civicUse = 'Surveillance, Censorship, Cryptocurrency Mining',
    n.note = 'Used in Egypt for website blocking (600+ sites 2017-2020), VPN blocking, ad/malware injection. Citizen Lab fingerprint 0x3412.';

// ═══════════════════════════════════
// §2  MEDIA CAPTURE NODES
// ═══════════════════════════════════

MERGE (n:Person {id: 'BrendanCarr'})
SET n.name = 'Brendan Carr',
    n.person_type = 'FCC Chairman',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Rooting out bias. Free market principles. We can do this the easy way or the hard way.',
    n.unsublimated = 'Weaponized FCC to extract settlements, kill editorial independence, block mergers until companies capitulated. Reviews every network except Fox.',
    n.qualia_mask = 'Principled regulator restoring fairness',
    n.rubicon_event = 'Held Paramount merger hostage until CBS settled Trump lawsuit for $16M';

MERGE (n:Person {id: 'DavidEllison'})
SET n.name = 'David Ellison',
    n.person_type = 'CEO Paramount Skydance',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'FIRST_COMPROMISE',
    n.receptor = 'STATUS',
    n.sublimation = 'Building the future of entertainment. Commitment to unbiased journalism.',
    n.unsublimated = 'Son of Larry Ellison (Oracle). Cancelled Colbert. Hired Bari Weiss. Promised FCC to root out bias and end DEI. Sat next to Lindsey Graham at State of Union.',
    n.qualia_mask = 'Visionary media mogul modernizing legacy brands',
    n.rubicon_event = 'Promised FCC to root out bias, end DEI, install ombudsman — in exchange for merger approval';

MERGE (n:Person {id: 'LarryEllison'})
SET n.name = 'Larry Ellison',
    n.person_type = 'Oracle Co-Founder, Billionaire',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Tech and media consolidation serves innovation.',
    n.unsublimated = 'Sat next to Rupert Murdoch in Oval Office Feb 2025. Oracle provides cloud to CIA/DoD. Son now controls CBS+CNN. Tech giant becoming media giant.',
    n.qualia_mask = 'Elder tech statesman',
    n.rubicon_event = 'Son acquiring CBS then CNN while father sits in Oval Office with Murdoch';

MERGE (n:Person {id: 'Mubarak'})
SET n.name = 'Hosni Mubarak',
    n.person_type = 'Former President (deceased)',
    n.mcclelland = 'IV_performed',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'SURVIVAL',
    n.sublimation = 'Without me there is chaos. I am the barrier against the Brotherhood.',
    n.unsublimated = 'Ran the formula for 30 years. Sisi inherited it. The sublimation survived the man.',
    n.qualia_mask = 'Indispensable stabilizer';

MERGE (n:Stakeholder:Institution:Stakeholder {id: 'FCC'})
SET n.name = 'Federal Communications Commission',
    n.stakeholder_type = 'Institution', n.airo_type = 'Stakeholder',
    n.note = 'Under Brendan Carr: weaponized to extract settlements, kill editorial independence, investigate every network except Fox. Reviews ABC, CBS, NBC, NPR, PBS.',
    n.image = './assets/noun-research-center-198322.png';

MERGE (n:Stakeholder:Company:Stakeholder {id: 'ParamountSkydance'})
SET n.name = 'Paramount Skydance Corporation',
    n.stakeholder_type = 'Company', n.airo_type = 'Stakeholder',
    n.note = 'Owns CBS, acquiring CNN/Warner. David Ellison CEO. Paid $16M Trump settlement. Cancelled Colbert. Hired Bari Weiss. Ended DEI. FCC required ombudsman for bias monitoring.',
    n.image = './assets/noun-software-industry-198331.png';

MERGE (n:Stakeholder:Company:Stakeholder {id: 'Disney'})
SET n.name = 'Walt Disney Company',
    n.stakeholder_type = 'Company', n.airo_type = 'Stakeholder',
    n.note = 'Owns ABC. Paid $15M to settle Trump lawsuit. Suspended Kimmel indefinitely after FCC threat. Needs regulatory approval for NFL-ESPN deal.',
    n.image = './assets/noun-software-industry-198331.png';

// Historical System nodes for media capture events
MERGE (n:HistoricalSystem {id: 'MediaCapture2025'})
SET n.name = 'Trump Media Capture Campaign', n.year = 2025, n.system_type = 'Policy',
    n.note = 'Systematic: Disney $15M settlement (Dec 2024). Paramount $16M settlement (Jul 2025). Colbert cancelled. Kimmel suspended. 60 Minutes producers quit. Bari Weiss installed at CBS. FCC investigated ABC, CBS, NBC, NPR, PBS — not Fox. CNN acquisition pending. Kill all federal funding for public media.';

MERGE (n:HistoricalSystem {id: 'EgyptSurveillanceState'})
SET n.name = 'Egyptian Digital Surveillance Regime', n.year = 2013, n.system_type = 'SurveillanceInfrastructure',
    n.note = '2013: Sisi coup. UAE gives €150M. 2013: Blue Coat ProxySG imported. 2014: Nexa Cerebro funded by UAE. 2017: Sandvine PacketLogic. 2018: NSO Pegasus. 600+ websites blocked. VPNs banned. Signal blocked. SSH blocked since 2016. Devices on submarine cables. Nexa under French judicial investigation for complicity in torture.';

MERGE (n:HistoricalSystem {id: 'WithoutMeChaos'})
SET n.name = '"Without Me There Is Chaos" Legitimacy Pattern', n.year = 1981, n.system_type = 'PoliticalPattern',
    n.note = 'Mubarak (1981-2011): Without me, Muslim Brotherhood. Sisi (2013+): Without me, ISIS and Brotherhood. MBS: Without me, Iran and instability. Khalifa/MBZ: Without me, regional collapse. All sell same product to Washington: I am your brake against worse things. McClelland Stage IV_performed: service language wrapping Stage III power.';

// ═══════════════════════════════════════════════════
// §3  SURVEILLANCE INFRASTRUCTURE EDGES
// ═══════════════════════════════════════════════════

// UAE funded Egypt's surveillance
MATCH (a {id: 'UAE'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'funded_150M_plus_cerebro', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'OPAQUE',
    r.note = '€150M cash to Sisi after coup. Purchased Cerebro via Nexa. Built DarkMatter domestically. Same without-me-chaos legitimacy model.';

MATCH (a {id: 'UAE'}) MATCH (b {id: 'Cerebro'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'purchased_for_egypt', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY';

MATCH (a {id: 'UAE'}) MATCH (b {id: 'DarkMatter'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'domestic_surveillance_arm', r.weight = 2,
    r.edge_function = 'DEPLOYMENT';

// Nexa sold Cerebro
MATCH (a {id: 'NexaTech'}) MATCH (b {id: 'Cerebro'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed_sold_to_egypt', r.weight = 3,
    r.note = '€11.4M contract 2014. Under French judicial investigation for complicity in torture.';

// Blue Coat sold ProxySG
MATCH (a {id: 'BlueCoat'}) MATCH (b {id: 'ProxySG'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed_sold_to_egypt_2013', r.weight = 2;

// Sandvine deployed PacketLogic
MATCH (a {id: 'Sandvine'}) MATCH (b {id: 'SandvinePacketLogic'})
MERGE (a)-[r:DEVELOPED_BY]->(b)
SET r.label = 'developed_deployed_egypt', r.weight = 2;

// Egypt deployed all surveillance systems
MATCH (a {id: 'Egypt'}) MATCH (b {id: 'Cerebro'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'mass_surveillance_of_population', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE';

MATCH (a {id: 'Egypt'}) MATCH (b {id: 'ProxySG'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'dpi_whatsapp_viber_skype', r.weight = 2,
    r.edge_function = 'DEPLOYMENT';

MATCH (a {id: 'Egypt'}) MATCH (b {id: 'SandvinePacketLogic'})
MERGE (a)-[r:DEPLOYED_BY]->(b)
SET r.label = 'website_blocking_vpn_blocking', r.weight = 2,
    r.edge_function = 'DEPLOYMENT';

MATCH (a {id: 'Egypt'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'operates_digital_surveillance_regime', r.weight = 3;

// NSO/Pegasus connection (existing node)
MATCH (a {id: 'NSO'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'pegasus_deployed_2018', r.weight = 2,
    r.edge_function = 'DEPLOYMENT';

// Sisi as operator
MATCH (a {id: 'Sisi'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'built_surveillance_state_after_coup', r.role = 'President', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Came to power 2013 coup. UAE immediately funded surveillance infrastructure. 600+ websites blocked. Activists arrested via device seizures and informant networks.';

// ═══════════════════════════════════════════════════
// §4  MEDIA CAPTURE EDGES
// ═══════════════════════════════════════════════════

// Carr weaponized FCC
MATCH (a {id: 'BrendanCarr'}) MATCH (b {id: 'FCC'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'chairman_weaponized_for_media_capture', r.role = 'FCC Chairman', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED';

MATCH (a {id: 'BrendanCarr'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'held_mergers_hostage', r.role = 'FCC Chairman', r.weight = 3,
    r.edge_function = 'LOBBYING',
    r.note = 'Easy way or hard way. Reviewed every network except Fox. Held Paramount merger until CBS settled. Required ombudsman. Required DEI elimination.';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'orchestrated_media_capture', r.role = 'President', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Lawsuits + FCC pressure + merger leverage. Disney $15M. Paramount $16M. Killed public media funding. Called for license revocation. Crooked journalism should be terminated.';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'BrendanCarr'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'appointed_fcc_loyalist', r.role = 'President', r.weight = 2;

// Disney capitulation
MATCH (a {id: 'Disney'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'settled_15M_suspended_kimmel', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = '$15M settlement Dec 2024. Kimmel suspended indefinitely Sep 2025 after FCC threat. Needs NFL-ESPN regulatory approval. Leverage = compliance.';

// Paramount capitulation
MATCH (a {id: 'ParamountSkydance'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'settled_16M_cancelled_colbert_hired_weiss', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = '$16M settlement Jul 2025. Cancelled Colbert. Hired Bari Weiss as CBS editor-in-chief. Ended DEI. Installed ombudsman. 60 Minutes producers quit. Now acquiring CNN.';

// Ellison family
MATCH (a {id: 'DavidEllison'}) MATCH (b {id: 'ParamountSkydance'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ceo', r.role = 'CEO', r.weight = 3;

MATCH (a {id: 'LarryEllison'}) MATCH (b {id: 'DavidEllison'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'father_oracle_cofounder', r.role = 'Father', r.weight = 2,
    r.note = 'Larry sat next to Murdoch in Oval Office. Oracle provides cloud to CIA/DoD. Son controls CBS, acquiring CNN.';

MATCH (a {id: 'FCC'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'weaponized_regulatory_apparatus', r.weight = 3,
    r.edge_function = 'LOBBYING';

// ═══════════════════════════════════════════════════
// §5  "WITHOUT ME CHAOS" LEGITIMACY PATTERN
// ═══════════════════════════════════════════════════

MATCH (a {id: 'Mubarak'}) MATCH (b {id: 'WithoutMeChaos'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ran_formula_30_years', r.role = 'President 1981-2011', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Without me Muslim Brotherhood takes over. Sold to every US president from Reagan to Obama.';

MATCH (a {id: 'Sisi'}) MATCH (b {id: 'WithoutMeChaos'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'inherited_formula_after_coup', r.role = 'President 2013+', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Without me ISIS and Brotherhood. Added surveillance layer Mubarak lacked. Trumps favorite dictator.';

MATCH (a {id: 'MBS'}) MATCH (b {id: 'WithoutMeChaos'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'without_me_iran_wins', r.role = 'Crown Prince', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'Killed Khashoggi. Lobbied for Iran strikes. Assured Iran airspace safety. Without me Iran dominates the Gulf.';

MATCH (a {id: 'Mubarak'}) MATCH (b {id: 'Sisi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'sublimation_survived_the_man', r.role = 'Predecessor', r.weight = 2,
    r.note = 'The without-me-chaos formula transferred from Mubarak to Sisi. Same structure, upgraded surveillance.';

MATCH (a {id: 'Mubarak'}) MATCH (b {id: 'Egypt'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'president_30_years', r.role = 'President', r.weight = 2;

// ═══════════════════════════════════════════════════
// §6  INTERCONNECTION EDGES — THE STACK
//     Legitimacy → Surveillance → AI Warfare → Media Capture → cycle
// ═══════════════════════════════════════════════════

// Surveillance → AI warfare escalation
MATCH (a {id: 'EgyptSurveillanceState'}) MATCH (b {id: 'GazaLavenderDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'surveillance_to_targeting_pipeline', r.weight = 2,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE',
    r.note = 'DPI monitors populations. Lavender targets them. Same companies (NSO), same intelligence services (Unit8200), same political cover (without me chaos). Technology escalated from monitoring to killing.';

// Media capture → exposure prevention
MATCH (a {id: 'MediaCapture2025'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'exposure_function_disabled', r.weight = 2,
    r.edge_function = 'COVER',
    r.note = 'Captured media cannot critically cover AI ethics disputes. If +972 was under FCC pressure, Lavender investigation doesnt publish. Same logic applied to Anthropic coverage.';

MATCH (a {id: 'MediaCapture2025'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'captured_media_cannot_challenge_war_narrative', r.weight = 2,
    r.edge_function = 'COVER',
    r.note = 'CBS under Bari Weiss. Colbert cancelled. Kimmel suspended. 60 Minutes gutted. CNN being acquired. NPR/PBS defunded. Who covers the war critically?';

// Without-me-chaos → surveillance justification
MATCH (a {id: 'WithoutMeChaos'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'legitimacy_justifies_surveillance', r.weight = 2,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.note = 'Without me chaos = permission to surveil everyone. Counter-terrorism justification. Same formula from Mubarak to Sisi to MBS.';

// Without-me-chaos → diplomatic choreography
MATCH (a {id: 'WithoutMeChaos'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'legitimacy_enables_clearance_role', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Only indispensable allies get clearance calls. Without-me-chaos status = seat at the table = permission to greenlight war while speaking peace.';

// Surveillance → media capture (domestic US version)
MATCH (a {id: 'EgyptSurveillanceState'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'structural_isomorph_different_tools', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Egypt uses DPI + arrests. Trump uses FCC + lawsuits + merger leverage. Different tools, same function: control information flow to prevent exposure of state action.';

// Anthropic ban as media capture equivalent for AI
MATCH (a {id: 'AnthropicBan'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ai_company_silenced_like_media_company', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = 'Kimmel suspended for speech. Anthropic banned for ethics. Same logic: silence the entity that might say no or expose. FCC for media, executive order for AI.';

// UAE → Without me chaos
MATCH (a {id: 'UAE'}) MATCH (b {id: 'WithoutMeChaos'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'khalifa_mbz_same_formula', r.weight = 2,
    r.note = 'Without me, regional collapse. Funds other authoritarian stability (Egypt surveillance). Exports the formula.';

// Self-fulfilling prophecy cycle
MATCH (a {id: 'IranStrikes2026'}) MATCH (b {id: 'WithoutMeChaos'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'war_proves_the_legitimacy_claim', r.weight = 3,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.note = 'Create instability (strikes). Point to instability as proof you are needed. Use proof to justify more surveillance and targeting. Self-fulfilling prophecy architecture.';

// Oracle/Ellison → intelligence cloud → media ownership
MATCH (a {id: 'LarryEllison'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'oracle_cloud_to_media_ownership', r.role = 'Oracle Co-Founder', r.weight = 2,
    r.note = 'Oracle provides cloud to CIA/DoD. Son controls CBS, acquiring CNN. Sat next to Murdoch in Oval Office. Intelligence cloud provider and media owner in same family.';

// ═══════════════════════════════════════════════════
// §7  EMERGENT PATTERNS (supplementary)
// ═══════════════════════════════════════════════════
//
// PATTERN 7 — The Self-Reinforcing Stack:
//   Layer 1 (Political): "Without me chaos" → sells to Washington → gets funding
//   Layer 2 (Surveillance): Funding → DPI/Pegasus/Cerebro → monitors population
//   Layer 3 (AI Warfare): Surveillance data → Lavender/Claude → targets at scale
//   Layer 4 (Media Capture): FCC/lawsuits/mergers → silences exposure function
//   Cycle: War (Iran strikes) → proves chaos claim → justifies more surveillance
//   Each layer enables the next. Remove any layer and the stack collapses.
//   That's why Anthropic was dangerous: it threatened Layer 3.
//   That's why media capture matters: it protects all layers from exposure.
//
// PATTERN 8 — Structural Isomorphism: Egypt DPI ↔ US Media Capture:
//   Egypt: DPI + arrests + website blocking + informant networks
//   US: FCC threats + lawsuits + merger leverage + editorial control
//   Different tools, same function: control information flow
//   Egypt blocks 600 websites. US captures the 6 companies that own the websites.
//   Egypt arrests activists who post on Facebook. US suspends hosts who joke on air.
//   The authoritarian formula doesn't require the same technology. It requires the same topology.
//
// PATTERN 9 — The Ellison Bridge (Oracle → Media → Intelligence):
//   Larry Ellison: Oracle co-founder. Oracle provides cloud to CIA/DoD.
//   David Ellison: Son. Now CEO of CBS. Acquiring CNN via Paramount-Warner $111B deal.
//   Larry sat next to Murdoch in Oval Office Feb 2025.
//   One family: intelligence cloud infrastructure + media editorial control.
//   Same structural position as Thiel (Palantir + political influence).
//   The tech-intelligence-media triangle closes.
//
// PATTERN 10 — Without-Me-Chaos as McClelland Stage IV_performed:
//   Every node using this formula presents as Stage IV (service to greater cause).
//   Every node operating this formula functions at Stage III (power through influence).
//   The sublimation IS the product sold to Washington.
//   The product IS the permission slip for surveillance, war, and media capture.
//   When Stage III performs Stage IV at civilizational scale, the audience is not the public.
//   The audience is the self. The self-fulfilling prophecy runs on self-deception.
//
// SUPPLEMENTARY EDGE STATISTICS:
//   New Person nodes: 4 (Carr, David Ellison, Larry Ellison, Mubarak)
//   New Stakeholder nodes: 8 (NexaTech, Sandvine, BlueCoat, DarkMatter, HackingTeam, UAE, FCC, ParamountSkydance, Disney)
//   New System nodes: 3 (Cerebro, ProxySG, SandvinePacketLogic)
//   New HistoricalSystem nodes: 3 (MediaCapture2025, EgyptSurveillanceState, WithoutMeChaos)
//   Total new edges: ~45
//   CRITICAL INTERCONNECTIONS with main enrichment: 8 cross-layer edges
//   linking surveillance → AI warfare → media capture → legitimacy cycle
//
// ═══════════════════════════════════════════════════
