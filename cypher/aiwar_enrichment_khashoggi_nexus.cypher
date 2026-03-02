// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: The Khashoggi Nexus
// Family Tree × Intelligence Topology × Kompromat Architecture
// ═══════════════════════════════════════════════════════════════════
// Supplements: aiwar_enrichment_epstein.cypher (v3 behavioral model)
//              aiwar_enrichment_anthropic_iran.cypher
//              aiwar_enrichment_surveillance_media.cypher
// Source: Wikipedia (Dodi Fayed, Adnan Khashoggi, Safari Club,
//         Robert Maxwell, Prince Andrew/Epstein), NPR, CNN, PBS,
//         CNBC, Axios, Times of Israel, Electronic Intifada,
//         Foreign Policy, Guardian, investigative journalism
// Generated: 2026-03-02
//
// ARCHITECTURE:
//   This enrichment creates the DENSEST INTERCONNECTION NODE in the
//   entire aiwar graph. One family tree — the Khashoggi clan —
//   connects EVERY major cluster:
//
//   Epstein enrichment ← Adnan Khashoggi (financial client)
//   Surveillance enrichment ← Safari Club (Egypt operations center)
//   Diplomatic choreography ← Same US+Saudi+Egypt+Israel axis
//   AI warfare ← Same defense contractors (Lockheed, Raytheon, Northrop)
//   Media capture ← Jamal Khashoggi (WaPo journalist killed by MBS)
//   British monarchy ← Dodi/Diana → Prince Andrew → Epstein
//
//   The Safari Club (1976) is the ANCESTOR TOPOLOGY of everything.
//   Same axis. Same players. Same structure. 50 years.
// ═══════════════════════════════════════════════════════════════════

// ═══════════════════════════════════
// §1  KHASHOGGI FAMILY NODES
// ═══════════════════════════════════

MERGE (n:Person {id: 'MuhammadKhashoggi'})
SET n.name = 'Muhammad Khashoggi',
    n.person_type = 'Physician to King Abdulaziz',
    n.mcclelland = 'II',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'PRE_ENTRY',
    n.receptor = 'STATUS',
    n.sublimation = 'Healing the king. Service to the House of Saud.',
    n.unsublimated = 'His proximity to King Abdulaziz created the family position that enabled everything. The physician-to-the-king role is the original access point.',
    n.qualia_mask = 'Humble doctor serving his sovereign',
    n.note = 'Father of Adnan and Samira Khashoggi. Personal physician to King Abdulaziz (Ibn Saud), founder of Saudi Arabia. Turkish descent. The family position from which the entire network grew.';

MERGE (n:Person {id: 'AdnanKhashoggi'})
SET n.name = 'Adnan Khashoggi',
    n.person_type = 'Arms Dealer, Intelligence Operative, Billionaire',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Facilitating necessary defense relationships between allies. Commerce serves peace.',
    n.unsublimated = 'Principal foreign agent of the US. Safari Club operator. Iran-Contra middleman. BCCI money laundering. Epstein financial client. $4B net worth from arms commissions. Maintained harem of pleasure wives.',
    n.qualia_mask = 'Great Gatsby of the Middle East — lavish lifestyle as cover for intelligence operations',
    n.rubicon_event = 'First brokered arms deal while still in high school — connecting classmates fathers for $1000',
    n.note = 'Son of Muhammad Khashoggi. Brother of Samira. First cousin of Jamal Khashoggi. Brokered Lockheed ($106M commissions), Raytheon ($23M), Northrop ($54M) deals with Saudi Arabia. Established Safari Club. Iran-Contra middleman via BCCI. Epstein was his financial client/money manager. His yacht Nabila sold to Sultan of Brunei then to Trump (renamed Trump Princess). Died 2017 of Parkinsons.';

MERGE (n:Person {id: 'SamiraKhashoggi'})
SET n.name = 'Samira Khashoggi',
    n.person_type = 'Saudi Author',
    n.note = 'Daughter of Muhammad Khashoggi. Sister of Adnan. First cousin of Jamal Khashoggi. Married Mohamed Al-Fayed. Mother of Dodi Fayed. Saudi author. Died 1986.',
    n.mcclelland = 'II',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'PRE_ENTRY';

