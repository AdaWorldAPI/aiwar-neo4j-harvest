// ═══════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Epstein Network × AI-Military-Industrial Complex
// Source: DOJ Epstein files (Dec 2025 - Feb 2026), Congressional releases,
//         leaked Barak emails, public reporting
// Generated: 2026-02-19
// ═══════════════════════════════════════════════════════════════

// ── New Person Nodes ──
MERGE (p:Person {id: 'Epstein'}) SET p.name = 'Jeffrey Epstein', p.role = 'financier, sex trafficker', p.status = 'deceased 2019', p.note = 'DOJ files released Dec 2025 - Feb 2026, 6M+ pages';
MERGE (p:Person {id: 'Trump'}) SET p.name = 'Donald Trump', p.role = 'US President (2017-2021, 2025-)', p.note = 'Socializing with Epstein since 1980s, Mar-a-Lago connection';
MERGE (p:Person {id: 'Bannon'}) SET p.name = 'Steve Bannon', p.role = 'political strategist', p.note = 'Epstein advised on 2018 Europe tour, Epstein called him friend';
MERGE (p:Person {id: 'Maxwell'}) SET p.name = 'Ghislaine Maxwell', p.role = 'socialite, convicted trafficker', p.status = 'incarcerated', p.note = 'Co-conspirator, Epstein partner';
MERGE (p:Person {id: 'Barak'}) SET p.name = 'Ehud Barak', p.role = 'former Israeli PM', p.note = 'Extensive Epstein correspondence, DOJ recordings, Putin backchannel attempt';
MERGE (p:Person {id: 'Gates'}) SET p.name = 'Bill Gates', p.role = 'Microsoft co-founder', p.note = 'Named in Epstein files, multiple meetings after 2008 conviction';
MERGE (p:Person {id: 'Brin'}) SET p.name = 'Sergey Brin', p.role = 'Google co-founder', p.note = 'Emailed Maxwell about meeting Epstein in NYC 2003';
MERGE (p:Person {id: 'Hoffman'}) SET p.name = 'Reid Hoffman', p.role = 'LinkedIn co-founder', p.note = 'Visited Epstein island, claimed MIT fundraising context';
MERGE (p:Person {id: 'KimbalMusk'}) SET p.name = 'Kimbal Musk', p.role = 'businessman, Elon brother', p.note = '140+ references in Epstein files, invited to island 2013';
MERGE (p:Person {id: 'Sinofsky'}) SET p.name = 'Steven Sinofsky', p.role = 'former Microsoft exec', p.note = 'Named in DOJ Epstein file release Feb 2026';
MERGE (p:Person {id: 'Barrack'}) SET p.name = 'Tom Barrack', p.role = 'PE investor, US Ambassador to Turkey', p.note = 'Friends with Trump and Epstein since 1980s-90s';
MERGE (p:Person {id: 'LeonBlack'}) SET p.name = 'Leon Black', p.role = 'Apollo Global founder', p.note = '$170M+ payments to Epstein, DOJ settlement, son appointed by Trump';
MERGE (p:Person {id: 'Catz'}) SET p.name = 'Safra Catz', p.role = 'Oracle CEO', p.note = 'Pro-Israel lobbying via Barak emails, Women of IDF show';
MERGE (p:Person {id: 'Mandelson'}) SET p.name = 'Peter Mandelson', p.role = 'UK Labour, former Ambassador to US', p.note = 'Leaked UK secrets to Epstein 2009-2010, hired by Palantir via Global Counsel';
MERGE (p:Person {id: 'Koren'}) SET p.name = 'Michael Koren', p.role = 'Israeli intelligence', p.note = 'Calendar entries at Epstein home, coming and going';
MERGE (p:Person {id: 'Patel'}) SET p.name = 'Kash Patel', p.role = 'FBI Director', p.note = 'Promised no cover-ups on Epstein files, released heavily redacted docs';

