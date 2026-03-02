// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Temporal Opacity Model
// The Rubicon Shift — Covert → Commercial → Open Bazaar
// ═══════════════════════════════════════════════════════════════════
// Supplements: aiwar_enrichment_khashoggi_nexus.cypher
//              aiwar_enrichment_surveillance_media.cypher
//              aiwar_enrichment_anthropic_iran.cypher
// Source: CIA-RDP90-00552R000303260002-7 (Nightline transcript Dec 1986),
//         Wikipedia (Iran-Contra, Safari Club), research synthesis
// Generated: 2026-03-02
//
// ARCHITECTURE:
//   This enrichment adds a TEMPORAL OPACITY MODEL to the graph.
//   The core insight: topology persists across 50 years.
//   What changes is the OPACITY — how openly power operates.
//
//   Three eras:
//   COVERT (1976-1986): Safari Club, Iran-Contra, BCCI, Swiss accounts
//     → Exposure is fatal. Ghorbanifar: "the media killed the deal."
//     → Architecture built around deniability.
//
//   COMMERCIAL (2013-2024): Cerebro contracts, Pegasus licenses,
//     defense maintenance agreements, surveillance-as-product
//     → Exposure is manageable. "Counterterrorism" as cover narrative.
//     → Architecture built around commercial normalization.
//
//   OPEN_BAZAAR (2025-2026): Federal bans, Greenland demands,
//     Panama Canal threats, open court defiance, FCC threats on camera
//     → Exposure is irrelevant. No cover narrative needed.
//     → Architecture built around removed consequences.
//
//   HINGE: Epstein network (1987-2019)
//     → Interior openness (the men's club) + exterior covertness
//     → The transitional form between eras
//     → 1986 Mar-a-Lago video: the fossil record of the transition
//
// ═══════════════════════════════════════════════════════════════════

// ═══════════════════════════════════
// §1  ERA NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'EraCovert'})
SET n.name = 'The Covert Era (1976-1986)',
    n.year = 1976, n.year_end = 1986,
    n.system_type = 'OpacityEra',
    n.opacity = 'COVERT',
    n.note = 'Power operates through hidden channels. Safari Club, BCCI, Iran-Contra, Swiss numbered accounts, bridge financing through middlemen. Exposure is fatal — Iran-Contra nearly destroyed Reagan. Ghorbanifar 1986: the media killed the deal. Architecture requires deniability at every layer. The Church Committee, Boland Amendment, FISA courts exist because the American system assumes exposure triggers consequences.';

MERGE (n:HistoricalSystem {id: 'EraCommercial'})
SET n.name = 'The Commercial Era (2013-2024)',
    n.year = 2013, n.year_end = 2024,
    n.system_type = 'OpacityEra',
    n.opacity = 'COMMERCIAL',
    n.note = 'Covert operations become commercial products. Surveillance sold as contracts (Nexa Cerebro EUR11.4M, Sandvine PacketLogic, NSO Pegasus). Military aid formalized ($1.3B annual US to Egypt). Intelligence sharing becomes security cooperation. Cover narrative: counterterrorism. Exposure is manageable — Pegasus scandal embarrasses but doesnt destroy. Architecture normalizes through commerce what was previously hidden.';

MERGE (n:HistoricalSystem {id: 'EraOpenBazaar'})
SET n.name = 'The Open Bazaar (2025-2026)',
    n.year = 2025, n.year_end = 2026,
    n.system_type = 'OpacityEra',
    n.opacity = 'OPEN_BAZAAR',
    n.note = 'Power operates without concealment. Greenland demanded openly. Panama Canal threatened openly. Court orders defied openly. Anthropic banned openly. FCC threatens broadcasters on camera. Iran struck without diplomatic pretense. Media captured through public lawsuits and mergers. No cover narrative needed. Exposure is irrelevant because the three institutional brakes (courts, companies, media) have been removed or captured. The bazaar is open because the sheriff has been fired.';