MERGE (n:Person {id: 'DodiFayed'})
SET n.name = 'Dodi Fayed',
    n.person_type = 'Film Producer',
    n.mcclelland = 'II',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'PRE_ENTRY',
    n.receptor = 'STATUS',
    n.sublimation = 'Film producer. Executive producer of Chariots of Fire.',
    n.unsublimated = 'Son of Mohamed Al-Fayed (Harrods owner) and Samira Khashoggi. Nephew of Adnan Khashoggi. Worked as UAE Embassy attaché in London. Died with Princess Diana Aug 31 1997 in Paris car crash.',
    n.note = 'Maternal side: Khashoggi family (arms, intelligence, Safari Club). Paternal side: Al-Fayed family (Harrods, Ritz Paris, Fulham FC). His death with Diana created the Windsor-Khashoggi connection that later manifested as Andrew-Epstein.';

MERGE (n:Person {id: 'MohamedAlFayed'})
SET n.name = 'Mohamed Al-Fayed',
    n.person_type = 'Businessman (Harrods, Ritz Paris)',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Self-made businessman. Egyptian success story in British establishment.',
    n.unsublimated = 'Rose through Khashoggi family connection. Married Adnan sister Samira. Claimed Diana and Dodi were executed by MI6. Harrods as social cover. Died 2023.',
    n.note = 'Married Samira Khashoggi. Father of Dodi. Owner of Harrods, Ritz Paris, Fulham FC. Rose from modest beginnings through Khashoggi family connection. Claimed MI6 murdered Diana and Dodi.';

MERGE (n:Person {id: 'JamalKhashoggi'})
SET n.name = 'Jamal Khashoggi',
    n.person_type = 'Journalist, Washington Post Columnist',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Truth-telling. Holding power accountable. Democratic reform in Saudi Arabia.',
    n.unsublimated = 'Genuine Stage IV — service to truth cost him his life. First cousin of Adnan and Samira Khashoggi. Arms dealer uncle, journalist nephew. Same family, opposite moral trajectories.',
    n.qualia_mask = 'No mask — he was what he appeared to be, which is why he had to die',
    n.rubicon_event = 'Entered Saudi consulate in Istanbul Oct 2 2018 for marriage papers. Never came out.',
    n.note = 'Washington Post columnist. Saudi dissident. First cousin of Adnan Khashoggi (arms dealer) and Samira Khashoggi (Dodi Fayeds mother). Assassinated Oct 2 2018 in Saudi consulate Istanbul by MBS hit team. Dismembered. CIA confirmed MBS ordered killing. Trump suggested MBS should come up with better cover story.';

MERGE (n:Person {id: 'PrinceAndrew'})
SET n.name = 'Andrew Mountbatten-Windsor (formerly Prince Andrew)',
    n.person_type = 'Former Royal, Arrested Feb 2026',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'CONCEALMENT',
    n.receptor = 'STATUS',
    n.sublimation = 'Royal duty. Trade envoy serving British interests.',
    n.unsublimated = 'Met Epstein 1999 via Maxwell. Visited Epstein 2010 after conviction. Accused by Giuffre of sexual assault at 17. Settled lawsuit 2022. Stripped of all titles Oct 2025. Arrested Feb 2026 misconduct in public office. Emails show he shared confidential trade documents with Epstein.',
    n.qualia_mask = 'I have no recollection of ever meeting this lady',
    n.rubicon_event = 'We are in this together and will have to rise above it — email to Epstein Feb 2011',
    n.note = 'Brother of King Charles. Ex-brother-in-law of Princess Diana. Diana died with Dodi Fayed (Khashoggi family). Andrew befriended Epstein (Khashoggi financial client). Same family tree, different entry points.';

MERGE (n:Person {id: 'PrincessDiana'})
SET n.name = 'Diana, Princess of Wales',
    n.person_type = 'Royal (deceased 1997)',
    n.note = 'Died Aug 31 1997 in Paris car crash with Dodi Fayed. Ex-wife of Charles. Mother of William and Harry. Her death connected the Windsor and Khashoggi family trees. Mohamed Al-Fayed claimed MI6 murdered them.',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION';

