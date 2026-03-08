// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: All-In Podcast — Epstein Special (Sacks Solo)
// The Narrative Management Episode
// ═══════════════════════════════════════════════════════════════════
// Source: All-In Podcast, Sacks solo episode (~Feb 2026)
//         YouTube: https://www.youtube.com/watch?v=CQq3Ocm98sY
//         Guests: Sagar Enjeti (Breaking Points),
//                 Michael Tracy (journalist/Substack),
//                 Kevin Bass (citizen journalist)
//         Host: David Sacks (solo, co-hosts on vacation)
// Generated: 2026-03-08
// Schema: Extends aiwar_enrichment_epstein.cypher v3
//
// ═══════════════════════════════════════════════════════════════════
//
// CRITICAL SOURCE ASSESSMENT:
//   This episode operates in the Breitbart range — not far-right
//   propaganda, but adjacent media where the editorial frame
//   serves a specific power structure while performing objectivity.
//
//   Sacks is Trump's AI Czar. He hosts a solo Epstein episode
//   during ski week (co-hosts absent). He invites three guests
//   who represent a MANAGED SPECTRUM of opinion:
//
//   Sagar Enjeti: "maximalist" — intelligence ties, money laundering,
//     global elite impunity. Allowed to make structural claims.
//     Given limited time (30 min), cut off during strongest arguments.
//
//   Michael Tracy: "minimalist" — moral panic, myth, hysterical
//     frenzy, no credible evidence of anything. Given unlimited time,
//     dominates second half. His thesis: victims are mentally ill liars,
//     lawyers are extortionists, the whole thing is Salem witch trials.
//
//   Kevin Bass: "citizen journalist" — focused narrowly on Reed Hoffman.
//     Useful because Hoffman is a Democrat donor. The Hoffman angle
//     converts Epstein from bipartisan scandal into partisan weapon.
//
//   The managed spectrum excludes:
//   - Yuval Abraham (documented AI kill systems connected to this network)
//   - Julie K. Brown (whose Miami Herald reporting reopened the case)
//   - Any victim or victim advocate
//   - Any intelligence analyst who could contextualize the Mossad angle
//   - Any financial forensics expert on the money laundering
//
//   What Sacks is doing: managing the Epstein narrative for the
//   Trump administration. The episode structure ensures that by the
//   end, the audience has absorbed: (1) the scandal is overblown,
//   (2) victims are unreliable, (3) the real villain is Reed Hoffman
//   (Democrat), (4) Trump/Musk are unfairly implicated by association.
//
//   This is not journalism. This is narrative infrastructure.
//
// ═══════════════════════════════════════════════════════════════════


// ═══════════════════════════════════
// §1  PERSON NODES
// ═══════════════════════════════════

// Update Sacks with episode-specific behavioral data
MERGE (n:Person {id: 'Sacks'})
SET n.allin_epstein_role = 'HOST_NARRATOR_MANAGER',
    n.allin_epstein_note = 'Solo-hosted Epstein episode during ski week. Invited managed spectrum of guests. Defended Jason from Sagar implication. Gave Tracy unlimited time for victim-discrediting thesis. Focused Kevin Bass narrowly on Hoffman (Democrat). Concluded by performing epistemic humility: Im keeping an open mind. The open mind is the cover for the managed spectrum. Same man who as AI Czar framed Anthropic refusal as ideological sabotage now frames Epstein coverage as feeding frenzy. Pattern: when the story threatens the network, reframe the story as the problem.';

