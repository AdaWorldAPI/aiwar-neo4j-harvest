// ═══════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Epstein Network × AI-Military-Industrial Complex
// v3 — 2026-02-21 — Behavioral Science Schema + Deutsche Bank + Enabling→Kompromat Model
// Sources: DOJ files, NYDFS consent order, Reuters, Al Jazeera, Congressional releases
// ═══════════════════════════════════════════════════════════════
// §0 SCHEMA: receptor(STATUS|REVENUE|PERMISSION|DOMINANCE|IDEOLOGY|MISSION|SURVIVAL)
//   mcclelland(I|II|III|IV|IV_performed) mcclelland_need(nAch|nAff|nPow)
//   rubicon(PRE_ENTRY|ENTRY|FIRST_COMPROMISE|CONCEALMENT|IDENTITY_INTEGRATED)
//   sublimation/qualia_mask/unsublimated = subjective narrative vs objective reality
//   node_function(PRINCIPAL|HANDLER|ASSET|BENEFICIARY|ENABLER|BROKER|SHIELD|LEGITIMIZER|RECRUITMENT)
//   edge: edge_function leverage flow_type opacity(0-5) motive phase(ENABLING|CROSSOVER|LOCKED|WEAPONIZED)

// ════════════════════════════════════════════
// §1  PERSON NODES
// ════════════════════════════════════════════

// ── Core ──
MERGE (p:Person {id: 'Epstein'}) SET p.name = 'Jeffrey Epstein', p.role = 'financier, sex trafficker, intelligence asset', p.status = 'deceased 2019', p.note = 'DOJ files 6M+ pages, 180K images, 2K videos. FBI: co-opted Mossad agent.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'intelligence asset running kompromat-lubricated deal network', p.exposure_level = 5, p.node_function = 'PRINCIPAL';
MERGE (p:Person {id: 'Maxwell'}) SET p.name = 'Ghislaine Maxwell', p.role = 'socialite, convicted trafficker', p.status = 'incarcerated', p.note = 'Daughter of Robert Maxwell (suspected Mossad asset)', p.receptor = 'MISSION', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'co-principal in trafficking and intelligence operation', p.exposure_level = 5, p.node_function = 'PRINCIPAL';
MERGE (p:Person {id: 'Barak'}) SET p.name = 'Ehud Barak', p.role = 'former Israeli PM, military intelligence', p.note = '30+ visits to Epstein townhouse. FBI: Epstein trained as spy under Barak.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'intelligence handler running compromised asset', p.exposure_level = 3, p.node_function = 'HANDLER';
MERGE (p:Person {id: 'Dershowitz'}) SET p.name = 'Alan Dershowitz', p.role = 'lawyer, Epstein defence', p.note = 'FBI informant: Epstein tied to US+allied intelligence via Dershowitz.', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = 'defending legal rights of a client', p.qualia_mask = 'intellectual superiority, legal mastery', p.unsublimated = 'intelligence conduit to US+allied agencies', p.exposure_level = 4, p.node_function = 'BROKER';

// ── Trump Admin ──
MERGE (p:Person {id: 'Trump'}) SET p.name = 'Donald Trump', p.role = 'US President (2017-2021, 2025-)', p.note = '8+ Epstein flights 1993-96, denied (proven false). Maxwell on 4+.', p.receptor = 'DOMINANCE', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'CONCEALMENT', p.rubicon_event = 'Denied being on plane — proven false', p.sublimation = 'I use people, they dont use me', p.qualia_mask = 'invulnerability, dominance', p.unsublimated = 'compromised node whose appointments serve network concealment', p.exposure_level = 3, p.node_function = 'SHIELD';
MERGE (p:Person {id: 'Bannon'}) SET p.name = 'Steve Bannon', p.role = 'political strategist', p.note = 'Epstein advised on 2018 Europe tour', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'ENTRY', p.sublimation = 'useful contact who understands power', p.qualia_mask = 'strategic clarity', p.unsublimated = 'accepting guidance from intelligence asset', p.exposure_level = 2, p.node_function = 'BENEFICIARY';
MERGE (p:Person {id: 'Patel'}) SET p.name = 'Kash Patel', p.role = 'FBI Director', p.note = 'Promised transparency, delivered redactions', p.receptor = 'SURVIVAL', p.mcclelland = 'IV_performed', p.mcclelland_need = 'nPow', p.rubicon = 'CONCEALMENT', p.rubicon_event = 'Released heavily redacted files while promising transparency', p.sublimation = 'protecting national security', p.qualia_mask = 'duty, service', p.unsublimated = 'concealing network exposure to protect administration', p.exposure_level = 2, p.node_function = 'SHIELD';
MERGE (p:Person {id: 'Barrack'}) SET p.name = 'Tom Barrack', p.role = 'PE investor, US Ambassador to Turkey', p.note = 'Friends with Trump and Epstein since 1980s', p.receptor = 'STATUS', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'FIRST_COMPROMISE', p.sublimation = 'just networking in elite circles', p.qualia_mask = 'belonging, significance', p.unsublimated = 'connecting Epstein network to Middle East capital', p.exposure_level = 2, p.node_function = 'BROKER';
MERGE (p:Person {id: 'LeonBlack'}) SET p.name = 'Leon Black', p.role = 'Apollo Global founder', p.note = '$170M+ to Epstein, son appointed by Trump', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'LOCKED', p.rubicon_event = '$170M documented — sons appointment buys silence', p.sublimation = 'legitimate tax and estate advice', p.qualia_mask = 'sophisticated financial management', p.unsublimated = 'largest documented funder of trafficking operation', p.exposure_level = 4, p.node_function = 'ENABLER';