MERGE (n:Person {id: 'GhislaineMaxwell'})
SET n.name = 'Ghislaine Maxwell',
    n.person_type = 'Convicted Sex Trafficker',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Socialite. Philanthropist. Marine conservation advocate.',
    n.unsublimated = 'Recruited underage girls for Epstein. Convicted Dec 2021 child sex trafficking. 20-year sentence. Introduced Prince Andrew to Epstein 1999. Father Robert Maxwell suspected MI6/Mossad/KGB triple agent.',
    n.qualia_mask = 'High-society networker connecting powerful people',
    n.rubicon_event = 'After father Robert Maxwell died mysteriously 1991, moved to New York, partnered with Epstein by 1992',
    n.note = 'Daughter of Robert Maxwell (media mogul, suspected intelligence operative). Convicted sex trafficker. Serving 20 years. Introduced Andrew to Epstein. Key node connecting British intelligence world to Epstein network.';

MERGE (n:Person {id: 'RobertMaxwell'})
SET n.name = 'Robert Maxwell',
    n.person_type = 'Media Mogul, Suspected Intelligence Operative (deceased 1991)',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Publishing empire. Labour MP. War hero. Service to Britain.',
    n.unsublimated = 'Suspected MI6, KGB, and Mossad connections. Facilitated Czech arms sales to Israel in 1948 war. PROMIS software scandal. Tipped off Israel about Vanunu nuclear leak. Plundered £1B from employee pensions. Died falling from yacht Lady Ghislaine Nov 1991. Buried Jerusalem Mount of Olives. Six intelligence chiefs and PM Shamir at funeral. Shamir: He has done more for Israel than can today be said.',
    n.qualia_mask = 'British patriot and publishing magnate',
    n.rubicon_event = 'Death from yacht Lady Ghislaine — heart attack, suicide, or assassination by intelligence service he betrayed',
    n.note = 'Czech-born. Escaped Holocaust. British Army MC. Labour MP. Owned Mirror Group, Macmillan, Pergamon Press. Father of Ghislaine. Suspected triple agent (MI6/KGB/Mossad). Epstein helped hide his assets after pension fraud exposed. Buried Jerusalem with intelligence community honors.';

MERGE (n:Person {id: 'VirginiaGiuffre'})
SET n.name = 'Virginia Giuffre',
    n.person_type = 'Epstein Survivor, Advocate (deceased 2025)',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'No sublimation needed — her mission was truth.',
    n.unsublimated = 'Trafficked at 17 from Mar-a-Lago spa. Sued Prince Andrew. Settled 2022. Her testimony brought down Maxwell. Posthumous memoir Nobodys Girl. Died by suicide 2025.',
    n.note = 'Met Epstein and Maxwell at Mar-a-Lago while working at spa. Trafficked to Prince Andrew on three occasions. Sued Andrew under Child Victims Act. Settled 2022. Died by suicide Apr 2025. Posthumous memoir published Nov 2025.';

// ═══════════════════════════════════
// §2  INSTITUTIONAL NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'SafariClub'})
SET n.name = 'The Safari Club (1976-1980s)', n.year = 1976, n.system_type = 'IntelligenceAlliance',
    n.note = 'Covert alliance of intelligence services: Iran (pre-revolution), Egypt, Saudi Arabia, Morocco, France. Informal connections: US, South Africa, Rhodesia, Israel. Operated by Adnan Khashoggi. Operations center in Cairo. Named after Mount Kenya Safari Club (Khashoggi property). Created when Congress limited CIA power mid-1970s. Financial infrastructure: BCCI. Ran clandestine operations across Africa. Military intervention in Zaire. Arms to Somalia. ANCESTOR TOPOLOGY of Orb Summit 2017 and Iran strikes choreography 2026. Same axis, 50 years later.';

MERGE (n:Stakeholder:Institution {id: 'BCCI'})
SET n.name = 'Bank of Credit and Commerce International',
    n.stakeholder_type = 'Bank', n.airo_type = 'FinancialInfrastructure',
    n.note = 'Laundered money for Safari Club operations, CIA, Saudi Arabia. Financed Iran-Contra arms purchases. Khashoggi borrowed from BCCI for weapons deals. Collapsed 1991 in largest bank fraud in history. Used by cartels, terrorists, intelligence services. Financial backbone of covert operations.',
    n.image = './assets/noun-software-industry-198331.png';

MERGE (n:HistoricalSystem {id: 'IranContra'})
SET n.name = 'Iran-Contra Affair (1985-1987)', n.year = 1985, n.system_type = 'CovertOperation',
    n.note = 'Reagan admin secretly sold 1500 US missiles to Iran (under embargo) via Israel. Proceeds funded Contra rebels in Nicaragua (illegal under Boland Amendment). Khashoggi was key middleman. BCCI financed purchases. Same topology as 2026: US+Israel+Saudi axis, covert operations, congressional oversight bypassed, Iran as target.';

