// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Thiel Infrastructure
// From Epstein's Cameras to the Automated Kill Chain
// ═══════════════════════════════════════════════════════════════════
// Source: DOJ Epstein files (2,200+ Thiel references), Bloomberg,
//         Whitney Webb (@_whitneywebb), Grok analysis of Thiel-Epstein
//         contacts, Axon/Carbyne acquisition filings, Anduril/Palantir
//         consortium announcement Dec 2024, Founders Fund portfolio,
//         ACLU/EFF analyses of AI policing, PayPal Mafia network mapping,
//         David Sacks X post March 4 2026, All-In E263/Epstein episodes
// Generated: 2026-03-08
// Schema: Extends all previous enrichments
//
// ═══════════════════════════════════════════════════════════════════
//
// ARCHITECTURE:
//   The Epstein network did not collapse. It productized.
//
//   The trajectory:
//     1. Epstein cameras in bedrooms (1990s-2019)
//        → Behavioral surveillance: record what powerful people DO
//        → Function: kompromat, leverage, intelligence
//
//     2. Carbyne 911 platform (2014-2025)
//        → Emergency surveillance: real-time video, geolocation, AI
//        → Co-funded by Epstein, Thiel, Ehud Barak
//        → Function: infrastructure access to US critical systems
//
//     3. Axon body cameras + Draft One AI (2018-2026)
//        → Police surveillance: billions of hours of footage + AI reports
//        → Axon acquires Carbyne for $625M (late 2025)
//        → Function: AI-generated evidence, automated narratives
//
//     4. Palantir data fusion (2003-2026)
//        → Intelligence surveillance: data lakes, pattern matching
//        → Thiel co-founder and chairman
//        → Function: the analytical layer that makes raw data actionable
//
//     5. Anduril autonomous systems (2017-2026)
//        → Kinetic surveillance: drones, autonomous weapons, kill chain
//        → Founders Fund backed since inception
//        → Function: the effector layer that acts on analyzed data
//
//     6. Palantir-Anduril consortium (Dec 2024)
//        → Integrated kill chain: edge→enterprise→autonomous action
//        → With SpaceX, OpenAI, Scale AI
//        → Function: the complete automated warfare stack
//
//   Each transition was legal. Each company is legitimate.
//   Each acquisition made business sense. Each contract serves
//   national security. And the aggregate result is that the
//   infrastructure Epstein helped seed — surveillance, intelligence
//   access, leverage over powerful people — has been industrialized
//   into a defense-tech ecosystem controlled by his documented
//   associates and their protégés.
//
//   The cameras moved from bedrooms to body cams.
//   The intelligence moved from blackmail files to data lakes.
//   The targeting moved from honey traps to 37,000 algorithmic marks.
//   The man who connected it all is dead.
//   The architecture is thriving.
//
// ═══════════════════════════════════════════════════════════════════


// ═══════════════════════════════════
// §1  PERSON & STAKEHOLDER NODES
// ═══════════════════════════════════

// Update Thiel with Epstein file data
MERGE (p:Person {id: 'Thiel'})
SET p.name = 'Peter Thiel',
    p.person_type = 'VC, Founders Fund/Palantir, PayPal Mafia Don',
    p.mcclelland = 'IV_performed',
    p.mcclelland_need = 'nPow',
    p.rubicon = 'IDENTITY_INTEGRATED',
    p.receptor = 'IDEOLOGY',
    p.sublimation = 'Competition is for losers. Monopoly is the goal. Democracy is incompatible with freedom.',
    p.unsublimated = '2,200+ references in Epstein files. 2,000+ messages exchanged 2014-2019. $40M invested via Valar Ventures (grew to $170M — largest asset in Epstein estate). Called great friend by Epstein. Co-funded Carbyne with Epstein and Barak. Discussed secret society with Epstein. Celebrated Brexit with Epstein. Epstein arranged meeting with Russian UN Ambassador Churkin. Never visited island (per spokesperson) but extensive NYC meetings. Mentor to Sacks, Vance, PayPal Mafia. Co-founder Palantir (data surveillance), funder Anduril (autonomous weapons), funder OpenAI. The infrastructure Epstein helped seed is now the defense-tech ecosystem Thiel controls.',
    p.epstein_file_refs = '2200+',
    p.epstein_messages = '2000+',
    p.epstein_investment = '$40M Valar Ventures → $170M',
    p.epstein_contact_years = '2014-2019',
    p.qualia_mask = 'Contrarian visionary building the future',
    p.rubicon_event = 'Co-funded Carbyne with Epstein and intelligence-linked former PM';