MERGE (n:Person {id: 'SagarEnjeti'})
SET n.name = 'Sagar Enjeti',
    n.person_type = 'Journalist, Breaking Points Co-Host',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'ENTRY',
    n.receptor = 'MISSION',
    n.sublimation = 'n/a — not sublimating',
    n.unsublimated = 'Genuine investigative instinct. Identifies money laundering as Epsteins real power. Connects Iran-Contra arms trafficking, Adnan Khashoggi, false passport, BCCI-era networks. Makes structural claims about elite impunity. But given only 30 minutes, cut off during strongest arguments, forced into factual disputes with Tracy that consume his limited time. The format constrains the structural analysis.',
    n.qualia_mask = 'Evidence-driven investigator',
    n.allin_epstein_role = 'STRUCTURAL_ANALYST_CONSTRAINED',
    n.allin_epstein_note = 'Key claims: Epstein arose under suspicious conditions in 1980s involving Iran-Contra arms traffickers (Adnan Khashoggi, Douglas Leese, Steven Hoffenberg). Money laundering was his real power. Israeli surveillance equipment installed in Epstein apartment used by Ehud Barak. Epstein FOIA-ing CIA in 1999 about himself. False Austrian passport at age 29. Wexner Foundation funding Barak and Zionist causes. 2007 draft indictment names 14 and 15 year old victims. Limited to 30 min, departed early for childs doctor appointment.';

MERGE (n:Person {id: 'MichaelTracy'})
SET n.name = 'Michael Tracy',
    n.person_type = 'Journalist, Substack',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'INSIGHT',
    n.sublimation = 'I am the rational corrective to mass hysteria. I alone rigorously examine the evidence.',
    n.unsublimated = 'Positions self as lone truth-teller against mob. Gregory Peck comparison invited by Sacks. But thesis requires: (1) dismissing all victims as mentally ill, (2) characterizing all victim lawyers as extortionists, (3) calling Julie K Brown overrated and rife with errors, (4) framing entire post-2014 narrative as mythology originating from three disturbed women. The rational corrective systematically excludes evidence that doesnt serve the minimalist frame. Performs epistemic rigor while committing the same selective evidence handling he accuses others of.',
    n.qualia_mask = 'Lone rational voice against the mob',
    n.allin_epstein_role = 'MINIMALIST_GIVEN_DOMINANCE',
    n.allin_epstein_note = 'Given unlimited time after Sagar departed. Core thesis: Epstein mythology is modern Salem witch trials. VRG (Virginia Roberts Giuffre) is profoundly mentally ill confabulist. Recantations of Dershowitz, Kline, Brunell claims prove unreliability. Settlement industry ($500M+) creates financial incentives for false claims. FBI 1000 victims number is fraud (includes adults, family members). Julie K Brown fabricated quotes. Lisa Phillips became victim only when settlement money available. Calls it worst covered story of his adult lifetime. Compares to satanic panic of 1980s. Never addresses: Israeli surveillance equipment, BCCI connections, Iran-Contra links, Wexner power of attorney, or intelligence nexus. The omissions define the thesis.';

MERGE (n:Person {id: 'KevinBass'})
SET n.name = 'Kevin Bass',
    n.person_type = 'Citizen Journalist, Startup Entrepreneur',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'PRE_ENTRY',
    n.receptor = 'SYSTEMS',
    n.sublimation = 'Sticking to the facts using AI tools to analyze documents.',
    n.unsublimated = 'Built vectorized SQL databases and MCP agent tools to analyze Epstein files. Focused narrowly on Reed Hoffman. Found ~400 initiations by Hoffman to Epstein, 42 documented meetings, overnight stays, extensive financial relationships. Hoffmans 2019 Axios statement (few interactions, all through Joito for MIT) contradicted by record at every point. Useful because Hoffman is Democrat donor — converts bipartisan scandal into partisan weapon. Sacks steered conclusion toward Hoffman hypocrisy rather than structural analysis.',
    n.qualia_mask = 'Evidence-driven citizen investigator',
    n.allin_epstein_role = 'HOFFMAN_FOCUSED_PARTISAN_WEAPON',
    n.allin_epstein_note = 'Used AI tools (vectorized SQL, MCP agents) to analyze Epstein files. Key findings on Hoffman: ~400 contact initiations, 42 meetings (~20 confirmed), at least 2 island visits (not 1 as claimed), assistants in constant contact, extensive financial relationships, independent relationship beyond Joito. First interaction bonded over book called Deception. Hoffman 2019 statement to Axios contradicted at every point. Hoffman then accused Musk and Trump on X while living in glass house.';