MERGE (n:HistoricalSystem {id: 'DianaDeathParis'})
SET n.name = 'Death of Diana and Dodi Fayed', n.year = 1997, n.system_type = 'Event',
    n.note = 'Aug 31 1997. Paris car crash in Pont de lAlma underpass. Diana Princess of Wales and Dodi Fayed killed. Driver Henri Paul intoxicated. Paparazzi chased. Mohamed Al-Fayed claimed MI6 assassination. Connects Windsor and Khashoggi family trees. Andrew (Dianas ex-brother-in-law) later entered Epstein orbit through same social world.';

MERGE (n:HistoricalSystem {id: 'AndrewArrest2026'})
SET n.name = 'Prince Andrew Arrest Feb 2026', n.year = 2026, n.system_type = 'Event',
    n.note = 'Feb 2026: Andrew Mountbatten-Windsor arrested on suspicion of misconduct in public office. Police cited emails showing he may have forwarded confidential trade documents to Epstein. Highest-profile figure to face criminal consequences for Epstein ties. Same month as Anthropic ban and Iran strikes.';

MERGE (n:HistoricalSystem {id: 'KhashoggiMurder'})
SET n.name = 'Assassination of Jamal Khashoggi', n.year = 2018, n.system_type = 'Event',
    n.note = 'Oct 2 2018. Jamal Khashoggi entered Saudi consulate Istanbul for marriage papers. Murdered and dismembered by 15-man Saudi hit team. CIA confirmed MBS approved. Trump told MBS to come up with better cover story. WaPo columnist killed for journalism. His uncle Adnan brokered the arms deals that built Saudi military power. His cousin Dodi died with Diana. The family that enabled Saudi power was consumed by it.';

// ═══════════════════════════════════
// §3  FAMILY TREE EDGES
// ═══════════════════════════════════