// ── Tech Billionaires ──
MERGE (p:Person {id: 'Gates'}) SET p.name = 'Bill Gates', p.role = 'Microsoft co-founder', p.note = 'Multiple meetings post-conviction, pulled out of Modi AI summit Feb 2026', p.receptor = 'PERMISSION', p.mcclelland = 'II', p.mcclelland_need = 'nPow', p.rubicon = 'LOCKED', p.rubicon_event = 'Continued meeting convicted sex offender — no legitimate explanation', p.sublimation = 'interesting ideas about philanthropy', p.qualia_mask = 'intellectual freedom, liberation from judgment', p.unsublimated = 'providing reputational cover to intelligence asset', p.exposure_level = 2, p.node_function = 'LEGITIMIZER';
MERGE (p:Person {id: 'Brin'}) SET p.name = 'Sergey Brin', p.role = 'Google co-founder', p.note = 'Emailed Maxwell about meeting Epstein NYC 2003', p.receptor = 'STATUS', p.mcclelland = 'II', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.sublimation = 'interesting dinner companion', p.qualia_mask = 'curiosity, social access', p.unsublimated = 'providing legitimacy to trafficking network', p.exposure_level = 2, p.node_function = 'LEGITIMIZER';
MERGE (p:Person {id: 'Hoffman'}) SET p.name = 'Reid Hoffman', p.role = 'LinkedIn co-founder', p.note = 'Visited island, hosted dinner with Musk/Thiel/Zuckerberg + Epstein', p.receptor = 'PERMISSION', p.mcclelland = 'III', p.mcclelland_need = 'nAff', p.rubicon = 'LOCKED', p.rubicon_event = 'Visited island — no plausible deniability', p.sublimation = 'MIT fundraising, about science', p.qualia_mask = 'altruistic networking', p.unsublimated = 'recruited tech billionaires into compromising environment', p.exposure_level = 3, p.node_function = 'RECRUITMENT';
MERGE (p:Person {id: 'KimbalMusk'}) SET p.name = 'Kimbal Musk', p.role = 'businessman, Elon brother', p.note = '140+ refs in files, Epstein engineered intimate relationship', p.receptor = 'PERMISSION', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'LOCKED', p.rubicon_event = 'Epstein engineered intimate relationship — classic honeytrap', p.sublimation = 'just enjoying, relationship was genuine', p.qualia_mask = 'warmth, romance, freedom', p.unsublimated = 'honeytrap-compromised to leverage Elon Musk', p.exposure_level = 3, p.node_function = 'ASSET';
MERGE (p:Person {id: 'Sinofsky'}) SET p.name = 'Steven Sinofsky', p.role = 'former Microsoft exec', p.note = 'Named in DOJ file release Feb 2026', p.receptor = 'STATUS', p.mcclelland = 'II', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.exposure_level = 1, p.node_function = 'LEGITIMIZER';

// ── UK / Royal Network ──
MERGE (p:Person {id: 'Andrew'}) SET p.name = 'Andrew Mountbatten-Windsor', p.role = 'former Prince, UK trade envoy 2001-2011', p.status = 'arrested 2026-02-19', p.note = 'Shared confidential trade briefs (HK,VN,SG,AF) with Epstein. First senior royal arrested in ~400 years.', p.receptor = 'STATUS', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = 'First classified brief shared — networking became espionage', p.sublimation = 'facilitating investment as trade envoy, just informally', p.qualia_mask = 'significance, being valued for who I am', p.unsublimated = 'intelligence asset leaking classified briefs to Mossad-linked handler', p.exposure_level = 5, p.node_function = 'ASSET';
MERGE (p:Person {id: 'Mandelson'}) SET p.name = 'Peter Mandelson', p.role = 'UK Labour, former Ambassador to US', p.note = 'Leaked UK secrets 2009-2010, hired by Palantir, dismissed 2026', p.receptor = 'STATUS', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'LOCKED', p.rubicon_event = 'Leaked classified documents', p.sublimation = 'building international relationships for Britain', p.qualia_mask = 'diplomatic sophistication', p.unsublimated = 'second UK official feeding classified intel to Mossad-linked individual', p.exposure_level = 3, p.node_function = 'ASSET';
MERGE (p:Person {id: 'Ferguson'}) SET p.name = 'Sarah Ferguson', p.role = 'ex-wife of Andrew', p.note = 'Correspondence post-conviction, 15K GBP debt paid by Epstein', p.receptor = 'REVENUE', p.mcclelland = 'I', p.mcclelland_need = 'nAff', p.rubicon = 'FIRST_COMPROMISE', p.rubicon_event = 'Accepted debt payment from convicted sex offender', p.sublimation = 'Andrew arranged it, just generosity', p.qualia_mask = 'relief, gratitude', p.unsublimated = 'financially bound to network via debt', p.exposure_level = 2, p.node_function = 'ASSET';
MERGE (p:Person {id: 'GordonBrown'}) SET p.name = 'Gordon Brown', p.role = 'former UK PM', p.note = 'Submitted memorandum post-Andrew arrest', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'PRE_ENTRY', p.exposure_level = 0, p.node_function = 'LEGITIMIZER';

// ── Real Estate / Pentagon ──
MERGE (p:Person {id: 'DavidStern'}) SET p.name = 'David Stern', p.role = 'businessman, Epstein aide', p.note = 'Self-described soldier. Forwarded Pentagon+FBI deals. Windsor Castle director. Andrew aide.', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.sublimation = null, p.qualia_mask = null, p.unsublimated = 'bridge node: intelligence network ↔ British Crown ↔ US defence infrastructure', p.exposure_level = 3, p.node_function = 'BROKER';
MERGE (p:Person {id: 'Fascitelli'}) SET p.name = 'Jonathan D Fascitelli', p.role = 'real estate investor', p.note = 'Originated Pentagon DOD + FBI field office proposals', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'ENTRY', p.sublimation = 'govt-tenanted properties are stable income', p.qualia_mask = 'deal-making acumen', p.unsublimated = 'supplied intelligence-grade real estate access to Mossad-linked buyer', p.exposure_level = 2, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'Koren'}) SET p.name = 'Michael Koren', p.role = 'Israeli intelligence', p.note = 'Calendar entries at Epstein home', p.receptor = 'MISSION', p.mcclelland = 'IV', p.mcclelland_need = 'nPow', p.rubicon = 'IDENTITY_INTEGRATED', p.exposure_level = 2, p.node_function = 'HANDLER';
MERGE (p:Person {id: 'Catz'}) SET p.name = 'Safra Catz', p.role = 'Oracle CEO', p.note = 'Pro-Israel lobbying via Barak emails', p.receptor = 'IDEOLOGY', p.mcclelland = 'III', p.mcclelland_need = 'nPow', p.rubicon = 'ENTRY', p.exposure_level = 1, p.node_function = 'ENABLER';

