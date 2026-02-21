// ═══════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Epstein Network × AI-Military-Industrial Complex
// Source: DOJ Epstein files (Dec 2025 - Feb 2026), Congressional releases,
//         leaked Barak emails, public reporting, ITV News Pentagon exposé
// Rebased: 2026-02-21 (expanded with Pentagon/FBI real estate deals,
//          Prince Andrew arrest, Mossad intelligence pipeline,
//          Dershowitz-CIA axis, Zorro Ranch, international investigations)
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §1  PERSON NODES
// ════════════════════════════════════════════

// ── Core Epstein Network ──
MERGE (p:Person {id: 'Epstein'}) SET p.name = 'Jeffrey Epstein', p.role = 'financier, sex trafficker, intelligence asset', p.status = 'deceased 2019', p.note = 'DOJ files released Dec 2025 - Feb 2026, 6M+ pages, 180K images, 2K videos. FBI source: co-opted Mossad agent. Arms trafficking 1980s, Bear Stearns, Pentagon defence contractor meeting 1981.';
MERGE (p:Person {id: 'Maxwell'}) SET p.name = 'Ghislaine Maxwell', p.role = 'socialite, convicted trafficker', p.status = 'incarcerated', p.note = 'Co-conspirator, Epstein partner, daughter of Robert Maxwell (suspected Mossad asset)';
MERGE (p:Person {id: 'Barak'}) SET p.name = 'Ehud Barak', p.role = 'former Israeli PM, military intelligence', p.note = 'Visited Epstein NYC townhouse 30+ times 2013-2017, DOJ recordings, Putin backchannel, FBI source says Epstein trained as spy under Barak';
MERGE (p:Person {id: 'Dershowitz'}) SET p.name = 'Alan Dershowitz', p.role = 'lawyer, Epstein defence', p.note = 'FBI informant alleged Epstein tied to US+allied intelligence via Dershowitz. Epstein personal lawyer.';

// ── Trump Administration Network ──
MERGE (p:Person {id: 'Trump'}) SET p.name = 'Donald Trump', p.role = 'US President (2017-2021, 2025-)', p.note = 'Socializing with Epstein since 1980s, Mar-a-Lago, 8+ Epstein flights 1993-96, denied being on plane (proven false by flight logs)';
MERGE (p:Person {id: 'Bannon'}) SET p.name = 'Steve Bannon', p.role = 'political strategist', p.note = 'Epstein advised on 2018 Europe tour, Epstein called him friend';
MERGE (p:Person {id: 'Patel'}) SET p.name = 'Kash Patel', p.role = 'FBI Director', p.note = 'Promised no cover-ups on Epstein files, released heavily redacted docs';
MERGE (p:Person {id: 'Barrack'}) SET p.name = 'Tom Barrack', p.role = 'PE investor, US Ambassador to Turkey', p.note = 'Friends with Trump and Epstein since 1980s-90s';
MERGE (p:Person {id: 'LeonBlack'}) SET p.name = 'Leon Black', p.role = 'Apollo Global founder', p.note = '$170M+ payments to Epstein, DOJ settlement, son appointed by Trump to lead US Int Dev Finance Corp';

// ── Tech Billionaire Network ──
MERGE (p:Person {id: 'Gates'}) SET p.name = 'Bill Gates', p.role = 'Microsoft co-founder', p.note = 'Named in Epstein files, multiple meetings after 2008 conviction, pulled out of Modi AI summit Feb 2026 due to Epstein shadow';
MERGE (p:Person {id: 'Brin'}) SET p.name = 'Sergey Brin', p.role = 'Google co-founder', p.note = 'Emailed Maxwell about meeting Epstein in NYC 2003';
MERGE (p:Person {id: 'Hoffman'}) SET p.name = 'Reid Hoffman', p.role = 'LinkedIn co-founder', p.note = 'Visited Epstein island, hosted dinner with Musk/Thiel/Zuckerberg where Epstein present, MIT fundraising context';
MERGE (p:Person {id: 'KimbalMusk'}) SET p.name = 'Kimbal Musk', p.role = 'businessman, Elon brother', p.note = '140+ references in Epstein files, invited to island 2013, Epstein engineered intimate relationship with young woman';
MERGE (p:Person {id: 'Sinofsky'}) SET p.name = 'Steven Sinofsky', p.role = 'former Microsoft exec', p.note = 'Named in DOJ Epstein file release Feb 2026';