MERGE (n:HistoricalSystem {id: 'EpsteinHinge'})
SET n.name = 'The Epstein Hinge (1987-2019)',
    n.year = 1987, n.year_end = 2019,
    n.system_type = 'OpacityTransition',
    n.opacity = 'HINGE',
    n.note = 'Epstein network is the transitional form between covert and open. Interior openness: the mens club where powerful men live openly what society requires them to hide. Exterior covertness: cameras, blackmail, hidden recordings. The island is a space where rules dont apply among insiders while maintaining deniability from outside world. Kompromat as membership dues — shared transgression as bonding mechanism. 1986 Mar-a-Lago video is the fossil record: Trump and Epstein filmed together, not caring, two decades before consequences. Epstein inherited Khashoggis financial architecture (offshore accounts, shell companies) and Robert Maxwells intelligence methodology (blackmail, media manipulation). Synthesized both into the kompromat factory that became the prototype for open-transgression governance.';

// ═══════════════════════════════════
// §2  ERA SEQUENCE EDGES
// ═══════════════════════════════════

MATCH (a {id: 'EraCovert'}) MATCH (b {id: 'EpsteinHinge'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'evolves_into', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Covert era financial architecture (Khashoggi Swiss accounts, BCCI, Lake Resources) becomes Epstein financial architecture (offshore accounts, shell companies, layered ownership). Same methodology, transferred through personal relationship — Epstein was Khashoggis money manager by 1987.';

MATCH (a {id: 'EpsteinHinge'}) MATCH (b {id: 'EraCommercial'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'parallel_with', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Epstein hinge overlaps with commercial era. While surveillance becomes product (2013+), Epstein network continues operating as transitional form. Both normalize what was previously hidden — one through commerce, one through social access.';

MATCH (a {id: 'EpsteinHinge'}) MATCH (b {id: 'EraOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'prototype_for', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Epsteins mens club was the R&D lab. Trumps presidency is the production deployment. Interior openness (party rules dont apply) became exterior openness (national rules dont apply). The island became the country. Mar-a-Lago remained the venue.';

MATCH (a {id: 'EraCommercial'}) MATCH (b {id: 'EraOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'evolves_into', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Commercial normalization prepared ground for open bazaar. Once surveillance is a product and military aid is a line item, the only remaining step is removing the need to justify it. Counterterrorism narrative still available but no longer required.';

// ═══════════════════════════════════
// §3  IRAN-CONTRA OPERATIONAL NODES
//     (from CIA transcript and Wikipedia)
// ═══════════════════════════════════

MERGE (n:Person {id: 'OliverNorth'})
SET n.name = 'Oliver North',
    n.person_type = 'NSC Staff, Lt. Colonel USMC',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Patriotic duty. Serving the President. Fighting communism.',
    n.unsublimated = 'Ran the Enterprise — arms smuggling network that circumvented Boland Amendment. Controlled Lake Resources account in Geneva. Shredded documents. Convicted on three felonies (vacated on appeal). Became Fox News host and NRA president. The prototype for the loyal operative who does illegal things for the executive and is rewarded.',
    n.qualia_mask = 'The faithful soldier following orders from the Commander in Chief',
    n.opacity_era = 'COVERT',
    n.note = 'Khashoggi told Barbara Walters the Lake Resources account was controlled by North. Ghorbanifar confirmed: North and General Secord were his American contacts. North never spoke to Khashoggi directly — all went through Ghorbanifar. North coordinated the entire operation from the NSC.';

MERGE (n:Person {id: 'ManucherGhorbanifar'})
SET n.name = 'Manucher Ghorbanifar',
    n.person_type = 'Iranian Arms Dealer, Intelligence Operative',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Serving Iran. Defending his country in a bad war. Opening diplomatic channels.',
    n.unsublimated = 'Expatriate Iranian arms dealer. CIA described him as fabricator. Proposed the arms-for-hostages concept. Middleman between US, Israel, and Iran. In CIA transcript: blamed the media for killing the deal, said the President was on the right track. Told Walters the total deal was around $35M. Claimed nobody made a penny.',
    n.qualia_mask = 'Patriotic Iranian businessman seeking peace between nations',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA Nightline transcript: Ghorbanifar told Khashoggi Iranians wouldnt trust Americans to send equipment so needed bridge financing. Told Khashoggi to put $1M in numbered account. Covered it with personal Credit Suisse check. Ghorbanifar arranged the Hamburg meeting (late July 1985) where Iranian government leaders met David Kimche and Israeli arms dealers. Confirmed Lt Col North and Gen Secord were his American contacts. Money went into Lake Resources in Geneva. When asked who told him to put money there: The American. North.';

MERGE (n:Person {id: 'RobertMcFarlane'})
SET n.name = 'Robert McFarlane',
    n.person_type = 'National Security Adviser',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Strategic opening to Iran. Freeing American hostages.',
    n.unsublimated = 'Authored the draft NSDD calling for rapprochement with Iran. Traveled to Tehran in May 1986. Attempted suicide after scandal broke. Convicted of withholding information from Congress. Pardoned by George H.W. Bush.',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA transcript: Khashoggi wrote memo to McFarlane about Ghorbanifar and gave copy to Shimon Peres. McFarlanes trip to Iran led to two hostages being freed. Ghorbanifar confirmed discussions about arms were with McFarlane. Khashoggi described the idea of hostage release originating from discussion between McFarlane and David Kimche.';

MERGE (n:Person {id: 'DavidKimche'})
SET n.name = 'David Kimche',
    n.person_type = 'Head of Israeli Foreign Office, Former Mossad Deputy Director',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Israeli security. Diplomatic bridge-building.',
    n.unsublimated = 'Former Mossad deputy director turned head of Israeli Foreign Office. Attended Hamburg meeting with Iranian leaders and Israeli arms dealers. Central to establishing the Israel channel for arms transfers.',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA transcript: Khashoggi said Kimche came under the umbrella of Americans to the Hamburg meeting. The Iranians at that time thought everybody there was American. They didnt know about Israelis. Kimche was the Israeli intelligence link that connected all parties.';

MERGE (n:Person {id: 'WilliamCasey'})
SET n.name = 'William Casey',
    n.person_type = 'CIA Director (1981-1987)',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Fighting communism. Protecting America.',
    n.unsublimated = 'Only senior official who supported McFarlanes plan to sell arms to Iran. Died of brain tumor before he could testify to Congress. CIA under Casey ran the covert Contra support. Ghorbanifar referenced Caseys job — tried to get CIA Beirut station chief William Buckley freed.',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA transcript: Ghorbanifar disputed account that ex-CIA agent Theodore Shackley had tried to exchange hostages for money in 1984, saying Shackley came to him. Ghorbanifar was trying to get to Casey through various channels.';

MERGE (n:Person {id: 'RichardSecord'})
SET n.name = 'Richard Secord',
    n.person_type = 'Retired USAF Major General, Arms Dealer',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Patriotic service. Fighting communism through enterprise.',
    n.unsublimated = 'Headed the Enterprise — ostensibly private sector arms smuggling network actually controlled by NSC. Coordinated arms deliveries and money flows. Ghorbanifar confirmed Secord was his American contact alongside North.',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA transcript: Ghorbanifar confirmed both Lt Col North and Gen Secord were his contacts. Secord ran the logistics while North ran the policy.';

MERGE (n:Person {id: 'RonKessler'})
SET n.name = 'Ron Kessler',
    n.person_type = 'Washington Post Reporter, Biographer',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Truth-telling through journalism.',
    n.unsublimated = 'Author of The Richest Man in the World (biography of Adnan Khashoggi). Spent a year and a half on the book. Interviewed almost all of Khashoggis associates. Camped out with Khashoggi for two weeks. Was offered money by Khashoggi to omit material about call girls and payoffs. Refused. Had transcript of Khashoggi calling Northrop demanding bribe payment for Saudi generals.',
    n.opacity_era = 'COVERT',
    n.note = 'From CIA transcript: Kessler revealed that Khashoggis sources told him Saudi Arabia not only supported Iran-Contra but actually contributed money. They wanted friends all over the world. Hedge their bets with Iran in case Iran wins. Same hedging pattern MBS uses 40 years later.';

// ═══════════════════════════════════
// §4  FINANCIAL ARCHITECTURE NODES
//     (The Enterprise)
// ═══════════════════════════════════

MERGE (n:Stakeholder:Institution {id: 'TheEnterprise'})
SET n.name = 'The Enterprise',
    n.stakeholder_type = 'CovertNetwork', n.airo_type = 'FinancialInfrastructure',
    n.opacity_era = 'COVERT',
    n.note = 'NSC-controlled arms smuggling network headed by Richard Secord. Ostensibly private sector but actually directed by Oliver North from the NSC. Circumvented Boland Amendment by using non-appropriated funds. The legal question was whether the NSC fell within the Amendments purview. Same structural question as 2026: does the executive have authority to override institutional constraints?';

MERGE (n:Stakeholder:Institution {id: 'LakeResources'})
SET n.name = 'Lake Resources (Geneva)',
    n.stakeholder_type = 'ShellCompany', n.airo_type = 'FinancialInfrastructure',
    n.opacity_era = 'COVERT',
    n.note = 'Geneva-based front company that received Iran arms sale proceeds ($10M and $15M shipments per Khashoggi). Controlled by Oliver North per both Khashoggi and Ghorbanifar testimony on Nightline. Ghorbanifar told to deposit money there by the American — North. This is the EXACT financial architecture Epstein later used: Geneva shell companies, numbered accounts, middlemen providing deniability.';

MERGE (n:HistoricalSystem {id: 'HamburgMeeting1985'})
SET n.name = 'Hamburg Meeting (Late July 1985)',
    n.year = 1985, n.system_type = 'Event',
    n.opacity_era = 'COVERT',
    n.note = 'Meeting arranged by Khashoggi where Iranian government leaders met David Kimche (head of Israeli Foreign Office) and two Israeli arms dealers. From CIA transcript: Khashoggi confirms they met some of the leaders of what they called the structure of the Iranian government. They came from Iran. The Iranians thought everyone present was American — they didnt know about the Israelis. Kimche really came under the umbrella of the Americans. Prototype of the clearance meeting — same function as Sisi-MBS Jeddah Iftar Feb 23 2026.';

MERGE (n:HistoricalSystem {id: 'NightlineTranscript1986'})
SET n.name = 'Nightline ABC Transcript Dec 11 1986',
    n.year = 1986, n.system_type = 'PrimarySource',
    n.opacity_era = 'COVERT',
    n.note = 'CIA Reading Room document CIA-RDP90-00552R000303260002-7. Approved for release 2010/07/23. Transcript of ABC Nightline broadcast with Ted Koppel hosting. Barbara Walters interviews Adnan Khashoggi live from Monte Carlo and Manucher Ghorbanifar. Ron Kessler (WaPo, Khashoggi biographer) in Washington bureau. Both principals describe the financial mechanics of Iran-Contra on American television while maintaining deniability narratives. Primary source confirming: bridge financing methodology, Credit Suisse accounts, Lake Resources shell company, Hamburg meeting with Israeli and Iranian officials, presidential approval, Saudi government involvement despite denials.';

MERGE (n:HistoricalSystem {id: 'MarALagoVideo1986'})
SET n.name = 'Mar-a-Lago Party Video (1986)',
    n.year = 1986, n.system_type = 'Event',
    n.opacity_era = 'HINGE',
    n.note = 'NBC footage of Trump and Epstein at Mar-a-Lago party surrounded by cheerleaders. Two men in a private space where normal rules are suspended, being filmed, not caring. The fossil record of the transition from covert to open. Same year as Iran-Contra exposure and Nightline transcript. Same venue (Mar-a-Lago) that later becomes the seat of open-bazaar governance. Twenty years before consequences. Forty years before the presidency operates on the same principle.';

// ═══════════════════════════════════
// §5  IRAN-CONTRA OPERATIONAL EDGES
// ═══════════════════════════════════

// Khashoggi → Ghorbanifar (bridge financing)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'ManucherGhorbanifar'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'bridge_financier', r.role = 'Financier', r.weight = 3,
    r.motive = 'nPow', r.phase = 'IDENTITY_INTEGRATED',
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'From CIA transcript: Ghorbanifar told Khashoggi Iranians wouldnt trust Americans. Needed bridge financing. $1M for two weeks. Khashoggi deposited in numbered account. Ghorbanifar covered with Credit Suisse personal check. Next shipment $4M. This is the methodology Epstein inherited — numbered accounts, Credit Suisse, middleman providing deniability.';

// Ghorbanifar → Oliver North
MATCH (a {id: 'ManucherGhorbanifar'}) MATCH (b {id: 'OliverNorth'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'operational_contact', r.role = 'Contact', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'From CIA transcript: Ghorbanifar confirmed North and Secord were his American contacts. North told Ghorbanifar to deposit money in Lake Resources. North controlled the account. Ghorbanifar believed North was acting on his own given the small amounts involved.';

// Ghorbanifar → Secord
MATCH (a {id: 'ManucherGhorbanifar'}) MATCH (b {id: 'RichardSecord'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'operational_contact', r.role = 'Contact', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT';

// North → Lake Resources
MATCH (a {id: 'OliverNorth'}) MATCH (b {id: 'LakeResources'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'controlled_account', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'Both Khashoggi and Ghorbanifar independently confirmed on Nightline that North controlled the Lake Resources account. $10M and $15M shipment proceeds deposited there.';

// North → The Enterprise
MATCH (a {id: 'OliverNorth'}) MATCH (b {id: 'TheEnterprise'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'ran_operations', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT';

// Secord → The Enterprise
MATCH (a {id: 'RichardSecord'}) MATCH (b {id: 'TheEnterprise'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'headed_logistics', r.weight = 3,
    r.edge_function = 'DEPLOYMENT', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT';

// The Enterprise → Lake Resources
MATCH (a {id: 'TheEnterprise'}) MATCH (b {id: 'LakeResources'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'financial_arm', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT';

// Khashoggi → McFarlane (memo)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'RobertMcFarlane'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'wrote_memo_about_ghorbanifar', r.role = 'Intermediary', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'From CIA transcript: Khashoggi wrote memo to McFarlane about Ghorbanifar and gave copy to Shimon Peres simultaneously. McFarlane responded positively.';

// Khashoggi → Kimche (Hamburg meeting)
MATCH (a {id: 'AdnanKhashoggi'}) MATCH (b {id: 'DavidKimche'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'arranged_hamburg_meeting', r.role = 'Arranger', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'From CIA transcript: Khashoggi involved Peres and Israeli intelligence because he thought Americans wouldnt properly vet Ghorbanifar since their channels were cut. Suggested Israeli Intelligence could investigate and confirm. Kimche attended Hamburg meeting under American umbrella.';

// Hamburg meeting connections
MATCH (a {id: 'HamburgMeeting1985'}) MATCH (b {id: 'DavidKimche'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'attended', r.weight = 2, r.opacity_era = 'COVERT';

MATCH (a {id: 'HamburgMeeting1985'}) MATCH (b {id: 'ManucherGhorbanifar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'arranged', r.weight = 2, r.opacity_era = 'COVERT';

MATCH (a {id: 'HamburgMeeting1985'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'key_event', r.weight = 3, r.opacity_era = 'COVERT',
    r.note = 'The Hamburg meeting was where Iranian government leaders first met Israeli and American representatives. Arms were not yet discussed — it was presented as diplomatic opening. Arms entered when Israelis and Americans started talking. Hostages came up as test of good faith: send 500 TOWs.';

// Casey → Iran-Contra
MATCH (a {id: 'WilliamCasey'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'sole_senior_supporter', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'Only senior official (Weinberger and Shultz opposed) who supported McFarlanes plan to sell arms to Iran. Died of brain tumor before testimony. His death prevented full accounting.';

// McFarlane → Iran-Contra
MATCH (a {id: 'RobertMcFarlane'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'architect', r.weight = 3,
    r.edge_function = 'INTEGRATION', r.flow_type = 'INTELLIGENCE',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'Authored draft NSDD calling for rapprochement with Iran. Traveled to Tehran May 1986. Two hostages freed after his visit. Attempted suicide after scandal broke. Convicted. Pardoned by Bush Sr.';

// The Enterprise → Iran-Contra
MATCH (a {id: 'TheEnterprise'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'operational_arm', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.opacity = 'CLASSIFIED', r.opacity_era = 'COVERT',
    r.note = 'The Enterprise was created specifically to circumvent the Boland Amendment. Ostensibly private sector but actually controlled by NSC. Same structural question as 2026: can the executive bypass institutional constraints through alternative channels?';

// Nightline transcript → participants
MATCH (a {id: 'NightlineTranscript1986'}) MATCH (b {id: 'AdnanKhashoggi'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'interviewed_from_monte_carlo', r.weight = 2,
    r.note = 'Khashoggi interviewed live from Monte Carlo by Barbara Walters. Set up the joint interview himself. Arrived by helicopter at 3AM. Walked into his apartment to find Ghorbanifar already there.';

MATCH (a {id: 'NightlineTranscript1986'}) MATCH (b {id: 'ManucherGhorbanifar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'interviewed_from_monte_carlo', r.weight = 2;

MATCH (a {id: 'NightlineTranscript1986'}) MATCH (b {id: 'RonKessler'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'analyst_from_washington', r.weight = 2,
    r.note = 'Kessler in Washington bureau. Revealed Saudi financial support for deal despite denials. Had transcript of Khashoggi demanding Northrop bribe. Was offered money to suppress material. Refused.';

// ═══════════════════════════════════
// §6  TEMPORAL ISOMORPHISM EDGES
//     (Same function, different opacity)
// ═══════════════════════════════════

// Safari Club → The Enterprise (same workaround pattern)
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'TheEnterprise'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_workaround_pattern', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY',
    r.opacity_era = 'COVERT',
    r.note = '1976: Congress limits CIA through Church Committee → Safari Club created as parallel channel. 1984: Congress limits Contra funding through Boland Amendment → The Enterprise created as parallel channel. Same pattern: institutional constraint appears, parallel channel created to perform same function outside constraints jurisdiction.';

// The Enterprise → AnthropicBan (same pattern, different opacity)
MATCH (a {id: 'TheEnterprise'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_function_different_opacity', r.weight = 3,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'COVERT (1984): Boland Amendment bans Contra funding → NSC creates Enterprise as private sector cover → operates in secret → exposure destroys it. OPEN_BAZAAR (2026): Anthropic bans unrestricted military AI → Pentagon issues federal ban on Anthropic → shifts to OpenAI/xAI openly → no cover needed. Same function (bypass institutional constraint). Opposite opacity (hidden vs announced). The evolution IS the story.';

// Iran-Contra → Iran Strikes 2026
// (strengthening existing edge with opacity dimension)
MATCH (a {id: 'IranContra'}) MATCH (b {id: 'IranStrikes2026'})
MERGE (a)-[r2:CONNECTED_TO {label: 'same_target_opposite_opacity'}]->(b)
SET r2.weight = 3,
    r2.edge_function = 'CHOREOGRAPHY',
    r2.note = 'COVERT (1985): US sells missiles TO Iran secretly, via Israel, through intermediaries, with Swiss accounts and shell companies. Exposure nearly destroys presidency. OPEN_BAZAAR (2026): US fires missiles AT Iran openly, announces it as achievement, no diplomatic pretense. Same target. Same axis (US+Saudi+Israel). Opposite direction. Opposite opacity. Iran-Contra needed hiding. Iran strikes 2026 needed announcing.';

// Lake Resources → Epstein financial architecture
MATCH (a {id: 'LakeResources'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'financial_methodology_transfer', r.weight = 2,
    r.edge_function = 'INTEGRATION', r.flow_type = 'MONEY',
    r.opacity_era = 'HINGE',
    r.note = 'Lake Resources (Geneva shell company, numbered accounts, Credit Suisse, middleman deniability) is the TEMPLATE for Epsteins later financial architecture. Epstein learned this methodology directly from Khashoggi as his money manager from 1987. The covert-era financial architecture became the hinge-era kompromat infrastructure.';

// Mar-a-Lago 1986 video → Trump presidency
MATCH (a {id: 'MarALagoVideo1986'}) MATCH (b {id: 'Trump'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'fossil_record_of_transition', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Two men at a party being filmed not caring. The interior openness of the mens club captured on NBC camera. Same venue (Mar-a-Lago) becomes seat of open bazaar governance 40 years later. Same principle (rules dont apply to us) scaled from private party to state power.';

MATCH (a {id: 'MarALagoVideo1986'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'earliest_documented_connection', r.weight = 2,
    r.note = '1986 NBC footage at Mar-a-Lago. Same year as Iran-Contra exposure and CIA Nightline transcript. The party and the scandal are contemporaneous — two expressions of the same world.';

// Ghorbanifar media blame → media capture 2025
MATCH (a {id: 'ManucherGhorbanifar'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'the_media_killed_the_deal_to_capture_the_media', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.opacity_era = 'COVERT',
    r.note = 'Ghorbanifar 1986: The media killed the deal. If you had not exploded today you had all the hostages free. He identified exposure as the threat. 40 years later the solution: capture the media so it cannot kill the next deal. FCC threats. Lawsuits. Mergers. Editorial control. Colbert cancelled. Kimmel suspended. 60 Minutes gutted. CNN acquired by allies. The problem Ghorbanifar identified in 1986 was solved by 2025.';

// Kessler Saudi hedging → MBS hedging 2026
MATCH (a {id: 'RonKessler'}) MATCH (b {id: 'MBS'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_hedging_pattern_40_years', r.weight = 2,
    r.edge_function = 'CHOREOGRAPHY',
    r.note = 'Kessler 1986 on Saudi motivation for Iran-Contra: They wanted friends all over the world. Hedge their bets with Iran in case Iran wins. Insurance. MBS 2026: Tells Iran airspace is safe (Jan 27). Privately lobbies Trump for strikes (2 weeks). Same hedging. Same country. Same family connections. 40 years.';

// ═══════════════════════════════════
// §7  MENS CLUB → OPEN BAZAAR PATTERN
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'MensClubToOpenBazaar'})
SET n.name = 'Pattern: Mens Club → Open Bazaar',
    n.year = 1986, n.year_end = 2026,
    n.system_type = 'MetaPattern',
    n.note = 'Epsteins network offered powerful men a space where they could live openly what society required them to hide. The price of admission was complicity. Shared transgression was the bonding mechanism. Kompromat was membership dues. If you werent in you were a threat. Trump scaled this from private space to state power. The loyalty test isnt ideological — its complicity. Defend the indefensible on camera. Vote against impeachment when you know its wrong. Look away when court orders are ignored. Every public defense of an indefensible position IS the recording. Self-generating kompromat. The island became the country. The party became the policy. Mar-a-Lago remained the venue.';

// Epstein → Mens Club pattern
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'MensClubToOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'prototype_operator', r.weight = 3,
    r.note = 'Epsteins network was the R&D lab. Interior openness + exterior covertness. Cameras recorded what happened inside — not for exposure but for control. The recordings were leverage, not journalism. The party was the operation.';

MATCH (a {id: 'Trump'}) MATCH (b {id: 'MensClubToOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'production_deployment', r.weight = 3,
    r.note = 'Trump is the production deployment. Interior openness became exterior openness. No cameras needed because everything is done on the record. Self-generating kompromat replaces hidden recordings. Allies compromise themselves publicly and voluntarily. The mens club IS the administration.';

MATCH (a {id: 'PrinceAndrew'}) MATCH (b {id: 'MensClubToOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'old_model_casualty', r.weight = 2,
    r.note = 'Andrew operated under old rules (hidden transgression). Arrested Feb 2026 by old-model system. Meanwhile Trump operates under new rules (open transgression) in the same month without consequence. Andrew is punished by the system Trump has transcended. The old model participants are vulnerable to exposure. The new model participants arent.';

// ═══════════════════════════════════
// §8  OPACITY PROPERTIES ON EXISTING NODES
//     (tagging key existing nodes with era)
// ═══════════════════════════════════

MATCH (n {id: 'SafariClub'}) SET n.opacity_era = 'COVERT';
MATCH (n {id: 'BCCI'}) SET n.opacity_era = 'COVERT';
MATCH (n {id: 'IranContra'}) SET n.opacity_era = 'COVERT';
MATCH (n {id: 'AdnanKhashoggi'}) SET n.opacity_era = 'COVERT';
MATCH (n {id: 'EpsteinNetwork'}) SET n.opacity_era = 'HINGE';
MATCH (n {id: 'Epstein'}) SET n.opacity_era = 'HINGE';
MATCH (n {id: 'GhislaineMaxwell'}) SET n.opacity_era = 'HINGE';
MATCH (n {id: 'RobertMaxwell'}) SET n.opacity_era = 'COVERT';
MATCH (n {id: 'EgyptSurveillanceState'}) SET n.opacity_era = 'COMMERCIAL';
MATCH (n {id: 'WithoutMeChaos'}) SET n.opacity_era = 'COMMERCIAL';
MATCH (n {id: 'MediaCapture2025'}) SET n.opacity_era = 'OPEN_BAZAAR';
MATCH (n {id: 'AnthropicBan'}) SET n.opacity_era = 'OPEN_BAZAAR';
MATCH (n {id: 'IranStrikes2026'}) SET n.opacity_era = 'OPEN_BAZAAR';
MATCH (n {id: 'DiplomaticChoreography2026'}) SET n.opacity_era = 'OPEN_BAZAAR';
MATCH (n {id: 'AndrewArrest2026'}) SET n.opacity_era = 'OPEN_BAZAAR';
MATCH (n {id: 'KhashoggiMurder'}) SET n.opacity_era = 'COMMERCIAL';
MATCH (n {id: 'RiyadhSummit2017'}) SET n.opacity_era = 'COMMERCIAL';

// ═══════════════════════════════════════════════════
// §9  EMERGENT PATTERNS
// ═══════════════════════════════════════════════════
//
// PATTERN 17 — The Opacity Gradient:
//   Same topology, same function, different openness.
//   COVERT: Safari Club, BCCI, Iran-Contra, Swiss accounts.
//     Exposure fatal. Media kills the deal.
//   COMMERCIAL: Cerebro contracts, Pegasus licenses, military aid.
//     Exposure manageable. Counterterrorism as cover.
//   OPEN BAZAAR: Federal bans, Greenland demands, court defiance.
//     Exposure irrelevant. No cover needed.
//   The Rubicon isnt any single action. Its the transition
//   from needing to hide to not needing to hide.
//
// PATTERN 18 — The Workaround Persistence:
//   1976: Church Committee limits CIA → Safari Club
//   1984: Boland Amendment bans Contras → The Enterprise
//   2026: Anthropic bans unrestricted AI → Ban Anthropic, use OpenAI
//   Same logic every time: institutional constraint appears,
//   parallel channel created. What changes is opacity.
//   Safari Club was secret. The Enterprise was secret.
//   The Anthropic ban was announced in a press release.
//
// PATTERN 19 — Epstein as Hinge:
//   Inherited Khashoggis financial architecture (COVERT).
//   Created the mens club model (interior OPEN, exterior COVERT).
//   Prototype for Trumps governance (fully OPEN).
//   The hinge between eras. The transitional form.
//   1986 Mar-a-Lago video is the fossil record.
//
// PATTERN 20 — The Mens Club Becomes the State:
//   Epstein: private space where rules dont apply.
//   Price of admission: complicity. Bonding: shared transgression.
//   Kompromat as membership dues. Exclusion as punishment.
//   Trump: national space where rules dont apply.
//   Price of admission: public loyalty. Bonding: public defense
//   of indefensible positions. Self-generating kompromat.
//   Exclusion: political destruction.
//   The island became the country.
//   The party became the policy.
//   Mar-a-Lago remained the venue.
//
// PATTERN 21 — Andrew vs Trump (Old Model vs New Model):
//   Andrew: operated under covert rules. Hidden transgression.
//   Arrested Feb 2026 by old-model accountability system.
//   Trump: operates under open rules. Public transgression.
//   Strikes Iran same month with no accountability mechanism.
//   The old-model participants are vulnerable to exposure.
//   The new-model participants are immune to it.
//   Andrew is punished by the system Trump has abolished.
//
// PATTERN 22 — Ghorbanifars Prophecy:
//   1986: The media killed the deal. If you had not exploded
//   today you had all the hostages free.
//   He identified the problem: media exposure destroys operations.
//   2025-2026: The problem was solved.
//   FCC captures broadcasters. Lawsuits settle networks.
//   Mergers consolidate ownership. Editorial control installed.
//   The media can no longer kill the deal.
//   Ghorbanifar was 40 years early. But he was right.
//
// NODE AND EDGE STATISTICS:
//   New Person nodes: 6 (North, Ghorbanifar, McFarlane,
//     Kimche, Casey, Secord, Kessler)
//   New Stakeholder nodes: 2 (TheEnterprise, LakeResources)
//   New HistoricalSystem nodes: 7 (3 eras, EpsteinHinge,
//     HamburgMeeting, NightlineTranscript, MarALagoVideo,
//     MensClubToOpenBazaar)
//   New edges: ~45
//   Opacity tags added to ~17 existing nodes
//   New patterns: 6 (17-22)
//
// TOTAL AIWAR GRAPH (all enrichments):
//   aiwar_enrichment_anthropic_iran.cypher: 916 lines
//   aiwar_enrichment_surveillance_media.cypher: ~400 lines
//   aiwar_enrichment_khashoggi_nexus.cypher: 561 lines
//   aiwar_enrichment_temporal_opacity.cypher: THIS FILE
//   Combined: ~2500+ lines of structural intelligence
//
// ═══════════════════════════════════════════════════
