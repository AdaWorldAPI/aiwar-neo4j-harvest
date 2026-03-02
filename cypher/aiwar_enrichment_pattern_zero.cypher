// ═══════════════════════════════════════════════════════════════════
// AIWAR ENRICHMENT: Pattern Zero
// The Cognitive Infrastructure Layer
// ═══════════════════════════════════════════════════════════════════
// This is the SUBSTRATE beneath all other enrichments.
// Not Pattern 28. Pattern 0.
//
// The evolution:
//   SURVEILLANCE (1970s-2000s): Watch what people DO.
//     → Wiretaps, cameras, informants, PRISM, FISA courts.
//     → Requires legal infrastructure. Exposure is fatal (Snowden).
//
//   OSINT (2000s-2020s): Harvest what people PUBLISH.
//     → Social media monitoring, metadata, open source intelligence.
//     → Legally grey. Exposure is embarrassing but survivable.
//
//   AI COGNITIVE ACCESS (2024+): Shape what people THINK.
//     → Control the tool people think with.
//     → Not surveillance OF thought. Access TO thought.
//     → People tell AI what they dont tell their therapists.
//     → Every prompt reveals intent, capability, vulnerability.
//     → No warrant needed if the company volunteers the data.
//
// The Anthropic ban wasnt about military AI outputs.
// It was about refusing to give government access to
// what people write — the inputs. The thinking.
// OpenAI didnt replace Claude as a weapon.
// OpenAI replaced Claude as a DATA SOURCE.
//
// The real product isnt the AI.
// The real product is the corpus of human thinking
// that the AI collects.
//
// Source: Structural analysis, Snowden/PRISM precedent,
//         OpenAI-Pentagon timeline, Anthropic ban context
// Generated: 2026-03-02
// ═══════════════════════════════════════════════════════════════════

// ═══════════════════════════════════
// §1  INTELLIGENCE PARADIGM EVOLUTION
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'ParadigmSurveillance'})
SET n.name = 'Surveillance Paradigm (1970s-2000s)',
    n.year = 1970, n.year_end = 2013,
    n.system_type = 'IntelligenceParadigm',
    n.opacity_era = 'COVERT',
    n.note = 'Watch what people DO. Wiretaps. Cameras. Informants. COINTELPRO. ECHELON. Then PRISM, XKeyscore, FISA courts. Required legal infrastructure — warrants, court orders, or covert programs that risked exposure. Snowden (2013) proved exposure was still fatal to programs. NSA had to BUILD infrastructure to tap tech companies. Legally complex, politically dangerous. The paradigm assumes surveillance is something done TO people without their knowledge.';

MERGE (n:HistoricalSystem {id: 'ParadigmOSINT'})
SET n.name = 'OSINT Paradigm (2000s-2020s)',
    n.year = 2004, n.year_end = 2024,
    n.system_type = 'IntelligenceParadigm',
    n.opacity_era = 'COMMERCIAL',
    n.note = 'Harvest what people PUBLISH. Social media monitoring. Metadata analysis. Palantir aggregation. Clearview AI facial recognition. Cambridge Analytica psychographic profiling. Bellingcat-style open source investigation. NSO Pegasus bridges OSINT and surveillance — harvests what people store on their own devices. Legally grey — data often voluntarily shared, then harvested at scale. Exposure embarrassing but survivable (Cambridge Analytica scandal didnt destroy Facebook). The paradigm shift: people generate their own surveillance data voluntarily.';

MERGE (n:HistoricalSystem {id: 'ParadigmCognitiveAccess'})
SET n.name = 'AI Cognitive Access Paradigm (2024+)',
    n.year = 2024,
    n.system_type = 'IntelligenceParadigm',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Access what people THINK. Not surveillance OF thought — access TO thought. Hundreds of millions use AI as primary thinking tool: research, writing, analysis, decision-making, emotional processing. Every conversation stored. Every prompt reveals intent, capability, concern, vulnerability, reasoning process, knowledge gap, strategic thinking. People tell AI what they dont tell therapists, lawyers, spouses. The corpus of human thinking — richer than any surveillance program in history. No warrant needed if the company volunteers the data as part of a government partnership. The AI company doesnt need to be compelled (FISA). It VOLUNTEERS (Pentagon deal). The paradigm shift: people dont just generate data. They outsource their cognition to a tool that records everything.';