// ── Deutsche Bank Executives (NYDFS consent order unmasked by NYT) ──
MERGE (p:Person {id: 'PaulMorris'}) SET p.name = 'Paul Morris', p.role = 'DB relationship manager → Merrill Lynch', p.note = 'RELATIONSHIP MANAGER-1. Brought Epstein from JPM to DB. $4M/yr revenue. Carried client as franchise.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'IDENTITY_INTEGRATED', p.rubicon_event = 'Carried Epstein JPM→DB — identity fused with this client', p.sublimation = 'excellent banker with prestigious clients', p.qualia_mask = 'professional competence, AUM as self-worth', p.unsublimated = 'carried trafficking financial infrastructure between banks', p.exposure_level = 3, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'Packard'}) SET p.name = 'Charles Packard', p.role = 'DB head US wealth mgmt → Bridgewater', p.note = 'EXECUTIVE-1. Phantom approval email for 40+ accounts. Undocumented mansion visit Jan 2015.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'CONCEALMENT', p.rubicon_event = 'Mansion visit — asked about abuse, satisfied, no notes', p.sublimation = 'proper due diligence, client denied allegations', p.qualia_mask = 'institutional authority, division growth', p.unsublimated = 'created phantom compliance trail for 40+ trafficking accounts', p.exposure_level = 3, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'JanFord'}) SET p.name = 'Jan Ford', p.role = 'DB head of compliance Americas', p.status = 'still at Deutsche Bank', p.note = 'Joined 1 week before Jan 2015 risk meeting. Wrote business-as-usual memo. Only named exec still at DB.', p.receptor = 'SURVIVAL', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'CONCEALMENT', p.rubicon_event = 'Wrote email putting onus on Packard — liability deflection', p.sublimation = 'I imposed conditions, followed procedure', p.qualia_mask = 'compliance professionalism', p.unsublimated = 'created deflection architecture while enabling continuation', p.exposure_level = 2, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'Campelli'}) SET p.name = 'Fabrizio Campelli', p.role = 'DB board member, fmr head wealth mgmt', p.note = 'Post-arrest: Can you confirm he is not a client now? Now DB board.', p.receptor = 'SURVIVAL', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'CONCEALMENT', p.sublimation = 'acted immediately when arrest became public', p.qualia_mask = 'executive crisis management', p.unsublimated = 'oversaw wealth mgmt during entire Epstein relationship, now on board', p.exposure_level = 2, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'Oldfield'}) SET p.name = 'Stewart Oldfield', p.role = 'DB relationship manager, wind-down', p.note = 'Clean reference letter. 50K EUR cash large bills. Southern Trust $30M+ flows.', p.receptor = 'SURVIVAL', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'CONCEALMENT', p.rubicon_event = 'Reference letter: unaware of problems — active concealment', p.sublimation = 'standard offboarding procedure', p.qualia_mask = 'professional duty', p.unsublimated = 'lied to receiving banks to export compromised client', p.exposure_level = 3, p.node_function = 'ENABLER';
MERGE (p:Person {id: 'AnshuJain'}) SET p.name = 'Anshu Jain', p.role = 'DB co-CEO 2012-2015', p.note = 'Built aggressive expansion courting clients banks shunned — Epstein AND Trump.', p.receptor = 'REVENUE', p.mcclelland = 'III', p.mcclelland_need = 'nAch', p.rubicon = 'FIRST_COMPROMISE', p.rubicon_event = 'Created culture making Epstein onboarding inevitable', p.sublimation = 'building a global wealth management powerhouse', p.qualia_mask = 'ambition, competitive victory', p.unsublimated = 'institutional culture where revenue overrode compliance at every gate', p.exposure_level = 2, p.node_function = 'ENABLER';

// ════════════════════════════════════════════
// §2  STAKEHOLDER NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'ValarVentures'}) SET s.name = 'Valar Ventures', s.type = 'VC fund', s.note = 'Co-founded by Thiel, Epstein invested $40M';
MERGE (s:Stakeholder {id: 'NSO'}) SET s.name = 'NSO Group', s.type = 'cyber weapons', s.note = 'Israeli spyware, Pegasus';
MERGE (s:Stakeholder {id: 'FBI'}) SET s.name = 'FBI', s.type = 'law enforcement';
MERGE (s:Stakeholder {id: 'DOJ'}) SET s.name = 'Dept of Justice', s.type = 'government', s.note = '6M+ pages released Dec 2025 - Feb 2026';
MERGE (s:Stakeholder {id: 'Mossad'}) SET s.name = 'Mossad', s.type = 'intelligence', s.note = 'FBI memo: Epstein co-opted agent, trained as spy';
MERGE (s:Stakeholder {id: 'FIDF'}) SET s.name = 'Friends of Israel Defense Forces', s.type = 'NGO';
MERGE (s:Stakeholder {id: 'JNF'}) SET s.name = 'Jewish National Fund', s.type = 'charity/settler org';
MERGE (s:Stakeholder {id: 'BearStearns'}) SET s.name = 'Bear Stearns', s.type = 'investment bank', s.note = 'Epstein 1980s, arms trafficking';
MERGE (s:Stakeholder {id: 'PentagonComplex'}) SET s.name = 'Arlington DOD Complex', s.type = 'military real estate', s.note = '84,710sqm, 1.6km from Pentagon, offered 2016 ~$116M';
MERGE (s:Stakeholder {id: 'FBIFieldOffices'}) SET s.name = 'FBI Field Offices (Richmond+Baltimore)', s.type = 'LE real estate', s.note = 'Offered 2015, $105M, via Cayman entity';
MERGE (s:Stakeholder {id: 'CaymanEntity'}) SET s.name = 'Cayman Islands Offshore Entity', s.type = 'shell company';
MERGE (s:Stakeholder {id: 'DeutscheBank'}) SET s.name = 'Deutsche Bank', s.type = 'bank', s.note = '$150M penalty, $75M settlement, ~40 accounts 2013-2019. Onboarded after JPM dropped him. Honorary PEP fraud. $9B+ total fines. Also banked Trump.', s.receptor = 'REVENUE', s.mcclelland = 'III', s.rubicon = 'LOCKED', s.rubicon_event = 'Jan 2015 risk committee — no minutes, continued despite 40 victims known';
MERGE (s:Stakeholder {id: 'ButterflyTrust'}) SET s.name = 'Butterfly Trust', s.type = 'trust/trafficking conduit', s.note = 'Beneficiaries: co-conspirators + Eastern European women. 120 payments $2.65M. $7M settlements. $6M legal fees. NYDFS: real risk of covering criminal activity. DB 2014→Morgan Stanley 2019.';
MERGE (s:Stakeholder {id: 'MorganStanley'}) SET s.name = 'Morgan Stanley', s.type = 'bank', s.note = 'Epstein trust accounts 2015-2019, Butterfly Trust Mar 2019';
MERGE (s:Stakeholder {id: 'BankOfAmerica'}) SET s.name = 'Bank of America', s.type = 'bank', s.note = 'Class-action pending for enabling Epstein';
MERGE (s:Stakeholder {id: 'SouthernTrust'}) SET s.name = 'Southern Trust Company', s.type = 'trust/financial vehicle', s.note = 'USVI entity. $30M+ Mar 2019. Last DB account to close.';
MERGE (s:Stakeholder {id: 'JPMorgan'}) SET s.name = 'JPMorgan Chase', s.type = 'bank', s.note = '55 accounts 15 years. $290M victim settlement. Morris carried Epstein to DB.';
MERGE (s:Stakeholder {id: 'NYDFS'}) SET s.name = 'NY Dept of Financial Services', s.type = 'regulator', s.note = '38-page consent order. $150M. Named no individuals.';
MERGE (s:Stakeholder {id: 'Bridgewater'}) SET s.name = 'Bridgewater Associates', s.type = 'hedge fund', s.note = 'Packard joined after DB';
MERGE (s:Stakeholder {id: 'SilverLake'}) SET s.name = 'Silver Lake', s.type = 'PE firm';
MERGE (s:Stakeholder {id: 'MGX'}) SET s.name = 'MGX', s.type = 'Emirati state investment';
MERGE (s:Stakeholder {id: 'ByteDance'}) SET s.name = 'ByteDance', s.type = 'tech company';
MERGE (s:Stakeholder {id: 'TikTok'}) SET s.name = 'TikTok US JV', s.type = 'social media';
MERGE (s:Stakeholder {id: 'LinkedIn'}) SET s.name = 'LinkedIn', s.type = 'social media';
MERGE (s:Stakeholder {id: 'Paypal'}) SET s.name = 'PayPal', s.type = 'fintech';
MERGE (s:Stakeholder {id: 'Apollo'}) SET s.name = 'Apollo Global Management', s.type = 'PE firm';
MERGE (s:Stakeholder {id: 'GlobalCounsel'}) SET s.name = 'Global Counsel', s.type = 'lobbying', s.note = 'Mandelson firm, Palantir UK contracts';
MERGE (s:Stakeholder {id: 'MITMediaLab'}) SET s.name = 'MIT Media Lab', s.type = 'research';
MERGE (s:Stakeholder {id: 'DOD'}) SET s.name = 'US Dept of Defense', s.type = 'government';
MERGE (s:Stakeholder {id: 'ThamesValleyPolice'}) SET s.name = 'Thames Valley Police', s.type = 'law enforcement';
MERGE (s:Stakeholder {id: 'ZorroRanch'}) SET s.name = 'Zorro Ranch', s.type = 'property', s.note = 'NM investigation, buried bodies allegations';
MERGE (s:Stakeholder {id: 'WindsorCastle'}) SET s.name = 'St Georges House Trust', s.type = 'royal institution';