// New persons from this episode
MERGE (n:Person {id: 'VirginiaRobertsGiuffre'})
SET n.name = 'Virginia Roberts Giuffre',
    n.person_type = 'Epstein Accuser, Deceased April 2025',
    n.mcclelland = 'I',
    n.mcclelland_need = 'nAff',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'SURVIVAL',
    n.sublimation = 'n/a — not applicable to victim',
    n.unsublimated = 'Central figure in Epstein narrative. Tracy claims: mentally ill confabulist who recanted allegations against Dershowitz, Kline, Brunell. Memoir manuscript admitted as fictionalized by own lawyers (Boies). Sharon Churcher (Daily Mail) encouraged throwing names in for bigger book deal. Received $15-25M in settlements. Died under unclear circumstances April 2025. The graph notes: Tracy systematically discredits her while never addressing the structural question of why a disturbed person would have access to name people who were independently documented in Epsteins orbit. Confabulation and exploitation are not mutually exclusive — a genuine victim can be exploited by lawyers AND have real experiences.',
    n.allin_epstein_note = 'Tracy thesis: confabulist, not liar. Recanted Dershowitz, Kline, Brunell claims. 2011 manuscript shopped as nonfiction, later admitted fictionalized. Published posthumously Oct 2025 as international bestseller. No credible allegation of rape ever discovered on the island per Tracy. Died April 2025 under unclear circumstances.';

MERGE (n:Person {id: 'BradleyEdwards'})
SET n.name = 'Bradley Edwards',
    n.person_type = 'Victims Lawyer',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'REVENUE',
    n.sublimation = 'Fighting for justice for survivors of trafficking.',
    n.unsublimated = 'Tracy characterizes as extortionist who crafted carveout in Epstein Files Transparency Act to protect sanitized survivor narrative. 30% attorneys fees from settlement funds. Co-crafted legislation with Thomas Massie. Claims 20-25 secret settlements from individuals who may not have committed wrongdoing. The graph notes: financial incentives do not disprove underlying crimes. The settlement industry and the intelligence operation can coexist.',
    n.allin_epstein_note = 'Original victims lawyer from 2008 Palm Beach phase. Co-crafted Epstein Files Transparency Act with Thomas Massie. Inserted victim-identifying carveout enabling redactions. 30% attorneys fees from settlement funds. Tracy claims he is extortionist operating billion dollar Epstein industry. Worked with David Boies on class action against Bank of America.';

MERGE (n:Person {id: 'DavidBoies'})
SET n.name = 'David Boies',
    n.person_type = 'Lawyer',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'STATUS',
    n.sublimation = 'Representing victims of powerful abusers.',
    n.unsublimated = 'One of most powerful lawyers in America. Represented VRG. Had to admit memoir manuscript was fictionalized. Also represented Harvey Weinstein previously (irony noted). The duality: simultaneously represents victims of powerful men and powerful men themselves.',
    n.allin_epstein_note = 'Represented VRG and other claimants. Had to admit 2011 memoir manuscript was fictionalized account. Helped secure JP Morgan ($290M) and Deutsch Bank (~$90M) settlements. Named as part of what Tracy calls billion dollar Epstein industry.';