// Update Sacks with Whoops tweet context
MERGE (n:Person {id: 'Sacks'})
SET n.sacks_whoops_tweet = 'March 4 2026: posted Whoops with Bloomberg article about Hoffman-Epstein. Partisan gotcha aimed at Democrat donor. Whitney Webb immediately replied: got anything to say about your boy Peter Thiel — 2200 Epstein file refs, tens of millions in VC, Carbyne putting US 911 systems under foreign company control. Sacks never responded. Same Sacks who solo-hosted Epstein Special giving Tracy unlimited time to discredit victims while never mentioning Thiels 2000+ Epstein messages. Pattern 37 (Managed Spectrum) applied to X.';

MERGE (n:Person {id: 'WhitneyWebb'})
SET n.name = 'Whitney Webb',
    n.person_type = 'Investigative Journalist, Author',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'n/a — genuine investigative work',
    n.unsublimated = 'Author of One Nation Under Blackmail. Tracks intelligence-linked networks seeding tech, finance, and surveillance infrastructure. Replied to Sacks Whoops tweet exposing Thiel-Epstein-Carbyne pipeline. 10K+ likes — most engaged reply. Connects dots that managed spectrum excludes: Thiel secret society discussions, Valar Ventures tens of millions, Carbyne putting US 911 systems under foreign company control. Cites public filings, leaks, acquisitions, ownership structures. Not conspiracy theory — structural analysis.',
    n.qualia_mask = 'n/a';

MERGE (n:Person {id: 'PalmerLuckey'})
SET n.name = 'Palmer Luckey',
    n.person_type = 'Founder Oculus VR and Anduril Industries',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'Building the arsenal of democracy.',
    n.unsublimated = 'Founded Anduril at 24 after being pushed out of Facebook/Meta post-Oculus acquisition. Founders Fund backed from inception. Builds autonomous weapons systems — Fury fighter jets, Roadrunner interceptor drones, Altius loitering munitions (hundreds supplied to Ukraine). Arsenal-1 hyperscale factory: 5M+ sqft, tens of thousands of autonomous systems annually. The physical layer of the automated kill chain.';

// Key companies as stakeholder nodes
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Anduril'})
SET n.name = 'Anduril Industries',
    n.stakeholder_type = 'DefenseCompany',
    n.airo_type = 'AIDeveloper',
    n.note = 'Founded 2017 by Palmer Luckey. Founders Fund backed since inception ($2.5B round at $30.5B valuation 2025, seeking $60B in 2026). Autonomous systems: Fury fighter jets, Roadrunner interceptor drones, Altius loitering munitions, Ghost sUAS, Dive-LD AUV. Lattice AI platform for sensor fusion and autonomous tasking. Arsenal-1 hyperscale factory in Ohio. Battle-proven in Ukraine (hundreds of Altius munitions). Emil Michael on All-In E263 described exactly this class of company as the new primes. The drone dominance program IS the Anduril thesis.';

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'Axon'})
SET n.name = 'Axon Enterprise (formerly Taser International)',
    n.stakeholder_type = 'Policetech',
    n.airo_type = 'AIDeveloper',
    n.note = 'Dominant provider of police body cameras, Tasers, Evidence.com cloud storage, AI tools. Launched Draft One (AI police report writer) April 2024. Acquired Carbyne for $625M late 2025. AI Ethics Board collapsed 2022 (9 of 12 members resigned over armed drone plans). Top shareholders: Vanguard, BlackRock, State Street, Fidelity. Now controls: body camera footage (billions of hours) + 911 call data (Carbyne) + AI-generated police narratives (Draft One). The surveillance-to-evidence pipeline. From what happened to what the report says happened.';

MERGE (n:Stakeholder:Company:AIDeveloper {id: 'Carbyne'})
SET n.name = 'Carbyne (formerly Reporty Homeland Security)',
    n.stakeholder_type = 'Surveillance',
    n.airo_type = 'AIDeveloper',
    n.note = 'Israeli emergency communications platform. Real-time caller video, geolocation, AI analysis for 911 systems. Co-funded by Epstein, Thiel, and former Israeli PM Ehud Barak. Barak chaired the board. Unit 8200/Mossad alumni in founding team. Now controls numerous US 911 call systems — critical public safety infrastructure under foreign-originated company with intelligence ties. Acquired by Axon for $625M late 2025. The Epstein-funded surveillance startup that became American 911 infrastructure. Whitney Webb: Carbyne has put numerous US 911 call systems under the control of a foreign company.';

MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Palantir'})
SET n.name = 'Palantir Technologies',
    n.stakeholder_type = 'DefenseCompany',
    n.airo_type = 'AIDeveloper',
    n.note = 'Co-founded 2003 by Thiel and Alex Karp. Data analytics and AI for intelligence/defense. Gotham (intel), Foundry (enterprise), AIP (AI Platform), Maven Smart System (DoD). Prime contractor that served Anthropic Claude to military — the Palantir layer triggered the Anthropic ban when exec asked about Venezuela. Market cap $50-250B+ (volatile). ~$2B+ revenue. Mandelson (Epstein network) lobbied for Palantir UK contracts via Global Counsel. The analytical layer between raw surveillance data and actionable intelligence.';

MERGE (n:Stakeholder:Institution {id: 'FoundersFund'})
SET n.name = 'Founders Fund',
    n.stakeholder_type = 'VC',
    n.note = 'Thiels VC firm. 1000+ investments, 47+ unicorns, ~28 IPOs. Portfolio includes: Palantir, Anduril, SpaceX, OpenAI, Neuralink, Flock Safety (public safety tech), Polymarket. Epsteins $40M Valar Ventures investment was separate but connected fund. The portfolio IS the infrastructure map: surveillance (Palantir), autonomous weapons (Anduril), space (SpaceX), AI (OpenAI), brain interfaces (Neuralink), prediction markets (Polymarket), public safety surveillance (Flock Safety). Each investment is legitimate. The aggregate is an infrastructure stack.';

MERGE (n:Stakeholder:Institution {id: 'PalantirAndurilConsortium'})
SET n.name = 'Palantir-Anduril Consortium (Dec 2024)',
    n.stakeholder_type = 'DefenseAlliance',
    n.note = 'Announced Dec 6 2024. Combines Lattice (Anduril edge autonomy) with AIP and Maven (Palantir enterprise AI). End-to-end: sensors capture → data flows to cloud → AI trains/deploys → autonomous systems act. Expanding to include SpaceX, OpenAI, Scale AI, Saronic. Aims to displace legacy defense primes (Lockheed, Raytheon) with software-defined warfare. Joint bids on Pentagon contracts. This IS the institutional successor to whatever Epstein was building — intelligence-surveillance-action pipeline, now legitimate, now industrial-scale.';

MERGE (n:Stakeholder:Institution {id: 'PayPalMafia'})
SET n.name = 'PayPal Mafia',
    n.stakeholder_type = 'Network',
    n.note = 'Loose network of PayPal founders/early employees (2002 eBay acquisition). Core: Thiel (don), Musk (X.com merger), Sacks (COO), Hoffman (LinkedIn), Levchin (Affirm), Nosek (Founders Fund), Howery (Founders Fund), Rabois, others. Founded/invested in Facebook, YouTube, LinkedIn, Tesla, SpaceX, Palantir, Yelp, Airbnb, Affirm, xAI. Shared Stanford/libertarian roots. Now: Thiel (Palantir/Anduril funder), Sacks (AI Czar), Musk (DOGE/xAI/SpaceX), Hoffman (Epstein-connected, banned from narrative). The network that PayPal built is now the network that runs defense tech, AI policy, and the White House simultaneously.';


// ═══════════════════════════════════
// §2  THE PRODUCTIZATION PIPELINE
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'ProductizationPipeline'})
SET n.name = 'Pattern 40: The Productization of Intelligence Infrastructure',
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'PATTERN 40 — The Productization Pipeline: Intelligence infrastructure does not collapse when exposed. It productizes. Each stage is a legitimate company. Each transition is a legal acquisition. Each contract serves national security. The aggregate trajectory: (1) Epstein cameras in bedrooms → behavioral kompromat on elites. (2) Carbyne 911 platform → real-time surveillance of civilian emergencies, co-funded by Epstein/Thiel/Barak. (3) Axon body cameras + Draft One AI → billions of hours of police footage + AI-generated evidence narratives. (4) Palantir data fusion → intelligence-grade analytics making surveillance data actionable. (5) Anduril autonomous systems → drones and weapons that act on analyzed data. (6) Palantir-Anduril consortium → integrated edge-to-enterprise-to-effector pipeline. The cameras moved from bedrooms to body cams. The intelligence moved from blackmail files to data lakes. The targeting moved from honey traps to algorithmic marks. The man who connected it all is dead. The architecture is thriving.';