// ── UK / Royal Network ──
MERGE (p:Person {id: 'Andrew'}) SET p.name = 'Andrew Mountbatten-Windsor', p.role = 'former Prince, UK trade envoy 2001-2011', p.status = 'arrested 2026-02-19, released under investigation', p.note = 'Arrested on 66th birthday, suspicion of misconduct in public office. Shared confidential trade briefs (HK, Vietnam, Singapore, Afghanistan investment) with Epstein while UK trade envoy (2001-2011). Stripped of titles Oct 2025. First senior British royal arrested in ~400 years. Max sentence: life imprisonment.';
MERGE (p:Person {id: 'Mandelson'}) SET p.name = 'Peter Mandelson', p.role = 'UK Labour, former Ambassador to US', p.note = 'Leaked UK secrets to Epstein 2009-2010, hired by Palantir via Global Counsel, dismissed as Ambassador by Starmer 2026, police probing whether shared sensitive govt docs with Epstein';
MERGE (p:Person {id: 'Ferguson'}) SET p.name = 'Sarah Ferguson', p.role = 'ex-wife of Andrew', p.note = 'DOJ files show maintained personal correspondence with Epstein after 2008 conviction, Andrew arranged Epstein to pay 15K GBP of her debts';
MERGE (p:Person {id: 'GordonBrown'}) SET p.name = 'Gordon Brown', p.role = 'former UK PM', p.note = 'Submitted memorandum to police forces re Epstein files after Andrew arrest';

// ── Real Estate / Pentagon Deal Network ──
MERGE (p:Person {id: 'DavidStern'}) SET p.name = 'David Stern', p.role = 'businessman, Epstein aide', p.note = 'Self-described Epstein soldier. Forwarded Pentagon-area DOD property and FBI field office proposals. Director of St Georges House Trust at Windsor Castle. Sat beside Queen Elizabeth II at St James Palace. Close aide to Andrew.';
MERGE (p:Person {id: 'Fascitelli'}) SET p.name = 'Jonathan D Fascitelli', p.role = 'real estate investor', p.note = 'Originated both Pentagon DOD complex and FBI field office property proposals sent to Epstein';
MERGE (p:Person {id: 'Koren'}) SET p.name = 'Michael Koren', p.role = 'Israeli intelligence', p.note = 'Calendar entries at Epstein home, coming and going';
MERGE (p:Person {id: 'Catz'}) SET p.name = 'Safra Catz', p.role = 'Oracle CEO', p.note = 'Pro-Israel lobbying via Barak emails, Women of IDF show';

// ════════════════════════════════════════════
// §2  STAKEHOLDER NODES (orgs)
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'ValarVentures'}) SET s.name = 'Valar Ventures', s.type = 'VC fund', s.note = 'Co-founded by Thiel, Epstein invested $40M, co-owned';
MERGE (s:Stakeholder {id: 'NSO'}) SET s.name = 'NSO Group', s.type = 'cyber weapons', s.note = 'Israeli spyware firm, maker of Pegasus';
MERGE (s:Stakeholder {id: 'FBI'}) SET s.name = 'FBI', s.type = 'law enforcement';
MERGE (s:Stakeholder {id: 'DOJ'}) SET s.name = 'Dept of Justice', s.type = 'government', s.note = 'Released Epstein files Dec 2025 - Feb 2026, 6M+ pages';
MERGE (s:Stakeholder {id: 'Mossad'}) SET s.name = 'Mossad', s.type = 'intelligence agency', s.note = 'Israeli overseas intelligence. FBI LA field office 2020 memo: informant convinced Epstein was co-opted Mossad agent, trained as spy.';
MERGE (s:Stakeholder {id: 'FIDF'}) SET s.name = 'Friends of Israel Defense Forces', s.type = 'NGO', s.note = 'Epstein funded, raises funds for active IDF soldiers and veterans';
MERGE (s:Stakeholder {id: 'JNF'}) SET s.name = 'Jewish National Fund', s.type = 'charity/settler org', s.note = 'Epstein funded, finances Jewish settlements in occupied West Bank';
MERGE (s:Stakeholder {id: 'BearStearns'}) SET s.name = 'Bear Stearns', s.type = 'investment bank', s.note = 'Epstein worked there 1980s, collapsed 2008';