MERGE (n:Person {id: 'SharonChurcher'})
SET n.name = 'Sharon Churcher',
    n.person_type = 'Journalist, Daily Mail',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'FIRST_COMPROMISE',
    n.receptor = 'REVENUE',
    n.sublimation = 'Getting the biggest story.',
    n.unsublimated = 'Tracy claims: in email exchanges with VRG, encouraged throwing in names of anyone with fleeting Epstein association to maximize book deal value. Suggested including Dershowitz because everyone thinks hes a pedophile. The emails came out in discovery. If accurate, this is journalistic malpractice in service of commercial incentives.',
    n.allin_epstein_note = 'Daily Mail journalist who worked with VRG on potential book deal 2011-2012. Emails from discovery allegedly show encouragement to include prominent names for bigger deal. Paid VRG $160K+ plus serialization revenue for interviews and Prince Andrew photo.';

MERGE (n:Person {id: 'JulieKBrown'})
SET n.name = 'Julie K. Brown',
    n.person_type = 'Investigative Journalist, Miami Herald',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'ENTRY',
    n.receptor = 'MISSION',
    n.sublimation = 'n/a — genuine investigative work',
    n.unsublimated = 'Tracy calls her overrated, rife with errors, claims she fabricated quotes in Perversion of Justice. But her Miami Herald series reopened the case that led to 2019 federal indictment. Without her reporting, there is no second prosecution. Tracy attacks the journalist who created the accountability event — same pattern as attacking the victims. The function is the same: discredit the source to neutralize the finding.',
    n.allin_epstein_note = 'Tracy claims: incredibly overrated, series rife with errors, fabricated quotes in book Perversion of Justice. But her 2018 Miami Herald series is universally credited with reopening the Epstein case and leading to 2019 federal indictment. Awarded multiple journalism prizes. Tracy attacks her credibility as part of systematic discrediting of the accountability infrastructure.';

MERGE (n:Person {id: 'HillaryClinton'})
SET n.name = 'Hillary Clinton',
    n.person_type = 'Former Secretary of State',
    n.allin_epstein_note = 'Referenced in episode: gave BBC interview saying Clintons had no real connections with Epstein but Trump is orchestrating cover-up. Sacks uses this as example of partisan weaponization — everyone points finger at political opponents. The mutual accusation pattern is itself a cover: if everyone accuses everyone, the structural analysis drowns in partisan noise.';

MERGE (n:Person {id: 'LisaPhillips'})
SET n.name = 'Lisa Phillips',
    n.person_type = 'Epstein Accuser',
    n.allin_epstein_note = 'Tracy case study: 21-year-old professional model, visited island via ferry, never claimed victimization for ~20 years, said on 2020 podcast she had no idea what these girls were talking about, then filed claim when JP Morgan $290M settlement opened. Received estimated ~$2M tax-free. Tracy uses as example of financial incentive driving victim inflation. The graph notes: individual cases of opportunism do not disprove the existence of a trafficking operation. Tracy selects the weakest claims to discredit the strongest.';


// ═══════════════════════════════════
// §2  STRUCTURAL NODES
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'AllInEpsteinSpecial'})
SET n.name = 'All-In Epstein Special (Sacks Solo, Feb 2026)',
    n.year = 2026,
    n.system_type = 'NarrativeManagement',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Solo episode hosted by David Sacks (Trump AI Czar) during co-host ski week. Three guests representing managed spectrum: Sagar (structural/maximalist, time-limited), Tracy (minimalist/debunker, given dominance), Bass (Hoffman-focused, partisan utility). Format ensures structural analysis is constrained while victim-discrediting thesis dominates. Sacks concludes with performed epistemic humility (keeping open mind). No victims, no victim advocates, no intelligence analysts, no financial forensics experts invited. The episode is narrative infrastructure for the Trump administration Epstein position: the scandal is overblown, victims are unreliable, the real story is Democrat hypocrisy (Hoffman), and we should all calm down.';