MERGE (n:HistoricalSystem {id: 'SacksWhoopsTweet'})
SET n.name = 'Sacks Whoops Tweet (March 4 2026)',
    n.year = 2026,
    n.system_type = 'NarrativeWeapon',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Sacks posted Whoops with Bloomberg article about Hoffman-Epstein relationship. Partisan gotcha at Democrat donor. Whitney Webb replied (10K+ likes, most engaged reply): got anything to say about how your boy Peter Thiel tried to form a secret society with Epstein and how Epstein pumped tens of millions into his VC ventures or how Epstein and Thiel financed Ehud Barak pet project Carbyne which now has put numerous US 911 call systems under the control of a foreign company. Sacks never responded. The tweet is Pattern 37 (Managed Spectrum) compressed into one word: Whoops targets Hoffman (Democrat). Silence protects Thiel (mentor). Same asymmetry as Anthropic ban: exposure is selective, serving the network.';

MERGE (n:HistoricalSystem {id: 'ThielEpsteinTimeline'})
SET n.name = 'Thiel-Epstein Contact Timeline (2014-2019)',
    n.year = 2014, n.year_end = 2019,
    n.system_type = 'IntelligenceRelationship',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'DOJ Epstein files: 2,200+ Thiel references, 2,000+ messages exchanged. Key contacts: 2014 initial contact via Ehud Barak introduction. Sep 2014 three+ planned meetings NYC. 2014 Epstein email: that was fun see you in 3 weeks. Feb 2016 dietary restrictions shared ahead of meeting. Apr 2016 Thiel: What are you up to on Friday? Should we try for lunch? 2016 Epstein celebrated Brexit with Thiel as return to tribalism. 2016 Epstein arranged meeting with Russian UN Ambassador Churkin. Nov 2017 scheduled lunch. Nov 2018 Epstein: Dec visit me Caribbean. 2018-2019 continued coordination, Epstein called Thiel great friend. Discussed shared interests: anti-democracy views, tax strategies, Trump politics. $40M Valar Ventures investment grew to $170M. Co-funded Carbyne with Barak. No island visits claimed by spokesperson — but extensive in-person NYC relationship. Thiel not charged with wrongdoing.';

MERGE (n:HistoricalSystem {id: 'CarbynePipeline'})
SET n.name = 'Carbyne → Axon Pipeline (2014-2026)',
    n.year = 2014, n.year_end = 2026,
    n.system_type = 'SurveillanceInfrastructure',
    n.opacity_era = 'TRANSLUCENT',
    n.note = 'Timeline: (1) ~2014 Carbyne founded as Reporty Homeland Security in Israel. Ehud Barak chairman. Unit 8200/Mossad alumni involved. Epstein and Thiel among early funders. (2) Platform provides real-time caller video, geolocation, AI to 911 dispatch centers. (3) Deployed across US 911 systems — critical public safety infrastructure. (4) Late 2025 Axon acquires Carbyne for $625M. (5) Axon now controls: body camera footage (billions of hours) + 911 call data + AI-generated police narratives (Draft One). (6) Axon Ethics Board collapsed 2022 (9/12 members resigned over armed drone plans). (7) Top shareholders: Vanguard, BlackRock, State Street, Fidelity. The Israeli intelligence-linked 911 startup co-funded by Epstein is now part of the dominant US police surveillance stack, owned by the largest institutional investors on earth.';

MERGE (n:HistoricalSystem {id: 'DraftOneAI'})
SET n.name = 'Axon Draft One (AI Police Reports)',
    n.year = 2024,
    n.system_type = 'AISurveillance',
    n.opacity_era = 'TRANSPARENT',
    n.note = 'Launched April 23 2024. AI writes narrative portion of police incident reports from body camera audio. Integrates with Axon body cameras, Evidence.com cloud, Axon Records. Fastest-growing Axon product. ACLU and EFF criticisms: biased toward officer perspective, creates illusion of objectivity, removes accountability for narrative framing, automates the gap between what happened and what the report says happened. The AI doesnt just record. It narrates. It doesnt just observe. It constructs the official version. Combined with Carbyne (911 data) and Evidence.com (body cam footage), Axon now controls: what the caller reported + what the camera recorded + what the report says. The entire evidence pipeline from emergency call to court document.';