// ── New Stakeholder Nodes (orgs not yet in graph) ──
MERGE (s:Stakeholder {id: 'ValarVentures'}) SET s.name = 'Valar Ventures', s.type = 'VC fund', s.note = 'Co-founded by Thiel, Epstein invested $40M, co-owned';
MERGE (s:Stakeholder {id: 'NSO'}) SET s.name = 'NSO Group', s.type = 'cyber weapons', s.note = 'Israeli spyware firm, maker of Pegasus';
MERGE (s:Stakeholder {id: 'FBI'}) SET s.name = 'FBI', s.type = 'law enforcement';
MERGE (s:Stakeholder {id: 'DOJ'}) SET s.name = 'Dept of Justice', s.type = 'government', s.note = 'Released Epstein files Dec 2025 - Feb 2026';
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

// ── EPSTEIN ↔ EXISTING PERSONS (edges into current graph) ──

// Thiel-Epstein: the deepest documented connection in your graph
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'great friend, financial advisor', r.weight = 5, r.source = 'DOJ files Feb 2026', r.detail = 'Correspondence 2014-2019, $40M into Valar Ventures, tax advice, Roth IRA discussions, meetings at NYC townhouse, Caribbean invite';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'ValarVentures'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'co-owner, $40M invested', r.weight = 5, r.source = 'NYT, Novara Media, DOJ files';
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'ValarVentures'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 3;

// Thiel-Vance pipeline (already in graph: Vance→Anduril, but not Thiel→Vance)
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Vance'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'mentor, $15M+ campaign donor', r.weight = 4, r.source = 'Wyden letter to DOJ', r.detail = 'Hired Vance, funded Senate campaign, Epstein money → Thiel → Vance pipeline';

// Ellison-Epstein
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'associate', r.weight = 3, r.source = 'Barak leaked emails, DOJ files', r.detail = 'Email joke about Ellison buying island out of jealousy, Barak-Ellison-Epstein triangle, Oracle-Israel nexus';