MERGE (n:HistoricalSystem {id: 'EpsteinSettlementIndustry'})
SET n.name = 'Epstein Settlement Industry (~$500M+)',
    n.year = 2019, n.year_end = 2026,
    n.system_type = 'LegalInfrastructure',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'Tracy documented on podcast: Epstein Estate fund ~$121M (non-adversarial, confidential, tax-free, mediator Simona Lelchuk). JP Morgan settlement ~$290M (30% attorneys fees approved by Judge Rakoff). Deutsche Bank settlement ~$80-90M. Bank of America class action pending. Plus 20-25 secret individual settlements. Total exceeds $500M. Healthcare fund from USVI settlement covers alleged victims until 2028. Claims criteria described as extremely lax — JP Morgan even more lax than Estate fund. The graph notes: the existence of a settlement industry does not disprove underlying crimes. Financial incentives can inflate victim counts AND genuine trafficking can have occurred. Tracy presents these as mutually exclusive. They are not.';

MERGE (n:HistoricalSystem {id: 'VRGRecantations'})
SET n.name = 'VRG Recantation Pattern',
    n.year = 2014, n.year_end = 2025,
    n.system_type = 'EvidencePattern',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'Tracy documented: VRG recanted allegations against Dershowitz (6-7 occasions described in graphic sworn detail), Steven Kline (Harvard professor), Jean-Luc Brunell (modeling mogul). Memoir manuscript admitted as fictionalized by own lawyers 2017-2019. Bill Clinton island claim unsupported by evidence. Sharon Churcher emails suggest names added for commercial value. The graph notes: recantations in the context of massive legal pressure, settlement incentives, and power differentials are not simple evidence of fabrication. VRG was simultaneously a genuine person in Epsteins orbit AND someone whose account was shaped by lawyers, journalists, and financial incentives. Both can be true. Tracy requires choosing one.';

MERGE (n:HistoricalSystem {id: 'ManagedSpectrumPattern'})
SET n.name = 'Pattern 37: Managed Spectrum',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 37 — Managed Spectrum: The appearance of balanced coverage created by carefully selecting which positions are represented and how much airtime each receives. Sacks episode structure: (1) Sagar (structural analyst) given 30 min, forced into factual disputes, departed early. (2) Tracy (minimalist) given unlimited time, dominates second half, systematically discredits victims, journalists, and lawyers. (3) Bass (citizen journalist) focused narrowly on Hoffman (Democrat donor). EXCLUDED: victims, victim advocates, intelligence analysts, financial forensics experts, Julie K Brown, anyone who would contextualize the Mossad angle or the surveillance equipment or the BCCI connections. The spectrum appears balanced (maximalist vs minimalist vs moderate). The spectrum is managed (structural analysis constrained, victim-discrediting amplified, partisan utility maximized). Same technique as Fox News fair and balanced: invite the weak version of the opposing view, give the strong version of your own view unlimited time.';

MERGE (n:HistoricalSystem {id: 'SelectiveEvidentiarism'})
SET n.name = 'Pattern 38: Selective Evidentiarism',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 38 — Selective Evidentiarism: Performing epistemic rigor while systematically excluding evidence that doesnt serve the thesis. Tracy demands evidentiary standards for victim claims while never addressing: (1) Israeli surveillance equipment in Epstein apartment (documented), (2) FBI memo identifying Epstein as co-opted Mossad agent (documented), (3) Epstein FOIA-ing CIA about himself in 1999 (documented), (4) False Austrian passport at age 29 (documented), (5) BCCI-era money laundering connections (documented), (6) Wexner power of attorney and foundation funding Israeli causes (documented), (7) Pentagon and FBI real estate deals offered through Cayman entities (documented). Each of these has stronger evidentiary basis than the victim claims Tracy spends hours discrediting. But they are excluded because they point toward the intelligence and financial infrastructure that the minimalist thesis cannot accommodate. The evidentiarism is real — but only applied in one direction.';