// ── Pentagon / FBI Real Estate ──
MERGE (s:Stakeholder {id: 'PentagonComplex'}) SET s.name = 'Arlington DOD Complex', s.type = 'military real estate', s.note = '84,710 sqm mission-critical DOD facility, 1.6km from Pentagon. Only property in Arlington besides Pentagon meeting DOD space+infrastructure needs. Offered to Epstein 2016 at ~$116M. Source: ITV News, DOJ files Feb 2026.';
MERGE (s:Stakeholder {id: 'FBIFieldOffices'}) SET s.name = 'FBI Field Offices (Richmond+Baltimore)', s.type = 'law enforcement real estate', s.note = 'FBI offices + courthouses offered to Epstein 2015. Called sexy assets. $25M initial + $80M follow-on. Ownership via Cayman Islands offshore entity.';
MERGE (s:Stakeholder {id: 'CaymanEntity'}) SET s.name = 'Cayman Islands Offshore Entity', s.type = 'shell company', s.note = 'Proposed vehicle for Epstein ownership of FBI field offices';

// ── Existing org expansions ──
MERGE (s:Stakeholder {id: 'SilverLake'}) SET s.name = 'Silver Lake', s.type = 'PE firm', s.note = '15% stake in TikTok US JV';
MERGE (s:Stakeholder {id: 'MGX'}) SET s.name = 'MGX', s.type = 'Emirati state investment', s.note = '15% stake in TikTok US JV, AI focus';
MERGE (s:Stakeholder {id: 'ByteDance'}) SET s.name = 'ByteDance', s.type = 'tech company', s.note = 'TikTok parent, retains 19.9% + algorithm';
MERGE (s:Stakeholder {id: 'TikTok'}) SET s.name = 'TikTok US JV', s.type = 'social media', s.note = 'US JV formed Jan 2026, Oracle oversight of data';
MERGE (s:Stakeholder {id: 'LinkedIn'}) SET s.name = 'LinkedIn', s.type = 'social media';
MERGE (s:Stakeholder {id: 'Paypal'}) SET s.name = 'PayPal', s.type = 'fintech', s.note = 'PayPal Mafia: Thiel, Musk, Hoffman all early employees';
MERGE (s:Stakeholder {id: 'JPMorgan'}) SET s.name = 'JPMorgan Chase', s.type = 'bank', s.note = 'Charged in connection with Epstein revelations';
MERGE (s:Stakeholder {id: 'Apollo'}) SET s.name = 'Apollo Global Management', s.type = 'PE firm', s.note = 'Leon Black co-founder, $170M+ to Epstein';
MERGE (s:Stakeholder {id: 'GlobalCounsel'}) SET s.name = 'Global Counsel', s.type = 'lobbying', s.note = 'Mandelson firm, hired by Palantir for UK govt contracts';
MERGE (s:Stakeholder {id: 'MITMediaLab'}) SET s.name = 'MIT Media Lab', s.type = 'research', s.note = 'Epstein donations, Ito resigned 2019';
MERGE (s:Stakeholder {id: 'DOD'}) SET s.name = 'US Department of Defense', s.type = 'government', s.note = 'Tenant of Arlington complex offered to Epstein';
MERGE (s:Stakeholder {id: 'ThamesValleyPolice'}) SET s.name = 'Thames Valley Police', s.type = 'law enforcement', s.note = 'Arrested Andrew Mountbatten-Windsor 2026-02-19';
MERGE (s:Stakeholder {id: 'ZorroRanch'}) SET s.name = 'Zorro Ranch', s.type = 'property', s.note = '33,000 sqft Epstein ranch in New Mexico. NM Justice Dept reopened investigation. 2019 email in files references allegations of bodies buried there.';
MERGE (s:Stakeholder {id: 'WindsorCastle'}) SET s.name = 'St Georges House Trust, Windsor Castle', s.type = 'royal institution', s.note = 'David Stern became director same year he forwarded Pentagon deal to Epstein';

// ════════════════════════════════════════════
// §3  EDGES — EPSTEIN CORE RELATIONSHIPS
// ════════════════════════════════════════════