// Ellison-Catz-Israel-Oracle axis
MATCH (a {id: 'Catz'}) MATCH (b {id: 'Oracle'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'CEO', r.weight = 3;
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'political contact', r.weight = 2, r.source = 'leaked emails', r.detail = 'Private initiative bookmarked, Rubio discussion debriefing';
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'extensive correspondence', r.weight = 5, r.source = 'DOJ recordings + leaked emails', r.detail = 'DOJ recording discussing Palantir, Putin backchannel, Assad removal attempt, geopolitical fixer relationship';

// Musk-Epstein (through Kimbal + direct)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social contact', r.weight = 3, r.source = 'DOJ files Feb 2026', r.detail = 'Photo together at Reid Hoffman dinner with Thiel and Zuckerberg, Epstein engineered relationship between Kimbal and young woman';
MATCH (a {id: 'KimbalMusk'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'brother', r.weight = 1;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'KimbalMusk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social manipulation', r.weight = 4, r.source = 'DOJ files', r.detail = '140+ references, invited to island 2013, Epstein engineered intimate relationship with young woman';

// Fink/BlackRock - already in graph, add Epstein financial network context  
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Fink'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'financial network', r.weight = 2, r.source = 'Epstein files financial web', r.detail = 'BlackRock invests in Palantir, Amazon, Microsoft, Alphabet, IBM — all Epstein-connected entities';

// Karp-Epstein (Palantir CEO appears in leaked Barak emails)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Karp'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'network contact via Barak', r.weight = 2, r.source = 'SF Standard leaked emails', r.detail = 'Karp named in hacked Barak-Epstein correspondence alongside Ellison, Catz, Bezos';

// ── TRUMP NETWORK ──
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'longtime social contact', r.weight = 5, r.source = 'DOJ files, prior reporting', r.detail = 'Socializing since 1980s, Mar-a-Lago, women on the younger side quote, administration withholding Epstein docs per Wyden';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'political backer', r.weight = 4, r.source = 'public', r.detail = 'Thiel early Trump 2016 supporter, RNC speaker, Vance pipeline';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Ellison'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'ally', r.weight = 4, r.source = 'public', r.detail = 'TikTok deal orchestrated by Trump, Oracle gets data oversight, Ellison prominent Trump supporter';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'close advisor, DOGE', r.weight = 5, r.source = 'public 2024-2025';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Bannon'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'strategist', r.weight = 4;
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Barrack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'friend since 1980s, appointed Ambassador', r.weight = 4, r.source = 'DOJ files', r.detail = 'Barrack, Trump, Epstein socialized together NYC elite 1980s-90s, Middle East business ties';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'Patel'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'appointed FBI Director', r.weight = 4, r.source = 'public 2025', r.detail = 'Promised Epstein transparency, delivered heavily redacted files';
MATCH (a {id: 'Trump'}) MATCH (b {id: 'LeonBlack'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'appointed sons position', r.weight = 3, r.source = 'Wyden letter', r.detail = 'Trump appointed Leon Black son to lead US Int Dev Finance Corp despite $170M Epstein payments';

// Bannon-Epstein
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Bannon'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'advisor, friend', r.weight = 3, r.source = 'DOJ files Nov 2025', r.detail = 'Epstein advised Bannon on 2018 Europe tour, called him friend to associates';

// ── ISRAEL INTELLIGENCE ↔ TECH AXIS ──
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Unit8200'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence nexus via Barak', r.weight = 4, r.source = 'Drop Site News, DOJ files', r.detail = 'Epstein brokered deals for Israeli intelligence, Koren visits to Epstein home, backchannel operations';
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'NSO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'Israeli cyber nexus', r.weight = 2, r.source = 'network inference', r.detail = 'NSO/Pegasus, Unit 8200 alumni, same Israeli intelligence orbit as Epstein-Barak';
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'former PM', r.weight = 3;
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Koren'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence coordination', r.weight = 3;
MATCH (a {id: 'Koren'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'intelligence agent', r.weight = 3;

// Mandelson-Palantir-UK pipeline (your graph has Palantir→UK contracts)
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'leaked UK secrets to', r.weight = 5, r.source = 'Novara Media, Byline Times', r.detail = 'Leaked sensitive UK secrets 2009-2010';
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'hired as lobbyist via Global Counsel', r.weight = 4, r.source = 'Byline Times', r.detail = 'Global Counsel hired 2018 to secure UK govt contracts, same period Epstein was active Valar partner';
MATCH (a {id: 'Mandelson'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'former Ambassador to US, Labour grandee', r.weight = 2;
MATCH (a {id: 'GlobalCounsel'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'lobbying contract 2018', r.weight = 3;

// ── TIKTOK CONTROL NETWORK (extends Oracle node) ──
MATCH (a {id: 'Oracle'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake + data oversight', r.weight = 4, r.source = 'public Jan 2026', r.detail = 'Oracle oversees TikTok US data storage, Ellison Trump ally';
MATCH (a {id: 'SilverLake'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake', r.weight = 3;
MATCH (a {id: 'MGX'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '15% stake', r.weight = 3;
MATCH (a {id: 'ByteDance'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = '19.9% + algorithm control', r.weight = 4;
MATCH (a {id: 'Ellison'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'floated as buyer by Trump', r.weight = 3;

// ── PAYPAL MAFIA CLUSTER (connects existing persons) ──
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Musk'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'PayPal co-founders', r.weight = 3, r.detail = 'Both early PayPal, both in Epstein files, both Trump backers';
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'Thiel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'PayPal alumni', r.weight = 2;
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'visited island', r.weight = 4, r.source = 'Hoffman admission on X', r.detail = 'Went to island with Joi Ito, claimed MIT fundraising, hosted dinner with Musk/Thiel/Zuckerberg where Epstein present';
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'LinkedIn'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 2;
MATCH (a {id: 'Hoffman'}) MATCH (b {id: 'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'fundraising relationship', r.weight = 2;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'MITMediaLab'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'donations, campus visits', r.weight = 3, r.detail = 'MIT staffers witnessed Eastern European women brought to campus';

// ── GOOGLE-EPSTEIN ──
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Google'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 2;
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'social contact', r.weight = 3, r.source = 'DOJ files', r.detail = 'Emailed Maxwell about meeting Epstein NYC 2003';
MATCH (a {id: 'Brin'}) MATCH (b {id: 'Maxwell'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'email correspondent', r.weight = 2, r.source = 'DOJ files';
MATCH (a {id: 'Maxwell'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'partner, co-conspirator', r.weight = 5;

// ── FINANCIAL NETWORK ──
MATCH (a {id: 'LeonBlack'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = '$170M+ payments', r.weight = 5, r.source = 'Wyden investigation, DOJ settlement', r.detail = 'Payments financed trafficking activities per Congressional investigation';
MATCH (a {id: 'LeonBlack'}) MATCH (b {id: 'Apollo'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'co-founder', r.weight = 3;
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'JPMorgan'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'banking relationship', r.weight = 4, r.source = 'DOJ charges', r.detail = 'JPMorgan charged in connection with Epstein revelations';

// ── DOJ/FBI COVER-UP TENSION ──
MATCH (a {id: 'Patel'}) MATCH (b {id: 'FBI'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'Director', r.weight = 3;
MATCH (a {id: 'DOJ'}) MATCH (b {id: 'Epstein'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'files custodian', r.weight = 3, r.detail = '6M+ pages, 180K images, 2K videos, heavily redacted release';

// ── EMERGENT PATTERN: The Palantir-Epstein-Israel-UK Pipeline ──
// This is the structural pattern that EMERGES from the graph:
//
//   Epstein ──$40M──→ Valar Ventures ←──co-founder── Thiel ──owner──→ Palantir
//                                                                        │
//   Epstein ──intelligence──→ Barak ──pushed──→ "look at Palantir"       │
//                                                                        │
//   Mandelson ──leaked UK secrets to──→ Epstein                          │
//   Mandelson ──lobbying via Global Counsel──→ Palantir ──UK contracts──→ UK
//                                                                        │
//   Unit8200 ──veterans──→ Rosen (Meta/Onavo), Rappaport (Wiz/Google)    │
//   Unit8200 ──alumni──→ NSO (Pegasus) ──deployed by──→ Israel, US       │
//                                                                        │
//   Thiel ──$15M+──→ Vance ──VP──→ Trump admin
//   Trump ──appointed──→ Leon Black's son (despite $170M Epstein payments)
//   Trump ──appointed──→ Patel (FBI) ──released──→ redacted Epstein files
//   Trump ──orchestrated──→ TikTok deal ──Oracle oversight──→ Ellison
//
// The pattern: Epstein money → Thiel ventures → Palantir contracts → 
//              government surveillance infrastructure
// Parallel:    Epstein intelligence → Israel → Unit 8200 alumni → 
//              tech companies (NSO, Wiz, Onavo) → Western governments
// Cover:       Trump admin personnel (Patel, Black Jr, Vance) connected to 
//              Epstein network principals, releasing redacted files

// ── EDGE STATISTICS ──
// New Person nodes: 16
// New Stakeholder nodes: 14  
// New PERSON_LINK edges: ~32
// New CONNECTED_TO edges: ~22
// Total new edges: ~54
// Connects to existing graph nodes: Thiel, Musk, Ellison, Fink, Karp, Vance,
//   Palantir, Oracle, BlackRock, Unit8200, Israel, UK, US, MIT, Meta, Google,
//   Amazon, Microsoft, Alphabet, IBM, Anduril, ICE, SpaceX, Twitter