// Muhammad Khashoggi → children
MATCH (a {id: 'MuhammadKhashoggi'}) MATCH (b {id: 'AdnanKhashoggi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'father', r.role = 'Father', r.weight = 2,
    r.note = 'Physician to King Abdulaziz. His position at court created the family access that enabled everything.';

MATCH (a {id: 'MuhammadKhashoggi'}) MATCH (b {id: 'SamiraKhashoggi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'father', r.role = 'Father', r.weight = 2;

// Cousin relationship
MATCH (a {id: 'MuhammadKhashoggi'}) MATCH (b {id: 'JamalKhashoggi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'uncle_family', r.role = 'Uncle (family)', r.weight = 1,
    r.note = 'Jamal was first cousin of Adnan and Samira. Same Khashoggi clan.';

// Samira → Dodi (marriage to Al-Fayed)
MATCH (a {id: 'SamiraKhashoggi'}) MATCH (b {id: 'MohamedAlFayed'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'married', r.role = 'Wife', r.weight = 2,
    r.note = 'Marriage connected Khashoggi intelligence/arms world to Al-Fayed commercial/social world.';

MATCH (a {id: 'SamiraKhashoggi'}) MATCH (b {id: 'DodiFayed'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'mother', r.role = 'Mother', r.weight = 2;

MATCH (a {id: 'MohamedAlFayed'}) MATCH (b {id: 'DodiFayed'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'father', r.role = 'Father', r.weight = 2;

// Adnan ↔ Dodi (uncle)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'DodiFayed'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'uncle', r.role = 'Maternal Uncle', r.weight = 2,
    r.note = 'Arms dealer uncle. Film producer nephew. Adnan world of weapons and intelligence; Dodi world of cinema and royalty. Same family.';

// Adnan ↔ Jamal (cousins)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'JamalKhashoggi'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'first_cousin', r.role = 'First Cousin', r.weight = 2,
    r.note = 'Arms dealer cousin. Journalist cousin. Same family, opposite moral trajectories. One built Saudi military power. The other was killed by it.';

// Diana ↔ Dodi
MATCH (a {id: 'PrincessDiana'}) MATCH (b {id: 'DodiFayed'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'romantic_partner_died_together', r.role = 'Partner', r.weight = 3,
    r.note = 'Both died Paris car crash Aug 31 1997. Their relationship connected Windsor and Khashoggi family trees.';

// Diana ↔ Andrew (ex-in-laws via Charles)
MATCH (a {id: 'PrincessDiana'}) MATCH (b {id: 'PrinceAndrew'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'former_sister_in_law', r.role = 'Former Sister-in-law', r.weight = 1,
    r.note = 'Diana married Charles. Andrew is Charles brother. Diana died with Dodi (Khashoggi family). Andrew later entered Epstein orbit (Khashoggi financial client). Same family tree, different entry points into the network.';

// Diana/Dodi death event
MATCH (a {id: 'DodiFayed'}) MATCH (b {id: 'DianaDeathParis'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'killed', r.role = 'Victim', r.weight = 3;

MATCH (a {id: 'PrincessDiana'}) MATCH (b {id: 'DianaDeathParis'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'killed', r.role = 'Victim', r.weight = 3;

// ═══════════════════════════════════
// §4  INTELLIGENCE / ARMS TRADE EDGES
// ═══════════════════════════════════

// Adnan → Safari Club
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'SafariClub'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'operator_and_founder', r.role = 'Operator', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED',
    r.note = 'Helped establish Safari Club. Named after his Mount Kenya Safari Club property. Principal foreign agent of the US. Ran covert alliance of intelligence services across Africa.';

// Safari Club → BCCI
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'BCCI'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'financial_infrastructure', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'CLASSIFIED',
    r.note = 'BCCI created simultaneously with Safari Club. Laundered money for Saudi Arabia, US, intelligence operations. Financial backbone of covert arms trade.';

// Adnan → Iran-Contra
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'key_middleman', r.role = 'Arms Broker', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED',
    r.note = '1500 US missiles to Iran via Israel. Borrowed from BCCI for arms purchases. Profits funded Contra rebels. Reagan apologized. Same topology as 2026 Iran operation: US weapons, Israeli involvement, Saudi middleman, congressional oversight bypassed.';

// Iran-Contra → BCCI
MATCH (a {id: 'IranContra'}) MATCH (b {id: 'BCCI'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'financed_arms_purchases', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'CLASSIFIED';

// Adnan → Defense Contractors (existing nodes if present, or create links)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'US'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'principal_foreign_agent', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.note = 'Officially designated principal foreign agent. Lockheed $106M commissions. Raytheon $23M. Northrop $54M. CIA contacts Critchfield and Kim Roosevelt. Marketing arm of Lockheed.';

MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'SaudiArabia'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'arms_broker_to_kingdom', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.note = 'Family physician to founding king → son became kingdoms arms broker. Brokered all major US-Saudi defense deals 1960s-1970s.';

// Adnan → Epstein (CRITICAL BRIDGE to existing enrichment)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'financial_client_money_manager', r.role = 'Client', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'OPAQUE',
    r.note = 'Epstein was Khashoggis money manager by 1987. Met via Douglas Leese (defense contractor). Epstein managed arms trade financial architecture. Learned offshore accounts, shell companies, layered ownership. This relationship is the origin of Epsteins methodology.';

// Adnan → Trump (yacht transfer)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'Trump'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'yacht_nabila_to_trump_princess', r.weight = 1,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.note = 'Khashoggis yacht Nabila sold to Sultan of Brunei then to Trump for $20M. Renamed Trump Princess. Arms dealers yacht became future presidents trophy.';

// ═══════════════════════════════════
// §5  MAXWELL / MOSSAD / ANDREW EDGES
// ═══════════════════════════════════

// Robert Maxwell → Ghislaine
MATCH (a {id: 'RobertMaxwell'}) MATCH (b {id: 'GhislaineMaxwell'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'father', r.role = 'Father', r.weight = 3,
    r.note = 'Ghislaine was favorite daughter. Named yacht Lady Ghislaine after her. His intelligence connections — alleged MI6/KGB/Mossad — are foundational context for her later role with Epstein.';

// Robert Maxwell → Mossad (existing node if present)
MATCH (a {id: 'RobertMaxwell'}) MATCH (b {id: 'Mossad'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'suspected_intelligence_operative', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED',
    r.note = 'Suspected MI6/KGB/Mossad. Facilitated Czech arms to Israel 1948. Tipped Israel about Vanunu nuclear leak. Buried Jerusalem Mount of Olives. Six intelligence chiefs at funeral. PM Shamir: He has done more for Israel than can today be said. Allegations remain unconfirmed but widely reported.';

// Robert Maxwell → Epstein
MATCH (a {id: 'RobertMaxwell'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'epstein_managed_maxwell_assets', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'OPAQUE',
    r.note = 'Epstein helped Robert Maxwell hide assets after pension fraud exposed. BBC documentary revealed Epstein helped conceal millions in offshore accounts. Over £1B missing from Maxwell firms.';

// Ghislaine → Epstein
MATCH (a {id: 'GhislaineMaxwell'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'partner_and_procurer', r.role = 'Associate/Procurer', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.note = 'After father died 1991, Ghislaine moved to NYC. By 1992 partnered with Epstein. Socialite cover. Recruited underage girls. Connected Epstein to Clintons, Trump, Prince Andrew. Convicted Dec 2021. Serving 20 years.';

// Ghislaine → Andrew (introduction to Epstein)
MATCH (a {id: 'GhislaineMaxwell'}) MATCH (b {id: 'PrinceAndrew'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'introduced_andrew_to_epstein_1999', r.role = 'Social Connector', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'INTEGRATION',
    r.note = 'Introduced Andrew to Epstein 1999. Photo of Andrew and Ghislaine leaving wedding together Sep 2000. She drove him. Andrew hosted Epstein, Maxwell, and Weinstein at Royal Lodge for masked ball.';

// Andrew → Epstein
MATCH (a {id: 'PrinceAndrew'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'friend_and_co_conspirator', r.role = 'Friend', r.weight = 3,
    r.motive = 'nPow', r.phase = 'CONCEALMENT',
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'OPAQUE',
    r.note = 'Met 1999. Visited after 2008 conviction. Central Park stroll 2010 photographed. We are in this together email Feb 2011. Shared confidential trade documents. Giuffre accused sexual assault at 17. Settled 2022. Arrested Feb 2026.';

// Andrew → Giuffre
MATCH (a {id: 'PrinceAndrew'}) MATCH (b {id: 'VirginiaGiuffre'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'accused_of_sexual_assault', r.role = 'Accused', r.weight = 3,
    r.motive = 'nPow', r.phase = 'CONCEALMENT',
    r.note = 'Giuffre accused Andrew of sexual assault on three occasions when she was 17. London, New York, Epstein Island. Photo exists showing Andrew arm around Giuffres waist at Maxwell residence. Settled 2022. I have no recollection of ever meeting this lady.';

// Andrew arrest event
MATCH (a {id: 'PrinceAndrew'}) MATCH (b {id: 'AndrewArrest2026'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'arrested_feb_2026', r.role = 'Suspect', r.weight = 3,
    r.note = 'Arrested on suspicion of misconduct in public office. Police cited emails showing he forwarded confidential trade documents to Epstein. Released under investigation. Same month as Anthropic ban and Iran strikes.';

// Giuffre → Mar-a-Lago connection
MATCH (a {id: 'VirginiaGiuffre'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'trafficked_victim', r.role = 'Victim', r.weight = 3,
    r.note = 'Met Epstein and Maxwell at Mar-a-Lago spa where she worked, age 16. Recruited as masseuse then trafficked. Sued Prince Andrew. Posthumous memoir. Died by suicide 2025.';

// Giuffre → Khashoggi murder (Jamal)
MATCH (a {id: 'JamalKhashoggi'}) MATCH (b {id: 'KhashoggiMurder'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'assassinated', r.role = 'Victim', r.weight = 3;

MATCH (a {id: 'MBS'}) MATCH (b {id: 'KhashoggiMurder'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'ordered_assassination', r.role = 'Principal', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'DEPLOYMENT',
    r.note = 'CIA confirmed MBS approved killing. 15-man hit team. Dismembered. Trump told MBS to come up with better cover story. MBS killed his own distant cousin — a journalist — for writing in Washington Post. Same MBS later lobbied Trump for Iran strikes.';

// Trump → Khashoggi murder (cover)
MATCH (a {id: 'Trump'}) MATCH (b {id: 'KhashoggiMurder'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'provided_cover_for_mbs', r.weight = 2,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.note = 'Told MBS he should come up with better cover story. Did not sanction Saudi Arabia. Maintained arms deals. McClelland Stage III: protect the ally who provides geopolitical utility regardless of crime.';

// ═══════════════════════════════════
// §6  TOPOLOGY PERSISTENCE EDGES
//     Safari Club (1976) → Orb Summit (2017) → Iran Strikes (2026)
// ═══════════════════════════════════

// Safari Club → same axis persists
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'RiyadhSummit2017'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ancestor_topology', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Safari Club 1976: US + Saudi + Egypt + Israel + France (formal), plus informal connections. Orb Summit 2017: Trump + MBS + Sisi hands on glowing orb. Same axis. Same nations. Same anti-Iran alignment. 41 years. Players changed. Topology persisted.';

MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ancestor_topology_executed', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Safari Club ran covert operations when Congress limited CIA. Iran strikes 2026 ran when Anthropic limited AI. Same pattern: when institutional constraints appear, create parallel channel. Safari Club was the workaround for congressional oversight. MBS private lobbying was the workaround for diplomatic protocol. Pentagon demand for unrestricted Claude was the workaround for AI ethics.';

MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'DiplomaticChoreography2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_clearance_pattern', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Safari Club used covert meetings in Cairo and Saudi Arabia. 2026 choreography used Davos, White House, Jeddah Iftar. Different venues, same function: off-the-record clearance between the same national nodes.';

// Iran-Contra → Iran Strikes 2026
MATCH (a {id: 'IranContra'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'iran_as_perpetual_target', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = '1985: US sells 1500 missiles TO Iran covertly. 2026: US fires missiles AT Iran openly. Target flipped from customer to enemy. Same axis (US+Saudi+Israel) operated both times. Same financial opacity. Same congressional oversight problems. Iran remains the permanent variable in the equation.';

// ═══════════════════════════════════
// §7  CROSS-ENRICHMENT BRIDGES
//     (connecting to existing graph clusters)
// ═══════════════════════════════════

// Adnan Khashoggi → Lockheed/Raytheon/Northrop → same companies now supply AI warfare
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'Israel'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'brokered_us_weapons_via_saudi_to_israel_region', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.note = 'Same defense contractors Khashoggi brokered for (Lockheed, Raytheon, Northrop) now produce the weapons platforms integrated with AI targeting systems (Lavender, Gospel). The arms pipeline he built in the 1970s became the hardware layer for AI warfare in the 2020s.';

// Epstein → Andrew → arrest same month as Anthropic ban
MATCH (a {id: 'AndrewArrest2026'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_month_feb_2026', r.weight = 1,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Feb 2026: Andrew arrested (Epstein network consequences). Anthropic banned (AI ethics consequences). Iran struck (diplomatic choreography execution). Three seemingly unrelated events in same month. All connected through the Khashoggi nexus topology.';

// Jamal Khashoggi murder → media capture pattern
MATCH (a {id: 'KhashoggiMurder'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'journalist_murder_to_journalist_silencing', r.weight = 2,
    r.edge_function = 'COVER', r.flow_type = 'NARRATIVE',
    r.note = 'MBS murdered a WaPo journalist (2018). Trump pressured media companies into settlements and editorial capture (2025). Different methods, same function: silence critical voices. Khashoggi was dismembered. Kimmel was suspended. Colbert was cancelled. 60 Minutes was gutted. Escalation scale differs. Information control function identical.';

// Safari Club operations center Cairo → Egypt surveillance state
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'EgyptSurveillanceState'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'cairo_operations_center_to_surveillance_state', r.weight = 2,
    r.edge_function = 'DEPLOYMENT',
    r.note = 'Safari Club had operations center in Cairo (1976). Egypt surveillance state built from same foundation (2013+). Safari Club used covert channels. DPI/Cerebro uses technological channels. Cairo was always the operations center.';

// Robert Maxwell → Khashoggi nexus (intelligence bridge)
MATCH (a {id: 'RobertMaxwell'}) MATCH (b {id: 'AdnanKhashoggi'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'parallel_intelligence_operatives', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED',
    r.note = 'Both operated at intersection of intelligence and commerce. Khashoggi: Safari Club, Iran-Contra, BCCI. Maxwell: MI6/Mossad, PROMIS software, media empire. Both connected to Epstein. Epstein learned from both: Khashoggis financial architecture + Maxwells intelligence methodology = kompromat factory.';

// Without-me-chaos → Khashoggi family consumed
MATCH (a {id: 'WithoutMeChaos'}) MATCH (b {id: 'KhashoggiMurder'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'the_formula_consumed_its_own_family', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.note = 'Adnan Khashoggi built Saudi military power through arms deals. His cousin Jamal was murdered by that same military/intelligence apparatus under MBS. The without-me-chaos formula Adnan helped enable consumed his own family member. The arms dealer built the machine. The journalist was fed to it.';

// ═══════════════════════════════════════════════════
// §8  EMERGENT PATTERNS
// ═══════════════════════════════════════════════════
//
// PATTERN 11 — The Khashoggi Nexus (densest node):
//   One family tree connects ALL major graph clusters:
//   Muhammad Khashoggi (physician to king)
//   → Adnan (arms dealer, Safari Club, Epstein client)
//   → Samira (married Al-Fayed) → Dodi (died with Diana)
//   → Diana → Andrew (her ex-brother-in-law) → Epstein
//   → Jamal (journalist cousin, murdered by MBS)
//   → MBS → Iran strikes choreography → Anthropic ban
//   From one physicians appointment with a king in the 1930s
//   to AI warfare in 2026. One family. 90 years. Every cluster connected.
//
// PATTERN 12 — Topology Persistence (50 years):
//   Safari Club (1976): US + Saudi + Egypt + Israel + France
//   Orb Summit (2017): US + Saudi + Egypt + Israel (silent)
//   Iran Strikes (2026): US + Saudi + Egypt + Israel
//   Same axis. Same clearance choreography. Same target (Iran).
//   Players rotate (Khashoggi → MBS, Carter → Trump, Sadat → Sisi).
//   Structure persists. The topology IS the intelligence.
//
// PATTERN 13 — The Epstein Origin Story:
//   Epstein didnt invent his methodology. He inherited it.
//   From Khashoggi: offshore accounts, shell companies,
//     layered ownership, arms trade financial architecture
//   From Robert Maxwell: intelligence connections, media
//     manipulation, blackmail methodology, Mossad tradecraft
//   Epstein synthesized both into kompromat factory.
//   The teachers were the network. The student became the node.
//
// PATTERN 14 — The Family Consumed by Its Own Machine:
//   Adnan Khashoggi brokered the arms deals that built Saudi power.
//   His nephew Dodi died in circumstances his father called MI6 murder.
//   His cousin Jamal was murdered by the Saudi intelligence
//     apparatus that Adnans arms deals helped create.
//   The Khashoggi family built the machine and was consumed by it.
//   McClelland insight: the power structure doesnt distinguish
//   between builders and threats. Once built, it serves itself.
//
// PATTERN 15 — February 2026: Three Convergences:
//   Andrew arrested (Epstein network)
//   Anthropic banned (AI ethics)
//   Iran struck (diplomatic choreography)
//   All connected through Khashoggi nexus topology.
//   Not coincidence — convergence of structures that share DNA.
//   Safari Club DNA → Epstein network DNA → AI warfare DNA.
//   Same axis. Same opacity. Same workaround-when-constrained pattern.
//
// PATTERN 16 — The Kompromat-to-Clearance Pipeline:
//   Khashoggi (1970s): arms deals create financial leverage
//   Safari Club (1976): leverage enables covert operations
//   Epstein (1990s): leverage becomes sexual kompromat
//   Andrew (2000s): kompromat captures British royal
//   MBS (2018): power kills journalist who threatens exposure
//   Trump (2025): media capture prevents exposure of all layers
//   Each generation adds a layer. Each layer protects the ones below.
//   The pipeline doesnt just persist. It deepens.
//
// NODE AND EDGE STATISTICS:
//   New Person nodes: 9 (Muhammad/Adnan/Samira Khashoggi, Dodi, Mohamed Al-Fayed,
//     Jamal Khashoggi, Andrew, Diana, Ghislaine Maxwell, Robert Maxwell, Giuffre)
//   New Stakeholder nodes: 1 (BCCI)
//   New HistoricalSystem nodes: 5 (SafariClub, IranContra, DianaDeathParis,
//     AndrewArrest2026, KhashoggiMurder)
//   Total new edges: ~50
//   CROSS-CLUSTER BRIDGES: 8+ edges connecting to existing enrichments
//     (Epstein, surveillance, diplomatic, AI warfare, media capture)
//
// ═══════════════════════════════════════════════════