MERGE (n:HistoricalSystem {id: 'VictimDiscreditingFunction'})
SET n.name = 'Pattern 39: Victim Discrediting as Network Protection',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 39 — Victim Discrediting as Network Protection: Tracy systematically discredits VRG (mentally ill confabulist), Sarah Ransom (mentally ill), Maria Farmer (mentally ill), Lisa Phillips (opportunist), Julie K Brown (fabricator). Each individual discrediting may contain valid observations about specific claims. But the aggregate function is network protection: if all victims are unreliable, all claims are mythology, all lawyers are extortionists, and all journalists are fabricators — then the intelligence infrastructure, the money laundering, the surveillance equipment, the Pentagon real estate deals, the Mossad connections, the tech billionaire recruitment — all of it disappears. The weakest claims are attacked to make the strongest evidence invisible. Tracy never says there is nothing to see here — but his thesis makes it impossible to see anything. The function is the same as the Anthropic ban: control what can be examined by controlling who gets to examine it.';

MERGE (n:HistoricalSystem {id: 'HoffmanPartisanWeapon'})
SET n.name = 'Hoffman as Partisan Weapon',
    n.year = 2026,
    n.system_type = 'NarrativeWeapon',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Kevin Bass analysis on podcast: Hoffman had ~400 contact initiations with Epstein, 42 meetings, multiple island visits, extensive financial relationship, assistants in constant contact. His 2019 Axios statement (few interactions, all through Joito for MIT) contradicted at every point. Then Hoffman accused Trump and Musk on X. Sacks steered conclusion: Hoffman is glass house stone-thrower. The partisan utility: Hoffman is LinkedIn founder and major Democrat donor. Focusing on his lies converts bipartisan scandal into anti-Democrat weapon. Trump and Musk connections (8+ flights, Kimbal honeytrap, 140+ file references) receive no equivalent scrutiny. The Hoffman analysis is factually valid. The exclusive focus on Hoffman is the narrative weapon.';


// ═══════════════════════════════════
// §3  CONNECTIVE EDGES
// ═══════════════════════════════════