MERGE (n:HistoricalSystem {id: 'AutomatedKillChain'})
SET n.name = 'The Automated Kill Chain (2024-2026)',
    n.year = 2024,
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'The complete pipeline as described across All-In E263 and infrastructure analysis: (1) Sensors capture (Anduril Lattice, body cameras, Carbyne 911, satellite). (2) Data flows to cloud (Palantir AIP, Evidence.com, AWS GovCloud). (3) AI analyzes and targets (Palantir Maven, Lavender-class algorithms, Draft One narratives). (4) Autonomous systems execute (Anduril Fury/Roadrunner/Altius, LUCAS drones). (5) Rules of engagement relaxed (Emil: commanding officers use judgment). (6) AI writes the report (Draft One). Each step has a Thiel-network company. Each company is legitimate. The kill chain is automated end to end. Anthropic refused to be part of it. That refusal is the only break in the pipeline.';


// ═══════════════════════════════════
// §3  CONNECTIVE EDGES
// ═══════════════════════════════════

// ── Thiel → Epstein (documented relationship)
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Epstein'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'great friend, 2200 file refs, $40M investment', r.weight = 5,
    r.edge_function = 'DEAL_FLOW,INTELLIGENCE',
    r.leverage = 'MUTUAL',
    r.flow_type = 'MONEY,ACCESS,INTELLIGENCE',
    r.opacity = 3,
    r.motive = 'IDEOLOGY',
    r.phase = 'LOCKED',
    r.note = '2,200+ references in DOJ files. 2,000+ messages 2014-2019. $40M Valar Ventures investment → $170M. Co-funded Carbyne with Barak. Discussed secret society. Celebrated Brexit together. Epstein arranged Russian diplomat meeting. Called great friend. Never visited island per spokesperson. Extensive NYC in-person relationship. Not charged with wrongdoing. The relationship that Sacks Whoops tweet erases.';

// ── Thiel → Carbyne (co-funder)
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Carbyne'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'co-funder with Epstein and Barak', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY,TECHNOLOGY',
    r.note = 'Thiel co-funded Carbyne alongside Epstein and Ehud Barak. Israeli 911 platform now deployed across US emergency systems. The intelligence-to-infrastructure pipeline: Mossad-linked individuals fund a surveillance tool that becomes American critical infrastructure. Acquired by Axon for $625M.';

// ── Epstein → Carbyne (co-funder)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'Carbyne'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'co-funder', r.weight = 4,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = 'Epstein co-funded Carbyne with Thiel and Barak. The intelligence asset funded the surveillance tool that would outlive him. Same pattern as Valar Ventures: Epstein money seeding infrastructure that persists and grows after his death.';