// ── Epstein ↔ Intelligence ──
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Mossad'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'co-opted agent per FBI source', r.weight = 5, r.source = 'FBI LA field office memo 2020, DOJ files Feb 2026', r.detail = 'FBI informant convinced Epstein was co-opted Mossad agent, trained as spy. Funded FIDF and JNF. Arms trafficking 1980s. Pentagon defence contractor meeting 1981.';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'FIDF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'financial supporter', r.weight = 3, r.source = 'FBI docs, Novara Media';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'JNF'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'financial supporter', r.weight = 3, r.source = 'FBI docs, Novara Media';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Dershowitz'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'personal lawyer, intelligence conduit', r.weight = 5, r.source = 'FBI informant, DOJ files', r.detail = 'FBI source alleged Epstein tied to US and allied intelligence operations via Dershowitz';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'BearStearns'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'employment 1980s', r.weight = 2, r.source = 'biographical', r.detail = 'Worked at Bear Stearns, allegedly involved in arms trafficking during this period';

// ── Epstein ↔ Barak (expanded) ──
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'extensive correspondence, handler relationship', r.weight = 5, r.source = 'DOJ recordings + leaked emails + FBI memo', r.detail = 'DOJ recording re Palantir, Putin backchannel, Assad removal attempt. FBI source: Epstein trained as spy under Barak. 30+ visits to NYC townhouse 2013-2017. Barak: former PM (1999-2001) and senior military intelligence.';
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'former PM, military intelligence', r.weight = 3;
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Koren'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence coordination', r.weight = 3;
MATCH (a {id: 'Koren'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'calendar entries at Epstein home', r.weight = 3, r.source = 'DOJ files';
MATCH (a {id: 'Koren'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence agent', r.weight = 3;

// ── Maxwell ──
MATCH (a {id: 'Maxwell'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'partner, co-conspirator', r.weight = 5;
MATCH (a {id: 'Maxwell'}) MATCH (b {id: 'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social facilitator', r.weight = 4, r.source = 'DOJ files, prior reporting', r.detail = 'Introduced Andrew to Epstein network, present on Trump-Epstein flights';

// ════════════════════════════════════════════
// §4  EDGES — PENTAGON / FBI REAL ESTATE DEALS
// ════════════════════════════════════════════

// The core new intelligence from Al Jazeera / ITV News Feb 2026
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'offered co-ownership 2016, ~$116M', r.weight = 5, r.source = 'ITV News, DOJ files Feb 2026, Al Jazeera 2026-02-19', r.detail = 'Investor deck described property as mission-critical, only Arlington site besides Pentagon meeting DOD needs. Deal would have made convicted sex offender and alleged Mossad agent landlord to US government. No evidence transaction completed.';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'offered investment 2015, $25M+$80M', r.weight = 5, r.source = 'ITV News, DOJ files Feb 2026', r.detail = 'FBI offices Richmond + Baltimore + courthouses. Called sexy assets by Stern. Ownership via Cayman Islands offshore entity.';
MATCH (a {id: 'FBIFieldOffices'}) MATCH (b {id: 'CaymanEntity'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'ownership vehicle', r.weight = 3, r.source = 'DOJ files';
MATCH (a {id: 'PentagonComplex'}) MATCH (b {id: 'DOD'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'mission-critical DOD facility', r.weight = 4;
MATCH (a {id: 'FBIFieldOffices'}) MATCH (b {id: 'FBI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'operational FBI offices', r.weight = 4;

// David Stern — the broker connecting Epstein to real estate AND royals
MATCH (a {id: 'DavidStern'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'self-described soldier, close aide', r.weight = 5, r.source = 'DOJ files, ITV News', r.detail = 'Forwarded Pentagon DOD complex proposal 2016 and FBI field office proposal 2015';
MATCH (a {id: 'DavidStern'}) MATCH (b {id: 'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'close aide', r.weight = 4, r.source = 'DOJ files, Al Jazeera', r.detail = 'Served as aide to Andrew. Same year he forwarded Pentagon deal became director of St Georges House Trust at Windsor Castle.';
MATCH (a {id: 'DavidStern'}) MATCH (b {id: 'WindsorCastle'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'director, St Georges House Trust', r.weight = 3, r.source = 'Al Jazeera 2026-02-19', r.detail = 'Became director 2016, same year as Pentagon proposal. Sat beside Queen Elizabeth II at St James Palace.';
MATCH (a {id: 'DavidStern'}) MATCH (b {id: 'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'forwarded proposal to Epstein', r.weight = 4, r.source = 'DOJ files';
MATCH (a {id: 'DavidStern'}) MATCH (b {id: 'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'forwarded proposal to Epstein', r.weight = 4, r.source = 'DOJ files';

// Fascitelli — originated both proposals
MATCH (a {id: 'Fascitelli'}) MATCH (b {id: 'PentagonComplex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'originated deal', r.weight = 4, r.source = 'Al Jazeera 2026-02-19';
MATCH (a {id: 'Fascitelli'}) MATCH (b {id: 'FBIFieldOffices'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'originated deal', r.weight = 4, r.source = 'Al Jazeera 2026-02-19';

// ════════════════════════════════════════════
// §5  EDGES — PRINCE ANDREW ARREST & UK NEXUS
// ════════════════════════════════════════════

MATCH (a {id: 'Andrew'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'shared confidential govt docs, arrested', r.weight = 5, r.source = 'DOJ files, Thames Valley Police, CNN, NPR Feb 2026', r.detail = 'Shared confidential trade briefs on Hong Kong, Vietnam, Singapore, Afghanistan investment opportunities with Epstein while UK trade envoy (2001-2011). Arrested 2026-02-19 on 66th birthday, misconduct in public office. Released under investigation after 11 hours. First senior royal arrested in ~400 years.';
MATCH (a {id: 'Andrew'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'former trade envoy 2001-2011', r.weight = 3, r.detail = 'Stripped of all titles Oct 2025, 8th in line to succession, govt considering removal from succession';
MATCH (a {id: 'ThamesValleyPolice'}) MATCH (b {id: 'Andrew'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'arrested, searched properties', r.weight = 4, r.source = 'Thames Valley Police statement Feb 2026', r.detail = 'Searched Royal Lodge Windsor and Sandringham residence. Home Office notified 30 min before.';
MATCH (a {id: 'Ferguson'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'personal correspondence after conviction', r.weight = 3, r.source = 'DOJ files', r.detail = 'Maintained contact post-2008 conviction. Andrew arranged Epstein to pay 15K GBP of her debts.';
MATCH (a {id: 'Ferguson'}) MATCH (b {id: 'Andrew'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'ex-wife', r.weight = 2;

// Mandelson-Palantir-UK pipeline (expanded)
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'leaked UK secrets to', r.weight = 5, r.source = 'Novara Media, Byline Times, Northeastern Feb 2026', r.detail = 'Leaked sensitive UK secrets 2009-2010. Police probing whether shared sensitive govt docs. Dismissed as Ambassador by Starmer 2026.';
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'hired as lobbyist via Global Counsel', r.weight = 4, r.source = 'Byline Times', r.detail = 'Global Counsel hired 2018 to secure UK govt contracts, same period Epstein was active Valar partner';
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'former Ambassador to US, dismissed 2026', r.weight = 2;
MATCH (a {id: 'GlobalCounsel'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'lobbying contract 2018', r.weight = 3;

// ════════════════════════════════════════════
// §6  EDGES — THIEL / PALANTIR NEXUS
// ════════════════════════════════════════════

MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'great friend, financial advisor', r.weight = 5, r.source = 'DOJ files Feb 2026', r.detail = 'Correspondence 2014-2019, $40M into Valar Ventures, tax advice, Roth IRA discussions, meetings at NYC townhouse, Caribbean invite';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'ValarVentures'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'co-owner, $40M invested', r.weight = 5, r.source = 'NYT, Novara Media, DOJ files';
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'ValarVentures'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 3;
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Vance'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'mentor, $15M+ campaign donor', r.weight = 4, r.source = 'Wyden letter to DOJ', r.detail = 'Hired Vance, funded Senate campaign, Epstein money to Thiel to Vance pipeline';

// Karp-Epstein (Palantir CEO in leaked Barak emails)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Karp'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'network contact via Barak', r.weight = 2, r.source = 'SF Standard leaked emails', r.detail = 'Karp named in hacked Barak-Epstein correspondence alongside Ellison, Catz, Bezos';

// ════════════════════════════════════════════
// §7  EDGES — TRUMP NETWORK
// ════════════════════════════════════════════

MATCH (a {id: 'Trump'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'longtime social contact, flight logs', r.weight = 5, r.source = 'DOJ files, flight logs', r.detail = '8+ flights on Epstein plane 1993-96, Maxwell present on at least 4. One flight: only Trump, Epstein, and redacted 20-year-old. Trump denied ever being on plane — proven false. Admin withholding docs per Wyden.';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'political backer', r.weight = 4, r.source = 'public', r.detail = 'Thiel early Trump 2016 supporter, RNC speaker, Vance pipeline';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'ally', r.weight = 4, r.source = 'public', r.detail = 'TikTok deal orchestrated by Trump, Oracle gets data oversight, Ellison prominent Trump supporter';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'close advisor, DOGE', r.weight = 5, r.source = 'public 2024-2025';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Bannon'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'strategist', r.weight = 4;
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Barrack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'friend since 1980s, appointed Ambassador', r.weight = 4, r.source = 'DOJ files', r.detail = 'Barrack, Trump, Epstein socialized together NYC elite 1980s-90s, Middle East business ties';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Patel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'appointed FBI Director', r.weight = 4, r.source = 'public 2025', r.detail = 'Promised Epstein transparency, delivered heavily redacted files';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'LeonBlack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'appointed sons position', r.weight = 3, r.source = 'Wyden letter', r.detail = 'Trump appointed Leon Black son to lead US Int Dev Finance Corp despite $170M Epstein payments';
MATCH (a {id: 'Bannon'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'advisor, friend', r.weight = 3, r.source = 'DOJ files Nov 2025', r.detail = 'Epstein advised Bannon on 2018 Europe tour, called him friend to associates';

// ════════════════════════════════════════════
// §8  EDGES — TECH BILLIONAIRES
// ════════════════════════════════════════════

// Ellison-Epstein
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'associate', r.weight = 3, r.source = 'Barak leaked emails, DOJ files', r.detail = 'Email joke about Ellison buying island out of jealousy, Barak-Ellison-Epstein triangle, Oracle-Israel nexus';
MATCH (a {id: 'Catz'}) MATCH (b {id: 'Oracle'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'CEO', r.weight = 3;
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'political contact', r.weight = 2, r.source = 'leaked emails', r.detail = 'Private initiative bookmarked, Rubio discussion debriefing';

// Musk-Epstein (through Kimbal + direct)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social contact', r.weight = 3, r.source = 'DOJ files Feb 2026', r.detail = 'Photo together at Reid Hoffman dinner with Thiel and Zuckerberg, Epstein engineered relationship between Kimbal and young woman';
MATCH (a {id: 'KimbalMusk'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'brother', r.weight = 1;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'KimbalMusk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social manipulation', r.weight = 4, r.source = 'DOJ files', r.detail = '140+ references, invited to island 2013, Epstein engineered intimate relationship with young woman';

// Gates
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Gates'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'multiple meetings post-conviction', r.weight = 4, r.source = 'DOJ files, prior reporting', r.detail = 'Named in Epstein files, meetings continued after 2008 conviction. Gates pulled out of Modi AI summit Feb 2026 citing Epstein shadow.';

// Fink/BlackRock
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Fink'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'financial network', r.weight = 2, r.source = 'Epstein files financial web', r.detail = 'BlackRock invests in Palantir, Amazon, Microsoft, Alphabet, IBM — all Epstein-connected entities';

// Google-Epstein
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Google'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 2;
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social contact', r.weight = 3, r.source = 'DOJ files', r.detail = 'Emailed Maxwell about meeting Epstein NYC 2003';
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Maxwell'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'email correspondent', r.weight = 2, r.source = 'DOJ files';

// PayPal Mafia cluster
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'PayPal co-founders', r.weight = 3, r.detail = 'Both early PayPal, both in Epstein files, both Trump backers';
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'PayPal alumni', r.weight = 2;
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'visited island', r.weight = 4, r.source = 'Hoffman admission on X', r.detail = 'Went to island with Joi Ito, claimed MIT fundraising, hosted dinner with Musk/Thiel/Zuckerberg where Epstein present';
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'LinkedIn'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 2;
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'fundraising relationship', r.weight = 2;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'donations, campus visits', r.weight = 3, r.detail = 'MIT staffers witnessed Eastern European women brought to campus';

// ════════════════════════════════════════════
// §9  EDGES — ISRAEL INTELLIGENCE ↔ TECH AXIS
// ════════════════════════════════════════════

MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Unit8200'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence nexus via Barak + Mossad', r.weight = 4, r.source = 'Drop Site News, DOJ files, FBI memo', r.detail = 'Epstein brokered deals for Israeli intelligence, Koren visits, backchannel ops. FBI: trained as spy for Mossad.';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'Israeli cyber nexus', r.weight = 2, r.source = 'network inference', r.detail = 'NSO/Pegasus, Unit 8200 alumni, same Israeli intelligence orbit as Epstein-Barak';
MATCH (a {id: 'Mossad'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'overseas intelligence agency', r.weight = 3;
MATCH (a {id: 'Mossad'}) MATCH (b {id: 'Unit8200'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence sibling agencies', r.weight = 3;

// ════════════════════════════════════════════
// §10 EDGES — TIKTOK CONTROL NETWORK
// ════════════════════════════════════════════

MATCH (a {id: 'Oracle'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake + data oversight', r.weight = 4, r.source = 'public Jan 2026', r.detail = 'Oracle oversees TikTok US data storage, Ellison Trump ally';
MATCH (a {id: 'SilverLake'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake', r.weight = 3;
MATCH (a {id: 'MGX'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake', r.weight = 3;
MATCH (a {id: 'ByteDance'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '19.9% + algorithm control', r.weight = 4;
MATCH (a {id: 'Ellison'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'floated as buyer by Trump', r.weight = 3;

// ════════════════════════════════════════════
// §11 EDGES — FINANCIAL NETWORK
// ════════════════════════════════════════════

MATCH (a {id: 'LeonBlack'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = '$170M+ payments', r.weight = 5, r.source = 'Wyden investigation, DOJ settlement', r.detail = 'Payments financed trafficking activities per Congressional investigation';
MATCH (a {id: 'LeonBlack'}) MATCH (b {id: 'Apollo'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 3;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'JPMorgan'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'banking relationship', r.weight = 4, r.source = 'DOJ charges', r.detail = 'JPMorgan charged in connection with Epstein revelations';

// ════════════════════════════════════════════
// §12 EDGES — DOJ/FBI COVER-UP TENSION
// ════════════════════════════════════════════

MATCH (a {id: 'Patel'}) MATCH (b {id: 'FBI'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'Director', r.weight = 3;
MATCH (a {id: 'DOJ'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'files custodian', r.weight = 3, r.detail = '6M+ pages, 180K images, 2K videos, heavily redacted release. Christmas Eve news dump. Image of Trump removed then restored.';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'ZorroRanch'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'property owner', r.weight = 4, r.source = 'DOJ files, NM investigation', r.detail = '33,000 sqft ranch. NM Justice Dept reopened investigation. 2019 email in files references allegations of bodies buried there. Allegations of abuse of trafficked women.';

// ════════════════════════════════════════════
// §13 EDGES — INTERNATIONAL INVESTIGATIONS
// ════════════════════════════════════════════

// France, Norway, New Mexico, UK — investigations spreading
MATCH (a {id: 'Andrew'}) MATCH (b {id: 'DavidStern'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'aide served both Epstein and Andrew', r.weight = 4, r.source = 'DOJ files, Al Jazeera', r.detail = 'Stern: Epstein soldier AND Andrew aide AND Windsor Castle director. Bridge between Epstein intelligence network and British Crown.';
MATCH (a {id: 'GordonBrown'}) MATCH (b {id: 'Andrew'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'submitted memorandum post-arrest', r.weight = 2, r.source = 'CNN Feb 2026';

// ════════════════════════════════════════════
// §14 EMERGENT PATTERNS
// ════════════════════════════════════════════

// ── PATTERN A: Pentagon/FBI Real Estate as Intelligence Infrastructure ──
//
//   Fascitelli ──originated──→ Pentagon DOD Complex ($116M)
//                              └──tenant──→ DOD
//   Fascitelli ──originated──→ FBI Field Offices ($105M)
//                              └──operated by──→ FBI
//   DavidStern ──forwarded both──→ Epstein
//   DavidStern ──aide to──→ Andrew (UK trade envoy)
//   DavidStern ──director──→ Windsor Castle trust
//   Epstein ──co-opted agent──→ Mossad (per FBI source)
//
//   IMPLICATION: A confirmed Mossad-linked individual was offered
//   co-ownership of DOD mission-critical infrastructure AND FBI offices.
//   The broker (Stern) simultaneously served the British Crown.
//   Property ownership = physical access, maintenance oversight,
//   communications infrastructure proximity.

// ── PATTERN B: The Palantir-Epstein-Israel-UK Pipeline ──
//
//   Epstein ──$40M──→ Valar Ventures ←──co-founder── Thiel ──owner──→ Palantir
//   Epstein ──intelligence──→ Barak ──pushed──→ "look at Palantir"
//   Mandelson ──leaked UK secrets to──→ Epstein
//   Mandelson ──lobbying via Global Counsel──→ Palantir ──UK contracts──→ UK
//   Unit8200 ──veterans──→ tech companies (NSO, Wiz, Onavo)
//   Thiel ──$15M+──→ Vance ──VP──→ Trump admin

// ── PATTERN C: Andrew as Intelligence Conduit ──
//
//   Andrew (UK trade envoy) ──confidential briefs on──→ HK, Vietnam,
//                              Singapore, Afghanistan
//   Andrew ──shared docs with──→ Epstein ──Mossad agent per FBI──→ Israel
//   DavidStern ──aide to Andrew──→ ──soldier for Epstein──→
//   Andrew ──arrested 2026-02-19──→ misconduct in public office
//   Mandelson ──also leaked UK secrets──→ Epstein
//
//   TWO senior UK officials (trade envoy + ambassador) independently
//   feeding classified intelligence to same Mossad-linked individual.

// ── PATTERN D: Cover-Up Architecture ──
//
//   Trump admin personnel connected to Epstein network principals:
//   Patel (FBI) ──released──→ heavily redacted files
//   Leon Black Jr ──appointed despite──→ father's $170M to Epstein
//   Vance (VP) ←──$15M──── Thiel ←──$40M──── Epstein
//   Ellison ──Trump ally──→ TikTok data oversight (Oracle)
//   Trump ──8+ flights on Epstein plane──→ denied, proven false
//   Christmas Eve news dump of 1M more files
//   Trump photo removed from DOJ website then restored

// ── PATTERN E: Zorro Ranch — Bodies and Borders ──
//
//   Epstein ──owned──→ Zorro Ranch (33,000 sqft, NM)
//   NM Justice Dept ──reopened investigation──→ Zorro Ranch
//   2019 email in files ──references──→ allegations of bodies buried
//   Trafficking allegations ──abuse of women──→ Zorro Ranch
//   International probes: France, Norway, NM, UK all active

// ════════════════════════════════════════════
// §15 STATISTICS
// ════════════════════════════════════════════

// Person nodes: 22 (added from v1: Andrew, Dershowitz, DavidStern,
//               Fascitelli, Ferguson, GordonBrown)
// Stakeholder nodes: 25 (added from v1: Mossad, FIDF, JNF, BearStearns,
//                    PentagonComplex, FBIFieldOffices, CaymanEntity, DOD,
//                    ThamesValleyPolice, ZorroRanch, WindsorCastle)
// PERSON_LINK edges: ~40
// CONNECTED_TO edges: ~35
// Total edges: ~75 (was ~54 in v1)
//
// NEW in this rebase (v2, 2026-02-21):
//   Pentagon DOD complex deal (2016, $116M, mission-critical)
//   FBI field offices deal (2015, $105M via Cayman entity)
//   David Stern as bridge node (Epstein ↔ Andrew ↔ Windsor Castle)
//   Jonathan Fascitelli as deal originator
//   Prince Andrew arrest + leaked trade briefs (HK, VN, SG, AF)
//   Mossad as explicit node with FBI source attribution
//   Dershowitz as intelligence conduit
//   Zorro Ranch + NM investigation + buried bodies allegation
//   International investigation spread (France, Norway, NM, UK)
//   Gates pulling out of Modi AI summit
//   Ferguson-Epstein post-conviction correspondence
//   Gordon Brown memorandum
//   FIDF + JNF as Epstein-funded Israeli orgs
//   Bear Stearns employment + 1980s arms trafficking
//   Pattern E: Zorro Ranch bodies/borders
//
// Connects to existing graph nodes: Thiel, Musk, Ellison, Fink, Karp,
//   Vance, Palantir, Oracle, BlackRock, Unit8200, Israel, UK, US, MIT,
//   Meta, Google, Amazon, Microsoft, Alphabet, IBM, Anduril, ICE,
//   SpaceX, Twitter