// ── Sacks → Episode (narrative manager)
MATCH (a {id: 'Sacks'}) MATCH (b {id: 'AllInEpsteinSpecial'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'narrative_manager', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.opacity = 'OPEN_BAZAAR',
    r.note = 'Trump AI Czar solo-hosts Epstein episode. Invites managed spectrum. Defends Jason. Gives Tracy dominance. Focuses Bass on Hoffman. Concludes with performed open-mindedness. Every editorial choice serves the administration position: scandal overblown, victims unreliable, Democrats are hypocrites. Not journalism. Narrative infrastructure.';

// ── Episode → Epstein enrichment (extends)
MATCH (a {id: 'AllInEpsteinSpecial'}) MATCH (b {id: 'EpsteinHinge'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'narrative_management_of', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'The episode manages the Epstein narrative for a tech/VC audience. The Epstein network is the hinge between intelligence infrastructure and tech billionaire recruitment. Managing how this audience understands Epstein protects the network nodes that are still active (Thiel, Musk connections, Palantir, surveillance tech pipeline). Sacks is not just hosting a podcast. He is performing damage control for a network he is embedded in.';

// ── Tracy → victim discrediting
MATCH (a {id: 'MichaelTracy'}) MATCH (b {id: 'VictimDiscreditingFunction'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'primary_instrument', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'Tracy performs the victim discrediting function with genuine intellectual effort. He has done real research. His specific factual claims about recantations and settlement incentives may be accurate. But the aggregate function of his work — making all victims unreliable, all claims mythology, all accountability infrastructure corrupt — serves network protection regardless of his personal intent. He does not need to be paid by anyone. His self-image as lone rational corrective is sufficient motivation. The narcissism of the Gregory Peck self-comparison drives the work. Same pattern as Emil Michael on E263: the self-image produces the disclosure. Here: the self-image produces the cover.';

// ── Tracy → selective evidentiarism
MATCH (a {id: 'MichaelTracy'}) MATCH (b {id: 'SelectiveEvidentiarism'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'exemplifies', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = 'Demands evidentiary rigor for victim claims. Never addresses documented intelligence infrastructure: surveillance equipment, FBI Mossad memo, false passport, CIA FOIA, BCCI connections, Wexner foundation, Pentagon real estate. The rigor is real but unidirectional. Same pattern as Sacks demanding evidentiary standards for Anthropics safety claims while his administration discloses classified information on podcasts.';

// ── Sagar → Khashoggi nexus (confirmed connection)
MATCH (a {id: 'SagarEnjeti'}) MATCH (b {id: 'AdnanKhashoggi'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'identified_connection', r.weight = 2,
    r.edge_function = 'EXPOSURE',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Sagar on podcast explicitly named Adnan Khashoggi as part of Epsteins 1980s origins alongside Douglas Leese and Steven Hoffenberg. Connects to existing Khashoggi nexus enrichment — the same family that threads through Iran-Contra, arms dealing, intelligence, and eventually the murder of Jamal Khashoggi. Sagar sees the structural connection. Tracy ignores it. Sacks doesnt pursue it.';

// ── Sagar → Iran-Contra connection
MATCH (a {id: 'SagarEnjeti'}) MATCH (b {id: 'IranContra'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'identified_epstein_origin', r.weight = 2,
    r.edge_function = 'EXPOSURE',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Sagar explicitly connected Epsteins origins to Iran-Contra era arms trafficking and money laundering networks. False Austrian passport, BCCI connections, Bear Stearns departure into darkness. This connects directly to existing graph nodes: SafariClub, IranContra, AdnanKhashoggi, BCCI. The structural analysis that the managed spectrum constrains.';

// ── Bass → Hoffman (documented lies)
MATCH (a {id: 'KevinBass'}) MATCH (b {id: 'Hoffman'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'documented_lies', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Bass used AI tools (vectorized SQL, MCP agents) to document ~400 Hoffman-Epstein contact initiations, 42 meetings, multiple island visits, extensive financial relationships. Every claim in Hoffmans 2019 Axios statement contradicted. Bonded over book called Deception. Hoffman was Epsteins gateway into Silicon Valley same way Joito was gateway into academia. The analysis is factually strong. The exclusive focus on Hoffman (Democrat donor) rather than equivalent analysis of other tech figures is the partisan function.';

// ── Managed Spectrum → E263 Podcast as Deal Room (same technique)
MATCH (a {id: 'ManagedSpectrumPattern'}) MATCH (b {id: 'PodcastAsDealRoom'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_format_different_topic', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'E263 (Emil Michael): podcast as deal room for defense tech and Anthropic punishment. Epstein Special (Sacks solo): podcast as narrative management for Epstein scandal. Same format — entertainment podcast with millions of listeners used to serve administration interests. Same technique — managed guest selection creating appearance of balance while ensuring desired conclusion. Different topic. Identical function.';

// ── Settlement Industry → Watergate (accountability infrastructure comparison)
MATCH (a {id: 'EpsteinSettlementIndustry'}) MATCH (b {id: 'Watergate'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'accountability_vs_industry', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Watergate produced accountability through journalism → investigation → prosecution → resignation. The Epstein settlement industry produces payouts without accountability: non-adversarial, confidential, no prosecution of enablers, no structural reform. The settlements function as a release valve — victims get money, lawyers get fees, banks pay fines, and the intelligence infrastructure remains intact. The accountability machine has been replaced by a settlement machine. Same function as the Open Bazaar: exposure without consequences.';

// ── Victim discrediting → Pattern Zero
MATCH (a {id: 'VictimDiscreditingFunction'}) MATCH (b {id: 'PatternZero'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'protects_cognitive_substrate', r.weight = 3,
    r.edge_function = 'COVER',
    r.note = 'If the Epstein network was partly an intelligence operation (cameras, surveillance, kompromat, recruitment of tech billionaires into compromising environments) — then victim discrediting protects the intelligence function by making the entire story seem like hysteria. The cameras in bedrooms are the analog precursor to AI conversation logs (Pattern Zero). Epstein collected behavior. AI collects cognition. Both serve the same function: access to what people hide. Discrediting victims of the behavioral collection system protects the conceptual legitimacy of the cognitive collection system. If Epsteins surveillance wasnt really surveillance, then AIs cognitive access isnt really surveillance either.';

// ── Hoffman partisan weapon → Anthropic ban (same technique)
MATCH (a {id: 'HoffmanPartisanWeapon'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_technique_different_domain', r.weight = 2,
    r.edge_function = 'COVER',
    r.note = 'Anthropic ban: punish the company that refused, frame refusal as ideological (they didnt donate to Trump), make it about partisanship rather than structural power. Hoffman focus: punish the individual who accused Trump/Musk, frame his lies as the story, make it about partisan hypocrisy rather than structural network. Same technique: convert structural analysis into partisan narrative. The partisan frame prevents anyone from examining the architecture that both parties share.';

// ── Sacks epistemic performance → Open Bazaar
MATCH (a {id: 'Sacks'}) MATCH (b {id: 'EraOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'performed_open_mindedness', r.weight = 2,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'Sacks concludes: Im keeping an open mind. It would not surprise me if Michael Tracy turned out to be correct but also wouldnt completely surprise me if some version of Sagars version proved correct. This is performed epistemic humility — the appearance of balance after an episode structurally designed to amplify the minimalist position. In the Open Bazaar, balance is performed while outcomes are managed. The open mind is the mask. The managed spectrum is the operation.';

// ── Episode → E263 (same week, same function)
MATCH (a {id: 'AllInEpsteinSpecial'}) MATCH (b {id: 'AllInE263'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_platform_complementary_functions', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.note = 'Same platform (All-In), same week, complementary functions. E263: Emil Michael discloses classified military information, punishes Anthropic, pitches defense tech VC. Epstein Special: Sacks manages Epstein narrative, discredits accountability infrastructure, converts scandal to partisan weapon against Democrats. Together they constitute a media operation: E263 demonstrates the administrations military competence. Epstein Special neutralizes the administrations greatest vulnerability. Both disguised as entertainment.';


// ═══════════════════════════════════════════════════
// §4  EMERGENT PATTERNS FROM THIS ENRICHMENT
// ═══════════════════════════════════════════════════
//
// PATTERN 37 — Managed Spectrum:
//   Appearance of balance through selected positions
//   and asymmetric airtime. Structural analysis constrained.
//   Victim-discrediting amplified. Partisan utility maximized.
//   Who is NOT invited defines the spectrum.
//
// PATTERN 38 — Selective Evidentiarism:
//   Performing epistemic rigor while systematically excluding
//   evidence that doesnt serve the thesis. Evidentiary standards
//   applied to victims but not to intelligence infrastructure.
//   The rigor is real. The direction is managed.
//
// PATTERN 39 — Victim Discrediting as Network Protection:
//   Individual claims scrutinized to make aggregate structure
//   invisible. Weakest claims attacked to make strongest evidence
//   disappear. If all victims are unreliable, the cameras,
//   the passports, the BCCI, the Mossad — all of it vanishes.
//   The function is network protection regardless of intent.
//
// TOTAL AIWAR GRAPH (all 8 enrichments):
//   ~4,800 lines across 8 cypher files
//   39+ structural patterns
//   50+ years (1973-2026)
//   3 continents + Indian Ocean
//   3 intelligence paradigms
//   1 family tree connecting everything (Khashoggi)
//   1 meta-function (energy/cognitive leverage over adversary)
//   1 substrate (Pattern Zero: cognitive infrastructure control)
//   2 podcast episodes that together constitute a media operation
//     for the Trump administration disguised as entertainment
//
// ═══════════════════════════════════════════════════