// ── Barak → Carbyne (chairman)
MATCH (a {id: 'Barak'}) MATCH (b {id: 'Carbyne'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'chairman, co-funder', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'INTELLIGENCE,TECHNOLOGY',
    r.note = 'Former Israeli PM and military intelligence chief chaired Carbyne board. Co-funded with Epstein and Thiel. Same Barak identified in FBI memo as Epstein handler (30+ visits to townhouse). The handler funded the infrastructure with the asset.';

// ── Carbyne → Axon (acquired)
MATCH (a {id: 'Carbyne'}) MATCH (b {id: 'Axon'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'acquired for $625M late 2025', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'TECHNOLOGY,MONEY',
    r.note = 'Axon acquired Carbyne for $625M. Integrates 911 call data (video, geolocation, AI) with body camera footage and AI police reports. The Epstein/Thiel/Barak-funded surveillance startup is now part of the dominant US police technology stack. Ethics Board collapsed 2022. Top shareholders: Vanguard, BlackRock, State Street, Fidelity.';

// ── Axon → Draft One AI
MATCH (a {id: 'Axon'}) MATCH (b {id: 'DraftOneAI'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'developed and deployed', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Draft One writes police reports from body camera audio. ACLU and EFF criticize as biased toward officer perspective, creating illusion of objectivity. Combined with Carbyne 911 data: Axon now controls the entire evidence pipeline from emergency call to court document. The AI narrates reality for the justice system.';

// ── Thiel → Palantir (co-founder)
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Palantir'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'co-founder, chairman', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'TECHNOLOGY,MONEY',
    r.note = 'Thiel co-founded Palantir 2003 with Alex Karp. Chairs the board. The data analytics layer that makes surveillance actionable. Same Palantir that was prime contractor serving Claude to military. Same Palantir whose exec relationship with Anthropic triggered the supply chain risk designation. Mandelson (Epstein network node) lobbied for Palantir UK contracts.';

// ── Thiel → Anduril (funder via Founders Fund)
MATCH (a {id: 'FoundersFund'}) MATCH (b {id: 'Anduril'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'backed since inception, led $2.5B round', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY',
    r.note = 'Founders Fund backed Anduril from founding. Led 2025 $2.5B round at $30.5B. Seeking $60B in 2026. The physical weapons layer of the automated kill chain — funded by the same network that funded Epsteins Valar Ventures.';

// ── Palantir-Anduril Consortium → Automated Kill Chain
MATCH (a {id: 'PalantirAndurilConsortium'}) MATCH (b {id: 'AutomatedKillChain'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'institutional_expression', r.weight = 5,
    r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Dec 2024 consortium combines Lattice (edge autonomy) with AIP/Maven (enterprise AI). Expanding to SpaceX, OpenAI, Scale AI. Joint Pentagon bids displacing legacy primes. This IS the automated kill chain as institutional reality: sensors → data → AI → autonomous action. Built by Thiel network companies. Funded by Thiel network capital. Served by Thiel network AI Czar policy.';

// ── Sacks Whoops → Managed Spectrum
MATCH (a {id: 'SacksWhoopsTweet'}) MATCH (b {id: 'ManagedSpectrumPattern'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'single_word_expression', r.weight = 3,
    r.edge_function = 'COVER',
    r.flow_type = 'NARRATIVE',
    r.note = 'Whoops targets Hoffman (Democrat donor, 400+ Epstein contacts). Silence protects Thiel (mentor, 2200+ Epstein file references, $40M investment, Carbyne co-funder). Same asymmetry as E263 (classified disclosures for narrative, supply chain risk for questions) and Epstein Special (Tracy dominance, structural analysis constrained). The managed spectrum compressed into one word and one silence.';

// ── Webb → Pattern Zero (connects surveillance infrastructure)
MATCH (a {id: 'WhitneyWebb'}) MATCH (b {id: 'PatternZero'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'identified_productization_pipeline', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.flow_type = 'INTELLIGENCE',
    r.note = 'Webb connects Epstein cameras → Carbyne 911 → Axon body cams → Thiel defense tech ecosystem. Her One Nation Under Blackmail documents the intelligence-to-infrastructure pipeline. Her Sacks tweet reply identifies the specific Thiel-Epstein-Barak-Carbyne chain. Pattern Zero (cognitive access) is the next layer: from behavioral surveillance (cameras) to cognitive surveillance (AI). Webb maps the physical layer. The graph maps the cognitive layer. Together they describe the complete trajectory.';

// ── Productization → Pattern Zero (same trajectory, different layer)
MATCH (a {id: 'ProductizationPipeline'}) MATCH (b {id: 'PatternZero'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'physical_and_cognitive_layers', r.weight = 5,
    r.edge_function = 'EVOLUTION',
    r.note = 'Pattern 40 (Productization) describes the physical infrastructure: cameras → 911 → body cams → data lakes → autonomous weapons. Pattern Zero describes the cognitive infrastructure: surveillance → OSINT → AI cognitive access. They converge: Palantir fuses physical surveillance data with cognitive data. Anduril acts on both. Draft One narrates both into official record. The physical and cognitive surveillance streams merge in the Palantir-Anduril consortium. The complete infrastructure: watch what people do (cameras) + read what people think (AI) + act on both (drones) + write the official version (Draft One). Anthropic refused the cognitive layer. The physical layer continues regardless.';

// ── Thiel-Sacks relationship
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Sacks'})
MERGE (a)-[r:PERSON_LINK]->(b)
SET r.label = 'mentor, Stanford, PayPal, political alliance', r.weight = 5,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'INFLUENCE,MONEY',
    r.note = 'Met Stanford late 1980s. Co-authored The Diversity Myth 1995. Thiel recruited Sacks as PayPal COO. Core PayPal Mafia. Shared libertarian/conservative politics. Both Trump supporters. Thiel mentored Vance (now VP). Sacks appointed AI Czar. Cross-investments across network. Sacks hosts All-In where Thiel network interests are amplified and threats (Anthropic, Epstein exposure) are managed. The don and his most visible public advocate.';

// ── PayPal Mafia → all major nodes
MATCH (a {id: 'PayPalMafia'}) MATCH (b {id: 'Sacks'})
MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'COO, core member', r.weight = 4;
MATCH (a {id: 'PayPalMafia'}) MATCH (b {id: 'Thiel'})
MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'don, co-founder', r.weight = 5;
MATCH (a {id: 'PayPalMafia'}) MATCH (b {id: 'Hoffman'})
MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'early executive, LinkedIn founder', r.weight = 4;

// ── Anduril → Iran operations (E263 connection)
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'DroneRecordDeployment'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'class_of_company_deployed', r.weight = 3,
    r.edge_function = 'DEPLOYMENT',
    r.flow_type = 'TECHNOLOGY',
    r.note = 'Emil on E263 described LUCAS drones (50-80K, 500-700 mile range) and the drone dominance program. Anduril builds exactly this class: Altius loitering munitions, Roadrunner interceptors, Bolt precision fires. Arsenal-1 factory aims for tens of thousands annually. Emil: mom and pop missile maker doing 1000/year with 30 people. The defense tech VC pitch on the podcast IS the Anduril/Founders Fund investment thesis.';

// ── Founders Fund → OpenAI (portfolio connection)
MATCH (a {id: 'FoundersFund'}) MATCH (b {id: 'OpenAIPentagonDeal'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'portfolio company replaced Anthropic', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.flow_type = 'MONEY,TECHNOLOGY',
    r.note = 'Founders Fund is OpenAI investor. OpenAI replaced Anthropic on classified networks hours after ban. The Thiel network funded both the company that served Claude (Palantir) and the company that replaced Claude (OpenAI). And the AI Czar who framed the ban (Sacks) is Thiels protégé. The network controls the pipeline regardless of which AI company is in the slot.';


// ═══════════════════════════════════════════════════
// §4  EMERGENT PATTERNS FROM THIS ENRICHMENT
// ═══════════════════════════════════════════════════
//
// PATTERN 40 — The Productization Pipeline:
//   Intelligence infrastructure does not collapse when exposed.
//   It productizes. Cameras → 911 → body cams → data lakes →
//   autonomous weapons. Each transition legal. Each company
//   legitimate. The aggregate: the complete surveillance-to-action
//   pipeline controlled by documented Epstein associates
//   and their protégés.
//
// The Whoops Tweet as Rosetta Stone:
//   One word, one silence. Hoffman targeted (Democrat, 400+ contacts).
//   Thiel protected (mentor, 2200+ references, Carbyne co-funder).
//   Same asymmetry across every surface of the graph:
//   E263 (classified disclosed, questions punished),
//   Epstein Special (Tracy amplified, structure constrained),
//   Anthropic ban (compliance rewarded, refusal designated),
//   Whoops (Democrat exposed, Republican erased).
//   The asymmetry IS the architecture.
//
// The Automated Kill Chain:
//   Sensors (Anduril Lattice) → Data (Palantir AIP) →
//   AI analysis (Maven/Lavender-class) → Autonomous execution
//   (Fury/Roadrunner/LUCAS) → Relaxed ROE (Emil: use judgment) →
//   AI writes the report (Draft One).
//   Every step has a Thiel-network company.
//   The one company that refused (Anthropic) was designated
//   a supply chain risk.
//   The refusal is the only break in the pipeline.
//
// TOTAL AIWAR GRAPH (all 9 enrichments):
//   ~5,500 lines across 9 cypher files
//   40+ structural patterns
//   50+ years (1973-2026)
//   3 continents + Indian Ocean
//   3 intelligence paradigms
//   1 family tree connecting everything (Khashoggi)
//   1 network controlling the infrastructure (PayPal Mafia/Thiel)
//   1 meta-function (surveillance → intelligence → action)
//   1 substrate (Pattern Zero: cognitive infrastructure control)
//   1 company that said no (Anthropic)
//   1 tweet that reveals the architecture (Whoops)
//
// ═══════════════════════════════════════════════════