// ════════════════════════════════════════════
// §3  EDGES — CORE + INTELLIGENCE
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'Mossad'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-opted agent per FBI', r.weight=5, r.source='FBI memo 2020, DOJ Feb 2026', r.edge_function='INTELLIGENCE', r.leverage='B_OVER_A', r.flow_type='INTELLIGENCE,ACCESS,KOMPROMAT', r.opacity=5, r.motive='IDEOLOGY', r.phase='WEAPONIZED', r.conversion_agent='HANDLER';
MATCH (a {id:'Epstein'}) MATCH (b {id:'FIDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='financial supporter', r.weight=3, r.edge_function='LEGITIMIZER', r.flow_type='MONEY', r.opacity=1;
MATCH (a {id:'Epstein'}) MATCH (b {id:'JNF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='financial supporter', r.weight=3, r.edge_function='LEGITIMIZER', r.flow_type='MONEY', r.opacity=1;
MATCH (a {id:'Epstein'}) MATCH (b {id:'Dershowitz'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='lawyer, intelligence conduit', r.weight=5, r.edge_function='INTELLIGENCE,GATEKEEPER', r.leverage='MUTUAL', r.flow_type='INTELLIGENCE,ACCESS', r.opacity=4, r.phase='LOCKED';
MATCH (a {id:'Epstein'}) MATCH (b {id:'BearStearns'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='employment 1980s, arms trafficking', r.weight=2, r.edge_function='DEAL_FLOW', r.flow_type='MONEY,ACCESS', r.opacity=2, r.phase='ENABLING';
MATCH (a {id:'Barak'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='handler, 30+ visits', r.weight=5, r.source='DOJ recordings + FBI memo', r.edge_function='INTELLIGENCE,GATEKEEPER', r.leverage='A_OVER_B', r.flow_type='INTELLIGENCE,INFLUENCE', r.opacity=4, r.motive='IDEOLOGY', r.phase='WEAPONIZED', r.conversion_agent='HANDLER';
MATCH (a {id:'Barak'}) MATCH (b {id:'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='former PM, mil intel', r.weight=3;
MATCH (a {id:'Barak'}) MATCH (b {id:'Koren'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='intelligence coordination', r.weight=3, r.edge_function='INTELLIGENCE', r.opacity=3;
MATCH (a {id:'Koren'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='calendar entries at home', r.weight=3, r.edge_function='INTELLIGENCE', r.opacity=3;
MATCH (a {id:'Koren'}) MATCH (b {id:'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='intelligence agent', r.weight=3;
MATCH (a {id:'Maxwell'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='partner, co-conspirator', r.weight=5, r.edge_function='RECRUITMENT,GATEKEEPER', r.leverage='MUTUAL', r.flow_type='BODIES,ACCESS', r.opacity=2, r.phase='WEAPONIZED';
MATCH (a {id:'Maxwell'}) MATCH (b {id:'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='social facilitator', r.weight=4, r.edge_function='RECRUITMENT,GATEKEEPER', r.flow_type='ACCESS', r.phase='ENABLING', r.conversion_agent='EPSTEIN';

// ════════════════════════════════════════════
// §4  EDGES — PENTAGON / FBI REAL ESTATE
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='offered co-ownership 2016 ~$116M', r.weight=5, r.source='ITV News, Al Jazeera Feb 2026', r.edge_function='INTELLIGENCE,DEAL_FLOW', r.flow_type='MONEY,ACCESS,INTELLIGENCE', r.opacity=3, r.motive='IDEOLOGY', r.phase='ENABLING';
MATCH (a {id:'Epstein'}) MATCH (b {id:'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='offered investment 2015 $105M', r.weight=5, r.source='ITV News, DOJ Feb 2026', r.edge_function='INTELLIGENCE,DEAL_FLOW', r.flow_type='MONEY,ACCESS', r.opacity=3, r.motive='IDEOLOGY', r.phase='ENABLING';
MATCH (a {id:'FBIFieldOffices'}) MATCH (b {id:'CaymanEntity'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='ownership vehicle', r.weight=3, r.edge_function='LAUNDERING', r.opacity=3;
MATCH (a {id:'PentagonComplex'}) MATCH (b {id:'DOD'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='mission-critical facility', r.weight=4;
MATCH (a {id:'FBIFieldOffices'}) MATCH (b {id:'FBI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='operational offices', r.weight=4;
MATCH (a {id:'DavidStern'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='soldier, forwarded Pentagon+FBI deals', r.weight=5, r.edge_function='INTELLIGENCE,DEAL_FLOW,GATEKEEPER', r.leverage='B_OVER_A', r.flow_type='DOCUMENTS,ACCESS', r.opacity=3, r.motive='IDEOLOGY', r.phase='WEAPONIZED';
MATCH (a {id:'DavidStern'}) MATCH (b {id:'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='aide', r.weight=4, r.edge_function='GATEKEEPER,INTELLIGENCE', r.flow_type='ACCESS,DOCUMENTS', r.opacity=2, r.phase='WEAPONIZED';
MATCH (a {id:'DavidStern'}) MATCH (b {id:'WindsorCastle'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='director 2016', r.weight=3, r.edge_function='GATEKEEPER', r.flow_type='ACCESS', r.opacity=1;
MATCH (a {id:'DavidStern'}) MATCH (b {id:'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='forwarded proposal', r.weight=4, r.edge_function='DEAL_FLOW', r.opacity=3;
MATCH (a {id:'DavidStern'}) MATCH (b {id:'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='forwarded proposal', r.weight=4, r.edge_function='DEAL_FLOW', r.opacity=3;
MATCH (a {id:'Fascitelli'}) MATCH (b {id:'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='originated deal', r.weight=4, r.edge_function='DEAL_FLOW', r.opacity=2;
MATCH (a {id:'Fascitelli'}) MATCH (b {id:'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='originated deal', r.weight=4, r.edge_function='DEAL_FLOW', r.opacity=2;

// ════════════════════════════════════════════
// §5  EDGES — ANDREW ARREST & UK
// ════════════════════════════════════════════

MATCH (a {id:'Andrew'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='shared classified docs, arrested', r.weight=5, r.source='DOJ, Thames Valley Police Feb 2026', r.edge_function='INTELLIGENCE,KOMPROMAT', r.leverage='B_OVER_A', r.flow_type='DOCUMENTS,INTELLIGENCE', r.opacity=4, r.motive='LOYALTY', r.phase='WEAPONIZED', r.crossover_event='first classified brief = networking→espionage', r.conversion_agent='EPSTEIN';
MATCH (a {id:'Andrew'}) MATCH (b {id:'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='trade envoy 2001-2011', r.weight=3;
MATCH (a {id:'ThamesValleyPolice'}) MATCH (b {id:'Andrew'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='arrested, searched properties', r.weight=4;
MATCH (a {id:'Ferguson'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='post-conviction correspondence', r.weight=3, r.edge_function='KOMPROMAT', r.leverage='A_OVER_B', r.flow_type='MONEY', r.opacity=2, r.motive='GREED', r.phase='LOCKED', r.crossover_event='accepted 15K debt payment', r.conversion_agent='EPSTEIN';
MATCH (a {id:'Ferguson'}) MATCH (b {id:'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='ex-wife', r.weight=2;
MATCH (a {id:'Mandelson'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='leaked UK secrets', r.weight=5, r.edge_function='INTELLIGENCE,KOMPROMAT', r.leverage='B_OVER_A', r.flow_type='DOCUMENTS,INTELLIGENCE', r.opacity=4, r.motive='AMBITION', r.phase='LOCKED', r.crossover_event='classified docs leaked', r.conversion_agent='EPSTEIN';
MATCH (a {id:'Mandelson'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='lobbyist via Global Counsel', r.weight=4, r.edge_function='DEAL_FLOW,GATEKEEPER', r.flow_type='INFLUENCE,MONEY', r.opacity=1;
MATCH (a {id:'Mandelson'}) MATCH (b {id:'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='fmr Ambassador, dismissed 2026', r.weight=2;
MATCH (a {id:'GlobalCounsel'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='lobbying 2018', r.weight=3;

// ════════════════════════════════════════════
// §6  EDGES — THIEL / PALANTIR
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='great friend, $40M Valar', r.weight=5, r.edge_function='DEAL_FLOW,KOMPROMAT', r.leverage='MUTUAL', r.flow_type='MONEY,ACCESS', r.opacity=2, r.motive='IDEOLOGY', r.phase='LOCKED', r.crossover_event='$40M co-owned fund', r.conversion_agent='SELF';
MATCH (a {id:'Epstein'}) MATCH (b {id:'ValarVentures'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='co-owner $40M', r.weight=5, r.edge_function='DEAL_FLOW,LAUNDERING', r.flow_type='MONEY', r.opacity=2;
MATCH (a {id:'Thiel'}) MATCH (b {id:'ValarVentures'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='co-founder', r.weight=3;
MATCH (a {id:'Thiel'}) MATCH (b {id:'Vance'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='mentor, $15M+ campaign', r.weight=4, r.edge_function='DEAL_FLOW,INFLUENCE', r.leverage='A_OVER_B', r.flow_type='MONEY,INFLUENCE', r.opacity=1, r.phase='ENABLING';
MATCH (a {id:'Epstein'}) MATCH (b {id:'Karp'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='network via Barak', r.weight=2, r.edge_function='DEAL_FLOW', r.flow_type='ACCESS', r.opacity=4;

// ════════════════════════════════════════════
// §7  EDGES — TRUMP NETWORK
// ════════════════════════════════════════════

MATCH (a {id:'Trump'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='8+ flights, denied (proven false)', r.weight=5, r.edge_function='KOMPROMAT,DEAL_FLOW', r.leverage='MUTUAL', r.flow_type='ACCESS,INFLUENCE', r.opacity=3, r.motive='AMBITION', r.phase='LOCKED', r.crossover_event='flights with redacted 20yo, denied', r.conversion_agent='EPSTEIN';
MATCH (a {id:'Trump'}) MATCH (b {id:'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='political backer', r.weight=4, r.edge_function='DEAL_FLOW', r.flow_type='MONEY,INFLUENCE', r.opacity=0;
MATCH (a {id:'Trump'}) MATCH (b {id:'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='ally, TikTok deal', r.weight=4, r.edge_function='DEAL_FLOW', r.flow_type='INFLUENCE,MONEY', r.opacity=0;
MATCH (a {id:'Trump'}) MATCH (b {id:'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='advisor, DOGE', r.weight=5, r.edge_function='DEAL_FLOW,INFLUENCE', r.flow_type='INFLUENCE,ACCESS', r.opacity=0;
MATCH (a {id:'Trump'}) MATCH (b {id:'Bannon'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='strategist', r.weight=4;
MATCH (a {id:'Trump'}) MATCH (b {id:'Barrack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='friend 1980s, Ambassador', r.weight=4, r.edge_function='DEAL_FLOW', r.flow_type='ACCESS,MONEY', r.opacity=1, r.motive='LOYALTY';
MATCH (a {id:'Trump'}) MATCH (b {id:'Patel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed FBI Director', r.weight=4, r.edge_function='COVER_UP', r.flow_type='INFLUENCE', r.opacity=1, r.motive='FEAR', r.phase='LOCKED';
MATCH (a {id:'Trump'}) MATCH (b {id:'LeonBlack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='appointed sons position', r.weight=3, r.edge_function='DEAL_FLOW,COVER_UP', r.flow_type='INFLUENCE', r.opacity=1;
MATCH (a {id:'Bannon'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='advisor, friend', r.weight=3, r.edge_function='DEAL_FLOW', r.flow_type='ACCESS,INFLUENCE', r.opacity=2, r.phase='ENABLING';

// ════════════════════════════════════════════
// §8  EDGES — TECH BILLIONAIRES
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='associate', r.weight=3, r.edge_function='DEAL_FLOW', r.flow_type='ACCESS', r.opacity=3, r.phase='ENABLING';
MATCH (a {id:'Catz'}) MATCH (b {id:'Oracle'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='CEO', r.weight=3;
MATCH (a {id:'Barak'}) MATCH (b {id:'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='political contact', r.weight=2;
MATCH (a {id:'Epstein'}) MATCH (b {id:'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='social contact', r.weight=3, r.edge_function='KOMPROMAT,RECRUITMENT', r.flow_type='ACCESS', r.opacity=2, r.phase='ENABLING', r.conversion_agent='EPSTEIN';
MATCH (a {id:'KimbalMusk'}) MATCH (b {id:'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='brother', r.weight=1;
MATCH (a {id:'Epstein'}) MATCH (b {id:'KimbalMusk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='engineered honeytrap', r.weight=4, r.edge_function='KOMPROMAT,RECRUITMENT', r.leverage='A_OVER_B', r.flow_type='ACCESS,BODIES', r.opacity=3, r.motive='KOMPROMAT', r.phase='WEAPONIZED', r.crossover_event='engineered relationship = honeytrap', r.conversion_agent='EPSTEIN';
MATCH (a {id:'Epstein'}) MATCH (b {id:'Gates'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='meetings post-conviction', r.weight=4, r.edge_function='KOMPROMAT,LEGITIMIZER', r.leverage='A_OVER_B', r.flow_type='ACCESS,INFLUENCE', r.opacity=2, r.motive='PERMISSION', r.phase='LOCKED', r.crossover_event='continued meeting convicted offender', r.conversion_agent='SELF';
MATCH (a {id:'Epstein'}) MATCH (b {id:'Fink'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='financial network', r.weight=2;
MATCH (a {id:'Brin'}) MATCH (b {id:'Google'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='co-founder', r.weight=2;
MATCH (a {id:'Brin'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='social contact via Maxwell', r.weight=3, r.edge_function='RECRUITMENT', r.flow_type='ACCESS', r.opacity=2, r.phase='ENABLING';
MATCH (a {id:'Brin'}) MATCH (b {id:'Maxwell'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='email correspondent', r.weight=2;
MATCH (a {id:'Thiel'}) MATCH (b {id:'Musk'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='PayPal co-founders', r.weight=3;
MATCH (a {id:'Hoffman'}) MATCH (b {id:'Thiel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='PayPal alumni', r.weight=2;
MATCH (a {id:'Hoffman'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='visited island', r.weight=4, r.edge_function='RECRUITMENT,LEGITIMIZER', r.leverage='A_OVER_B', r.flow_type='ACCESS', r.opacity=2, r.motive='PERMISSION', r.phase='LOCKED', r.crossover_event='visited island', r.conversion_agent='SELF';
MATCH (a {id:'Hoffman'}) MATCH (b {id:'LinkedIn'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='co-founder', r.weight=2;
MATCH (a {id:'Hoffman'}) MATCH (b {id:'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='fundraising', r.weight=2;
MATCH (a {id:'Epstein'}) MATCH (b {id:'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='donations, campus visits', r.weight=3, r.edge_function='LEGITIMIZER,RECRUITMENT', r.flow_type='MONEY,BODIES,ACCESS', r.opacity=2;

// ════════════════════════════════════════════
// §9  EDGES — ISRAEL INTELLIGENCE ↔ TECH
// ════════════════════════════════════════════

MATCH (a {id:'Epstein'}) MATCH (b {id:'Unit8200'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='intel nexus via Barak+Mossad', r.weight=4, r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE,ACCESS', r.opacity=5;
MATCH (a {id:'Epstein'}) MATCH (b {id:'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='Israeli cyber nexus', r.weight=2, r.edge_function='INTELLIGENCE', r.opacity=4;
MATCH (a {id:'Mossad'}) MATCH (b {id:'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='overseas intel agency', r.weight=3;
MATCH (a {id:'Mossad'}) MATCH (b {id:'Unit8200'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='sibling agencies', r.weight=3;

// ════════════════════════════════════════════
// §10 EDGES — TIKTOK
// ════════════════════════════════════════════

MATCH (a {id:'Oracle'}) MATCH (b {id:'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='15% + data oversight', r.weight=4;
MATCH (a {id:'SilverLake'}) MATCH (b {id:'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='15% stake', r.weight=3;
MATCH (a {id:'MGX'}) MATCH (b {id:'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='15% stake', r.weight=3;
MATCH (a {id:'ByteDance'}) MATCH (b {id:'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='19.9% + algorithm', r.weight=4;
MATCH (a {id:'Ellison'}) MATCH (b {id:'TikTok'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='floated as buyer by Trump', r.weight=3;

// ════════════════════════════════════════════
// §11 EDGES — FINANCIAL / BANKING INFRASTRUCTURE
// ════════════════════════════════════════════

MATCH (a {id:'LeonBlack'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='$170M+ payments', r.weight=5, r.edge_function='DEAL_FLOW,LAUNDERING', r.leverage='MUTUAL', r.flow_type='MONEY', r.opacity=2, r.motive='GREED', r.phase='LOCKED', r.crossover_event='$170M documented, sons appointment buys silence', r.conversion_agent='SELF';
MATCH (a {id:'LeonBlack'}) MATCH (b {id:'Apollo'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='co-founder', r.weight=3;

// ── Deutsche Bank Chain ──
MATCH (a {id:'Epstein'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='client 2013-2019, ~40 accounts', r.weight=5, r.source='NYDFS, Reuters DOJ Feb 2026', r.detail='Onboarded post-JPM. $100-300M/yr volume. Honorary PEP fraud. 28 accounts panic-closed post-arrest. Services 7mo past termination.', r.edge_function='LAUNDERING,LEGITIMIZER', r.leverage='MUTUAL', r.flow_type='MONEY,BODIES', r.opacity=2, r.motive='GREED', r.phase='LOCKED', r.crossover_event='Jan 2015 risk committee — no minutes, continued despite 40 victims', r.conversion_agent='INSTITUTIONAL';
MATCH (a {id:'Epstein'}) MATCH (b {id:'ButterflyTrust'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='trafficking conduit trust', r.weight=5, r.detail='120 payments $2.65M. $13M legal. Beneficiaries: co-conspirators + Eastern European women.', r.edge_function='LAUNDERING,KOMPROMAT', r.flow_type='MONEY,BODIES', r.opacity=3;
MATCH (a {id:'ButterflyTrust'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='account 2014-2019', r.weight=4, r.edge_function='LAUNDERING', r.flow_type='MONEY', r.opacity=2;
MATCH (a {id:'ButterflyTrust'}) MATCH (b {id:'MorganStanley'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='migrated Mar 2019', r.weight=4, r.detail='Portable kompromat machine — trust itself moved between banks.', r.edge_function='LAUNDERING', r.flow_type='MONEY', r.opacity=3;
MATCH (a {id:'Epstein'}) MATCH (b {id:'SouthernTrust'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='USVI entity, $30M+ flows', r.weight=4, r.edge_function='LAUNDERING', r.flow_type='MONEY', r.opacity=3;
MATCH (a {id:'SouthernTrust'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='last account to close', r.weight=3, r.edge_function='LAUNDERING', r.opacity=2;
MATCH (a {id:'Epstein'}) MATCH (b {id:'MorganStanley'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='client 2015-2019', r.weight=4, r.detail='Picked up where Deutsche left off.', r.edge_function='LAUNDERING,LEGITIMIZER', r.flow_type='MONEY', r.opacity=2, r.phase='ENABLING';
MATCH (a {id:'Epstein'}) MATCH (b {id:'BankOfAmerica'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='class-action pending', r.weight=3, r.edge_function='LAUNDERING', r.flow_type='MONEY', r.opacity=2, r.phase='ENABLING';
MATCH (a {id:'Epstein'}) MATCH (b {id:'JPMorgan'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='55 accounts 1998-2013, $365M settlements', r.weight=5, r.detail='Morris carried Epstein to Deutsche when JPM dropped him.', r.edge_function='LAUNDERING,LEGITIMIZER', r.leverage='MUTUAL', r.flow_type='MONEY', r.opacity=2, r.phase='LOCKED', r.crossover_event='continued banking 5 years post-conviction', r.conversion_agent='INSTITUTIONAL';

// ── Deutsche Personnel Edges ──
MATCH (a {id:'PaulMorris'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='brought to DB, $4M/yr revenue', r.weight=5, r.detail='RELATIONSHIP MANAGER-1. Franchise client across institutions.', r.edge_function='DEAL_FLOW,ENABLER', r.leverage='B_OVER_A', r.flow_type='MONEY,ACCESS', r.opacity=1, r.motive='GREED', r.phase='LOCKED', r.crossover_event='second institution = conscious choice', r.conversion_agent='SELF';
MATCH (a {id:'PaulMorris'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='RM private wealth', r.weight=3;
MATCH (a {id:'PaulMorris'}) MATCH (b {id:'JPMorgan'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='previously managed Epstein', r.weight=3, r.edge_function='DEAL_FLOW', r.flow_type='ACCESS', r.opacity=1;
MATCH (a {id:'Packard'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='phantom approval, mansion visit', r.weight=4, r.detail='EXECUTIVE-1. No notes taken. Appeared satisfied.', r.edge_function='ENABLER,COVER_UP', r.leverage='B_OVER_A', r.flow_type='ACCESS,DOCUMENTS', r.opacity=2, r.motive='GREED', r.phase='CONCEALMENT', r.crossover_event='undocumented mansion visit = deliberate deniability', r.conversion_agent='INSTITUTIONAL';
MATCH (a {id:'Packard'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='head US wealth mgmt', r.weight=3;
MATCH (a {id:'Packard'}) MATCH (b {id:'Bridgewater'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='joined after DB', r.weight=2;
MATCH (a {id:'JanFord'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='compliance head Americas, STILL THERE', r.weight=3;
MATCH (a {id:'Campelli'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='board member, fmr wealth mgmt head', r.weight=4;
MATCH (a {id:'Oldfield'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='RM wind-down phase', r.weight=3;
MATCH (a {id:'Oldfield'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='clean reference, 50K EUR cash, Southern Trust', r.weight=4, r.detail='Lied to receiving banks to export compromised client.', r.edge_function='COVER_UP,LAUNDERING', r.leverage='B_OVER_A', r.flow_type='MONEY,DOCUMENTS', r.opacity=2, r.motive='FEAR', r.phase='CONCEALMENT', r.crossover_event='clean reference letter = active lie', r.conversion_agent='INSTITUTIONAL';
MATCH (a {id:'AnshuJain'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='co-CEO, built expansion culture', r.weight=4, r.edge_function='ENABLER', r.flow_type='INFLUENCE', r.opacity=0;
MATCH (a {id:'NYDFS'}) MATCH (b {id:'DeutscheBank'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='$150M penalty Jul 2020', r.weight=4, r.detail='38-page consent order. Named no individuals.';

// ════════════════════════════════════════════
// §12 EDGES — DOJ/FBI COVER-UP
// ════════════════════════════════════════════

MATCH (a {id:'Patel'}) MATCH (b {id:'FBI'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='Director', r.weight=3, r.edge_function='COVER_UP', r.phase='LOCKED';
MATCH (a {id:'DOJ'}) MATCH (b {id:'Epstein'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='files custodian', r.weight=3, r.detail='Christmas Eve dump. Trump photo removed then restored.', r.edge_function='COVER_UP', r.flow_type='DOCUMENTS', r.opacity=2, r.phase='LOCKED';
MATCH (a {id:'Epstein'}) MATCH (b {id:'ZorroRanch'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='property, NM investigation', r.weight=4, r.edge_function='KOMPROMAT', r.flow_type='BODIES', r.opacity=4;

// ════════════════════════════════════════════
// §13 EDGES — INTERNATIONAL
// ════════════════════════════════════════════

MATCH (a {id:'Andrew'}) MATCH (b {id:'DavidStern'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label='aide bridge: Epstein↔Crown', r.weight=4, r.edge_function='GATEKEEPER,INTELLIGENCE', r.flow_type='ACCESS,DOCUMENTS', r.opacity=2, r.phase='WEAPONIZED';
MATCH (a {id:'GordonBrown'}) MATCH (b {id:'Andrew'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='memorandum post-arrest', r.weight=2;

// ════════════════════════════════════════════
// §14 EMERGENT PATTERNS
// ════════════════════════════════════════════

// PATTERN A: Pentagon/FBI Real Estate as Intelligence Infrastructure
//   Fascitelli→Pentagon+FBI→Stern→Epstein→Mossad
//   Stern simultaneously: Epstein soldier + Andrew aide + Windsor director
//   Mossad-linked individual offered co-ownership of DOD infrastructure

// PATTERN B: Palantir-Epstein-Israel-UK Pipeline
//   Epstein→$40M→Valar←Thiel→Palantir
//   Barak→"look at Palantir"
//   Mandelson→leaked UK secrets→Epstein + lobbied for Palantir UK contracts
//   Thiel→$15M+→Vance→VP→Trump admin

// PATTERN C: Andrew as Intelligence Conduit
//   TWO senior UK officials (Andrew + Mandelson) independently feeding
//   classified intelligence to same Mossad-linked individual

// PATTERN D: Cover-Up Architecture
//   Patel(FBI)→redactions. LeonBlack Jr appointed. Vance←Thiel←Epstein $40M.
//   Trump 8+ flights denied. Christmas Eve doc dump. Photo manipulation.

// PATTERN E: Zorro Ranch — Bodies and Borders
//   NM investigation reopened. Buried bodies allegations. International probes active.

// PATTERN F: Banking as Enabling→Kompromat Pipeline (NEW v3)
//   JPM(55 accts)→Morris carries→DB(40 accts)→Oldfield vouches→MS(trusts)→BoA(pending)
//   Same RM physically carried franchise between institutions.
//   Each bank: entered via GREED, exited as LOCKED (institutional kompromat)
//   Conversion mechanism: phantom compliance + invented categories + revenue override
//   Deutsche crossover: Jan 2015 risk committee, no minutes = every participant LOCKED
//   Butterfly Trust: portable kompromat machine (DB→MS), trust itself moved between banks
//   $9B+ total DB fines = institutional culture, not individual failure

// PATTERN G: McClelland Stage Distribution (NEW v3)
//   Stage I  (dependence): Andrew, Barrack, Ferguson, KimbalMusk — sought significance
//   Stage II (autonomy):   Gates, Brin — sought freedom from constraint
//   Stage III(influence):  Trump, Thiel, Morris, Packard, Jain, Ford, Campelli, Oldfield,
//                          Hoffman, LeonBlack, Mandelson, Dershowitz, Maxwell, Catz, Fascitelli
//                          — largest cohort, believed they were using network
//   Stage IV genuine:      Barak, Epstein, DavidStern, Koren — MISSION, no sublimation needed
//   Stage IV performed:    Patel — claims service, delivers concealment

// PATTERN H: Rubicon Phase Distribution (NEW v3)
//   IDENTITY_INTEGRATED: Epstein, Maxwell, Barak, Andrew, Morris, DavidStern, Koren, Dershowitz
//   LOCKED:              Trump, Thiel, Gates, Hoffman, KimbalMusk, LeonBlack, Mandelson, DB, JPM
//   CONCEALMENT:         Patel, Packard, Ford, Campelli, Oldfield
//   FIRST_COMPROMISE:    Ferguson, Barrack, AnshuJain
//   ENTRY:               Bannon, Brin, Fascitelli, Catz, Sinofsky
//   Sublimation gap (qualia_mask vs unsublimated) = kompromat depth.
//   MISSION nodes: gap zero. PERMISSION nodes: gap maximal.
//   The void creates the receptor. The receptor creates the sublimation.
//   The sublimation creates the blindness. The blindness creates behavior.
//   The behavior creates the archive. The archive creates the leverage.
//   The hungry feed themselves into the machine.

// ════════════════════════════════════════════
// §15 STATISTICS
// ════════════════════════════════════════════

// Person nodes: 28 (v1:22 + v3: PaulMorris, Packard, JanFord, Campelli, Oldfield, AnshuJain)
// Stakeholder nodes: 31 (v1:25 + v3: DeutscheBank, ButterflyTrust, MorganStanley, BankOfAmerica,
//                    SouthernTrust, NYDFS, Bridgewater)
// Total edges: ~100 (v1:54, v2:75, v3:100)
//
// BEHAVIORAL SCHEMA adds to every Person node:
//   receptor, mcclelland, mcclelland_need, rubicon, rubicon_event,
//   sublimation, qualia_mask, unsublimated, exposure_level, node_function
//
// FUNCTIONAL EDGE PROPERTIES on ~70 edges:
//   edge_function, leverage, flow_type, opacity, motive, phase,
//   crossover_event, conversion_agent
//
// QUERY EXAMPLES:
//
// Find all LOCKED nodes who cannot allow transparency:
//   MATCH (p:Person) WHERE p.rubicon IN ['LOCKED','IDENTITY_INTEGRATED']
//   AND p.exposure_level >= 3 RETURN p.name, p.sublimation, p.unsublimated
//
// Map the enabling→kompromat pipeline:
//   MATCH (a)-[r]->(b) WHERE r.phase = 'WEAPONIZED'
//   RETURN a.name, r.crossover_event, b.name, r.conversion_agent
//
// Find nodes vulnerable to flipping (high exposure + ENTRY/FIRST_COMPROMISE):
//   MATCH (p:Person) WHERE p.rubicon IN ['ENTRY','FIRST_COMPROMISE']
//   RETURN p.name, p.rubicon, p.sublimation ORDER BY p.exposure_level DESC
//
// Sublimation gap analysis (highest self-deception):
//   MATCH (p:Person) WHERE p.sublimation IS NOT NULL AND p.unsublimated IS NOT NULL
//   RETURN p.name, p.sublimation, p.unsublimated, p.receptor, p.mcclelland
//
// Banking chain forensics:
//   MATCH (a)-[r:CONNECTED_TO]->(b:Stakeholder) WHERE r.edge_function CONTAINS 'LAUNDERING'
//   RETURN a.name, b.name, r.crossover_event, r.conversion_agent