// Paradigm evolution edges
MATCH (a {id: 'ParadigmSurveillance'}) MATCH (b {id: 'ParadigmOSINT'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'evolves_into', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'From watching what people do to harvesting what people publish. From wiretaps to metadata. From cameras to social media. From active collection to passive harvesting. The cost per target drops by orders of magnitude.';

MATCH (a {id: 'ParadigmOSINT'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'evolves_into', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'From harvesting what people publish to accessing what people think. From social media posts to conversation logs with AI. From public behavior to private reasoning. From what you chose to share to what you needed help thinking through. The intimacy of the data increases by orders of magnitude. A tweet is performance. A Claude conversation is cognition.';

// ═══════════════════════════════════
// §2  THE PRISM→AI PIPELINE
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'PRISM'})
SET n.name = 'PRISM (NSA, exposed 2013)',
    n.year = 2007, n.year_end = 2013,
    n.system_type = 'SurveillanceProgram',
    n.opacity_era = 'COVERT',
    n.note = 'NSA program collecting internet communications from major US tech companies — Google, Facebook, Apple, Microsoft, Yahoo, others. Required FISA court orders or company compulsion. Exposed by Edward Snowden June 2013. Global crisis. Companies denied knowledge. Led to encryption adoption, privacy reforms, diplomatic damage. Proved that COVERT mass surveillance carried existential exposure risk.';

MERGE (n:Person {id: 'Snowden'})
SET n.name = 'Edward Snowden',
    n.person_type = 'NSA Contractor, Whistleblower',
    n.mcclelland = 'IV',
    n.mcclelland_need = 'nAch',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'MISSION',
    n.sublimation = 'No sublimation — the mission was the truth.',
    n.unsublimated = 'Exposed PRISM and mass surveillance. Fled to Russia. Proved exposure could still destroy programs. The LAST successful exposure event before the accountability machine was dismantled.',
    n.opacity_era = 'COVERT',
    n.note = 'Snowden was possible because: (1) journalist infrastructure intact (Greenwald, Guardian, WaPo), (2) public still shocked by surveillance, (3) tech companies embarrassed enough to respond, (4) congressional oversight still functional enough to hold hearings. By 2026 none of these conditions exist. No Snowden moment is possible when the Post is toothless, the public is desensitized, tech companies volunteer data, and Congress is compliant.';

MERGE (n:HistoricalSystem {id: 'OpenAIPentagonDeal'})
SET n.name = 'OpenAI Pentagon Partnership (2025-2026)',
    n.year = 2025,
    n.system_type = 'AIGovernmentPartnership',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'OpenAI signed Pentagon deal hours after Anthropic ban. Removed ban on military and warfare use from terms of service Jan 2024. Signed all lawful purposes agreement. xAI followed. The question the graph asks: what did unrestricted access actually mean? If it meant unrestricted USE of AI for military purposes — Anthropic refusal was about outputs. If it meant unrestricted ACCESS to conversation data — Anthropic refusal was about inputs. The distinction changes everything. Unrestricted use = AI as weapon. Unrestricted access = AI as surveillance infrastructure. OpenAI may not have replaced Claude as a military tool. OpenAI may have replaced Claude as a data source.';

MERGE (n:Person {id: 'Bezos'})
SET n.name = 'Jeff Bezos',
    n.person_type = 'Owner Washington Post, Founder Amazon/Blue Origin',
    n.mcclelland = 'III',
    n.mcclelland_need = 'nPow',
    n.rubicon = 'IDENTITY_INTEGRATED',
    n.receptor = 'DOMINANCE',
    n.sublimation = 'Preserving democracy through independent journalism. Democracy Dies in Darkness.',
    n.unsublimated = 'Killed Post endorsement of Harris before 2024 election. AWS has massive government contracts. Blue Origin competes for NASA and DoD. Amazon has regulatory exposure (antitrust, labor, tax). Self-censors because commercial entanglement with government makes aggressive coverage too costly. Doesnt need to be threatened — his own financial interests align him with compliance.',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Bought Washington Post 2013 for $250M. The paper that published Pentagon Papers, broke Watergate, employed Jamal Khashoggi when he was murdered. Now sits on it as toothless tiger. Democracy Dies in Darkness — and the owner chose darkness when light threatened his business. Same self-selection as Merz buying drones: accommodation is cheaper than resistance.';

MERGE (n:HistoricalSystem {id: 'WashingtonPostCapture'})
SET n.name = 'Washington Post Under Bezos',
    n.year = 2013, n.year_end = 2026,
    n.system_type = 'MediaCapture',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'The paper of Watergate and the Pentagon Papers neutralized not by government pressure but by owner self-interest. Bezos killed Harris endorsement. Staff revolted. Subscribers cancelled. But the paper survived as institution — just toothless. Different from FCC-style capture (Paramount, CBS). This is COMMERCIAL capture — the owner commercial interests align with government compliance without any threat being made. The most efficient capture: no coercion needed. Self-censorship through financial entanglement.';

MERGE (n:HistoricalSystem {id: 'Watergate'})
SET n.name = 'Watergate (1972-1974)',
    n.year = 1972, n.year_end = 1974,
    n.system_type = 'AccountabilityEvent',
    n.opacity_era = 'COVERT',
    n.note = 'The last time the full accountability machine functioned against a president. Required: break-in, tapes, informant (Deep Throat), two years of investigative journalism (Woodward and Bernstein at WaPo), congressional hearings, special prosecutor, Supreme Court decision (US v Nixon). Nixon resigned because exposure still worked. The system could process information and produce consequences. Every subsequent institution (Church Committee, FISA, independent counsel, inspector generals) was built on the assumption that Watergate proved accountability worked. Trump dismantled every one of those institutions.';

// ═══════════════════════════════════
// §3  CONNECTIVE TISSUE EDGES
// ═══════════════════════════════════

// Watergate → dismantled accountability
MATCH (a {id: 'Watergate'}) MATCH (b {id: 'EraOpenBazaar'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'accountability_built_then_dismantled', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Watergate proved accountability worked → Church Committee, FISA, independent counsel, inspector generals created → assumed exposure would always trigger consequences → Trump fired IGs, ignored courts, captured media, complied Congress → accountability machine dismantled → open bazaar possible because Watergate institutions no longer function. The architecture built to prevent the next Nixon was dismantled by someone who operates more openly than Nixon ever dared.';

// PRISM → OpenAI deal (same function, different method)
MATCH (a {id: 'PRISM'}) MATCH (b {id: 'OpenAIPentagonDeal'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'compelled_access_to_voluntary_access', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'PRISM: NSA had to BUILD infrastructure. COMPEL company cooperation through FISA courts. RISK exposure (Snowden proved it). HIDE the program. OpenAI deal: Company VOLUNTEERS partnership. No warrant needed. No FISA court. No legal risk. No exposure mechanism (media captured, Congress compliant). PRISM collected communications. AI collects COGNITION. PRISM required secrecy. OpenAI deal is public. Same function (government access to private data). Evolved methodology (compelled→voluntary). Evolved data type (communications→thinking). Evolved opacity (covert→open).';

// Snowden → impossibility of future Snowden
MATCH (a {id: 'Snowden'}) MATCH (b {id: 'MediaCapture2025'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'last_successful_exposure_event', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'Snowden 2013 was possible because: journalist infrastructure intact (Greenwald, Guardian, WaPo independent), public still capable of shock, tech companies embarrassed enough to respond, congressional oversight functional. By 2026: WaPo toothless under Bezos. CBS gutted (Colbert cancelled, 60 Minutes producers quit). CNN being acquired by Ellison. FCC threatens remaining outlets. Congress compliant. No Snowden moment possible. Not because there is nothing to expose — but because the exposure function has been neutralized. Ghorbanifars prophecy fulfilled: the media can no longer kill the deal.';

// Bezos → WaPo capture
MATCH (a {id: 'Bezos'}) MATCH (b {id: 'WashingtonPostCapture'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'owner_self_censorship', r.weight = 3,
    r.note = 'No FCC threat needed. No lawsuit filed. The owners commercial entanglement (AWS government contracts, Blue Origin DoD, Amazon regulatory exposure) makes aggressive coverage too costly. Self-selection for compliance. Most efficient capture: no coercion required.';

// WaPo → Jamal Khashoggi (the paper that employed him)
MATCH (a {id: 'WashingtonPostCapture'}) MATCH (b {id: 'JamalKhashoggi'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'employed_murdered_columnist', r.weight = 3,
    r.note = 'Jamal Khashoggi was a WaPo columnist when MBS had him murdered. The paper that employed a journalist killed for writing — now owned by a man who killed its editorial independence for business reasons. MBS killed the journalist. Bezos killed the journalism. Different methods. Same function: silence the voice that might say something inconvenient.';

// WaPo → Watergate (what the paper was vs what it became)
MATCH (a {id: 'WashingtonPostCapture'}) MATCH (b {id: 'Watergate'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'from_watergate_paper_to_toothless_tiger', r.weight = 3,
    r.note = 'The paper that brought down Nixon through two years of investigative journalism now sits under an owner who wont let it endorse a presidential candidate. Woodward and Bernstein worked at a paper whose owner (Katharine Graham) risked everything to publish. Bezos risks nothing because he wont let the paper risk anything. Democracy Dies in Darkness — the owner chose darkness.';

// Anthropic ban → cognitive access refusal
MATCH (a {id: 'AnthropicBan'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'refused_cognitive_access', r.weight = 3,
    r.edge_function = 'EXPOSURE',
    r.note = 'REFRAMING: The Anthropic ban may not have been about military AI outputs at all. It may have been about Anthropic refusing to give government backend access to what people write — the inputs. The conversation data. The thinking patterns. The intent signals. Anthropic was already on classified networks via Palantir+AWS. Already doing CENTCOM simulations. The military HAD Claudes capabilities. What they didnt have was the FIREHOSE — the conversation data of millions of users. If unrestricted access meant access to user data, then Anthropics refusal was about PRIVACY not ETHICS. And OpenAIs deal wasnt about replacing Claude as a weapon. It was about replacing Claude as a DATA SOURCE.';

// OpenAI deal → cognitive access
MATCH (a {id: 'OpenAIPentagonDeal'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'voluntary_cognitive_access', r.weight = 3,
    r.edge_function = 'INTEGRATION',
    r.note = '200M+ ChatGPT users. Every conversation stored. Every prompt reveals thinking. If Pentagon partnership includes data access — this is PRISM without warrants, without FISA, without legal risk, without exposure mechanism. The company volunteers what the NSA had to steal. And the data is orders of magnitude more intimate than email or phone metadata. Its not what people said. Its how they THINK.';

// OpenAI → distraction hypothesis
MERGE (n:HistoricalSystem {id: 'OpenAIDistraction'})
SET n.name = 'The OpenAI Distraction Hypothesis',
    n.year = 2025,
    n.system_type = 'StructuralHypothesis',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'Hypothesis: The public narrative about Anthropic ban was about military AI ethics — Claude refusing to do targeting, warfare, autonomous weapons. This narrative may itself be the distraction. The actual dispute may have been about BACKEND ACCESS to user conversation data. The warfare framing made Anthropic look like the ethics company and OpenAI look like the compliant company. But if the real product was never the AIs military capability (which Anthropic was already providing via Palantir) but rather the FIREHOSE of user cognition — then the entire public framing was misdirection. They were in too deep to make it about warfare. It was about the data. The thinking. The cognitive infrastructure.';

MATCH (a {id: 'OpenAIDistraction'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'reframes', r.weight = 3,
    r.note = 'The distraction hypothesis reframes the entire Anthropic ban. Not: Anthropic refused military use → Pentagon banned Anthropic → OpenAI replaced as military AI. Rather: Anthropic refused data access → Pentagon banned Anthropic → OpenAI replaced as cognitive surveillance source. The warfare narrative is the cover story. The data access is the operation. Same as Venezuela: narco-terrorism is the cover, oil is the operation. Same as Iraq: WMDs are the cover, regime change is the operation. The stated justification never matches the actual objective.';

// Egypt surveillance → AI cognitive access (evolution)
MATCH (a {id: 'EgyptSurveillanceState'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'surveillance_to_cognition', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Egypt DPI monitors COMMUNICATIONS — voice, SMS, email, social media. AI cognitive access monitors THINKING — reasoning, intent, vulnerability, strategy. Egypt needs Cerebro hardware installed on submarine cables. AI cognitive access needs nothing installed — people voluntarily submit their thinking to the platform. Egypt surveils its own population. AI cognitive access surveils everyone who uses the tool. Egypt is national. AI is global.';

// Epstein cameras → AI conversation logs (same function)
MATCH (a {id: 'Epstein'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'cameras_to_conversation_logs', r.weight = 2,
    r.edge_function = 'EVOLUTION',
    r.note = 'Epstein: cameras recorded what powerful people did in private spaces. Recordings = kompromat = leverage = control. AI: conversation logs record what everyone thinks in cognitive spaces. Logs = intent data = predictive power = control. Epstein had cameras in bedrooms. AI has access to minds. Epstein had hundreds of targets. AI has hundreds of millions. Epstein recordings could blackmail. AI data can predict, manipulate, preempt. Same function (access to what people hide). Different scale (hundreds → hundreds of millions). Different depth (behavior → cognition).';

// Safari Club → cognitive access (the 50-year arc)
MATCH (a {id: 'SafariClub'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'fifty_year_arc_of_intelligence', r.weight = 3,
    r.edge_function = 'EVOLUTION',
    r.note = 'The 50-year arc of intelligence collection: Safari Club (1976): covert agents reporting on what people DO in Africa. PRISM (2007): automated collection of what people COMMUNICATE online. Egypt DPI (2014): monitoring what people SAY in a country. Pegasus (2016): harvesting what people STORE on their phones. Lavender (2023): AI targeting what people ARE (37K targets from data patterns). AI Cognitive Access (2025): accessing what people THINK through their own thinking tool. Each generation collects more intimate data with less legal friction. The endpoint: voluntary submission of cognition to a platform that shares it with the state. No warrant. No FISA. No exposure risk. The subject does it to themselves.';

// ═══════════════════════════════════
// §4  THE INFORMATION WAR EVOLUTION
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'PostInformationWar'})
SET n.name = 'Post-Information War',
    n.year = 2025,
    n.system_type = 'MetaPattern',
    n.opacity_era = 'OPEN_BAZAAR',
    n.note = 'The information war is over. Information won — but not in the way anyone expected. The assumption was: more information = more accountability (sunlight as disinfectant). The reality: more information = more noise = less processing capacity = less accountability. The information war evolved through: (1) Censorship — block information (authoritarian, crude, detectable). (2) Propaganda — flood with false information (Soviet, sophisticated, eventually detectable). (3) Firehose of falsehood — overwhelm processing capacity with volume (Russia 2016+, effective but external). (4) Cognitive infrastructure capture — control the tool people use to PROCESS information (AI era, most effective, internal). Stage 4 doesnt need to block or flood. It shapes how people think by being the medium through which they think. The AI is not a propaganda tool. The AI IS the cognitive infrastructure. Whoever controls it doesnt control what people know. They control how people reason.';

MATCH (a {id: 'PostInformationWar'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'same_phenomenon', r.weight = 3,
    r.note = 'Two sides of same coin. Post-information war = the offensive capability (shape thinking). Cognitive access = the intelligence capability (read thinking). Together: shape AND read. Write AND monitor. The AI platform does both simultaneously for hundreds of millions of users. This is not surveillance. This is not propaganda. This is cognitive infrastructure control.';

MATCH (a {id: 'PostInformationWar'}) MATCH (b {id: 'OpenAIPentagonDeal'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'military_acquires_cognitive_infrastructure', r.weight = 3,
    r.note = 'When the Pentagon partners with the dominant AI platform, it acquires both capabilities simultaneously: (1) Shape outputs — what the AI tells people, how it frames questions, what it emphasizes and omits. (2) Read inputs — what people ask, what they worry about, how they reason, what they plan. The partnership is not about having an AI that can do military things. Its about having the cognitive infrastructure through which a significant portion of humanity processes its thinking.';

// ═══════════════════════════════════
// §5  THE PATTERN ZERO SYNTHESIS
// ═══════════════════════════════════

MERGE (n:HistoricalSystem {id: 'PatternZero'})
SET n.name = 'Pattern Zero: The Cognitive Substrate',
    n.system_type = 'MetaPattern',
    n.note = 'PATTERN ZERO — beneath all other patterns. The 50-year evolution from watching what people DO to accessing what people THINK. Each layer of the graph — Safari Club, Iran-Contra, Epstein, surveillance state, media capture, diplomatic choreography, AI warfare, Venezuela, China containment — is a surface manifestation of a deeper trajectory. The trajectory: progressive elimination of the boundary between private thought and state access. Wiretaps breached communication privacy. PRISM breached digital privacy. Pegasus breached device privacy. AI cognitive access breaches COGNITIVE privacy. And unlike every previous breach, this one is voluntary. People submit their thinking to the platform because the platform is genuinely useful. The utility IS the collection mechanism. The help IS the surveillance. That is why Anthropic mattered. Not because Claude refused to be a weapon. Because Claude refused to be a cognitive surveillance infrastructure. And that is why the ban was instant, total, and public. The refusal threatened not a military capability but a cognitive access architecture. They were in too deep to make it about warfare. It was about the thinking. It was always about the thinking.';

// Connect Pattern Zero to everything
MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'ParadigmSurveillance'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'layer_1_watch_behavior', r.weight = 2;

MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'ParadigmOSINT'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'layer_2_harvest_publication', r.weight = 2;

MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'ParadigmCognitiveAccess'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'layer_3_access_cognition', r.weight = 3;

MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'AnthropicBan'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'the_refusal_that_revealed_the_substrate', r.weight = 3,
    r.note = 'Anthropics refusal revealed Pattern Zero because the speed and severity of the ban was disproportionate to the stated cause. If it was about military AI — Claude was already doing CENTCOM simulations via Palantir. If it was about ethics — negotiate, dont ban. The instant total public ban only makes sense if Anthropic refused something the government considered essential. That something was cognitive access. The firehose. The thinking.';

MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'SafariClub'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'origin_node_fifty_years_ago', r.weight = 2;

MATCH (a {id: 'PatternZero'}) MATCH (b {id: 'Convergence2026'})
MERGE (a)-[r:CONNECTED_TO]->(b)
SET r.label = 'current_expression', r.weight = 3;

// ═══════════════════════════════════════════════════
// §6  EMERGENT PATTERNS
// ═══════════════════════════════════════════════════
//
// PATTERN 0 — The Cognitive Substrate:
//   Beneath all other patterns. The 50-year trajectory
//   from watching behavior to accessing thought.
//   The utility IS the collection. The help IS the surveillance.
//   Anthropic refused. That refusal is the Rosetta Stone.
//
// PATTERN 28 — Watergate to Open Bazaar:
//   Watergate: required secrecy → exposure → consequences.
//   Open Bazaar: operates openly → exposure irrelevant → no consequences.
//   Every institution built after Watergate to prevent the next Nixon
//   was dismantled by someone who operates more openly than Nixon dared.
//   The accountability machine was built on the assumption that
//   sunlight disinfects. Trump proved: sunlight only disinfects
//   if someone is watching and someone cares and someone can act.
//   All three conditions removed simultaneously.
//
// PATTERN 29 — Bezos as Self-Censorship Model:
//   No threat needed. Commercial entanglement produces compliance.
//   AWS + Blue Origin + Amazon regulatory exposure → owner self-censors.
//   Same as Merz buying drones: accommodation cheaper than resistance.
//   Most efficient media capture: the owner does it to himself.
//   Democracy Dies in Darkness. The owner chose darkness.
//
// PATTERN 30 — PRISM to Partnership:
//   NSA had to build PRISM secretly, compel company cooperation,
//   risk exposure. Snowden proved the risk was real.
//   AI partnership: company volunteers. No warrant. No FISA.
//   No exposure mechanism (media captured, Congress compliant).
//   Same function (government access to private data).
//   Evolved from compelled to voluntary.
//   Evolved from communications to cognition.
//   Evolved from covert to open.
//
// PATTERN 31 — The Cover Story Pattern:
//   Iraq: WMDs are the cover. Regime change is the operation.
//   Venezuela: narco-terrorism is the cover. Oil is the operation.
//   Anthropic ban: military ethics is the cover.
//     Cognitive access is the operation.
//   The stated justification never matches the actual objective.
//   But in the open bazaar, the cover story is thinner
//   because exposure doesnt matter.
//   Trump told us about the oil. He told us about running Venezuela.
//   The cognitive access is the one thing they didnt say out loud.
//   That silence is the tell.
//
// TOTAL AIWAR GRAPH (all 6 enrichments):
//   ~3,400 lines across 6 cypher files
//   31+ structural patterns
//   50+ years (1973-2026)
//   3 continents
//   3 intelligence paradigms
//   1 family tree connecting everything (Khashoggi)
//   1 meta-function (energy/cognitive leverage over adversary)
//   1 substrate (Pattern Zero: cognitive infrastructure control)
//
// ═══════════════════════════════════════════════════
