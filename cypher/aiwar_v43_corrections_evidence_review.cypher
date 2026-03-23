// ═══════════════════════════════════════════════════════════════
// AIWAR v4.3 CORRECTIONS — 2026-03-22
// Based on independent evidence review (ChatGPT Research)
// Introduces evidence_type property, corrects identified inaccuracies
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §102 CORRECTIONS — IDENTIFIED INACCURACIES
// ════════════════════════════════════════════

// FIX 1: Maven contract ceiling (not additive)
// Was: "$480M + $750M = $1.23B"
// Correct: $480M contract 2024, ceiling raised to $1.3B in May 2025
MATCH (a {id:'Palantir'})-[r:CONNECTED_TO]->(b {id:'Maven'})
SET r.detail = 'Contract of up to $480M awarded 2024. Ceiling raised to $1.3B in May 2025. Used in thousands of strikes against Iran.', r.evidence_type = 'FACT', r.source = 'Reuters Mar 2026';

// FIX 2: Rubio — reframe from "admitted" to exact quote
MATCH (a {id:'Rubio'})
SET a.note = 'Mar 2026 quote: "They basically told us they are going to do this, and then it became clear that what they did was going to lead to a response... So we decided to act as well." Foreknowledge of Israeli action, not explicit admission of compulsion.';

// FIX 3: Epstein→Valar is LP stake, not "financed Palantir"
// The edge already exists — add evidence_type to clarify
MATCH (a {id:'Epstein'})-[r:CONNECTED_TO]->(b {id:'ValarVentures'})
SET r.evidence_type = 'FACT', r.detail = 'Epstein invested $40M as Limited Partner in Thiel co-founded Valar Ventures (2015-2016). LP stake in Valar is not equivalent to equity in Palantir. No direct Epstein→Palantir money flow documented.';

// FIX 4: Mandelson→Palantir lobbying — fact vs disputed
MATCH (a {id:'GlobalCounsel'})-[r:CONNECTED_TO]->(b {id:'Palantir'})
SET r.evidence_type = 'FACT', r.detail = 'Global Counsel (Mandelson firm) represented Palantir as client. UK defense secretary stated Mandelson played no role in facilitating specific £240.6M contract. Representation = fact. Facilitation = disputed.';

// FIX 5: UK £1.5B — investment framing, not procurement contract
MATCH ()-[r]-() WHERE r.detail CONTAINS '1.5B' AND r.detail CONTAINS 'UK'
SET r.detail = replace(r.detail, '£1.5B strategic partnership', '£1.5B investment/partnership framing (government press release describes investment, not single procurement contract)');

// FIX 6: H.Res.537 was June 2025, tabled 344-79 (earlier than claimed)
MATCH (a {id:'USCongress'})
SET a.note = 'War Powers debate. H.Res.537 (Green, Jun 2025) tabled 344-79. H.Con.Res.38 rejected 219-212 (Mar 5 2026). Senate blocked 53-47 (Mar 4 2026). $200B war funding request pending.';

// ════════════════════════════════════════════
// §103 EVIDENCE_TYPE SCHEMA INTRODUCTION
// ════════════════════════════════════════════

// NOTE: The following SET operations add evidence_type to key edges.
// Full retrofit across all ~340 edges would require a separate script.
// This patch covers the most analytically sensitive edges.

// DOJ Audio — FACT (recording exists, publicly available)
MATCH (a {id:'Epstein'})-[r:PERSON_LINK]->(b {id:'Barak'})
WHERE r.detail CONTAINS 'Palantir'
SET r.evidence_type = 'FACT', r.note_on_evidence = 'DOJ released audio. Epstein discusses Thiel and spells Palantir. Speculates about board seat for Barak. No evidence board seat occurred (per Wired).';

// Behavioral science fields — INFERENCE
// These cannot be retroactively SET on all nodes without full traversal,
// but the schema note documents the classification:
//
// All properties: receptor, mcclelland, mcclelland_need, rubicon,
//   rubicon_event, sublimation, qualia_mask, unsublimated
// → evidence_type = 'INFERENCE' (analytical assessment, not sourced fact)
//
// All properties: edge_function, leverage, motive, phase,
//   crossover_event, conversion_agent
// → evidence_type = 'INFERENCE' where not directly documented
//
// Pattern M (war as distraction) → evidence_type = 'HYPOTHESIS'
// What IS documented: simultaneity of events (FACT)
// What is NOT documented: intentional timing (HYPOTHESIS)

// Key kompromat edges — classified
MATCH (a {id:'Trump'})-[r:PERSON_LINK]->(b {id:'Epstein'})
SET r.evidence_type = 'FACT', r.note_on_evidence = 'Flight logs (8+ flights, Maxwell on 4+) = FACT. Denial proven false = FACT. Implication of kompromat = INFERENCE.';

MATCH (a {id:'Andrew'})-[r:PERSON_LINK]->(b {id:'Epstein'})
SET r.evidence_type = 'FACT', r.note_on_evidence = 'Arrest Feb 19 2026 = FACT. Shared trade briefs = per DOJ files = FACT. Misconduct charge = FACT. Intelligence asset framing = INFERENCE.';

MATCH (a {id:'Feinberg'})-[r:PERSON_LINK]->(b {id:'Epstein'})
SET r.evidence_type = 'FACT', r.note_on_evidence = 'POGO: named 20x in DOJ files, Cerberus 360x = FACT. Balint questioned Bondi = FACT. Nature of relationship = NOT YET CHARACTERIZED in public record.';

// Israel→Iran relationship
MATCH (a {id:'Netanyahu'})-[r:CONNECTED_TO]->(b {id:'IranWar2026'})
SET r.evidence_type = 'INFERENCE', r.note_on_evidence = 'Rubio quotes support foreknowledge and sequential logic. "Israel forced US" is analytical interpretation of the quote, not the quote itself.';

// Distraction pattern
// Cannot SET on a comment pattern, but document the classification:
// Pattern M text should be read with: evidence_type = 'HYPOTHESIS'
// Supporting facts (simultaneity, timing, polls) = FACT
// Causal claim (intentional distraction) = HYPOTHESIS

// ════════════════════════════════════════════
// §104 POLYMARKET UPDATE
// ════════════════════════════════════════════

// ChatGPT Research found ~56% on Mar 22, not 11%
MATCH (a {id:'USCongress'})
WHERE a.note CONTAINS 'Polymarket'
SET a.note = 'War Powers debate. H.Res.537 (Green, Jun 2025) tabled 344-79. H.Con.Res.38 rejected 219-212 (Mar 5 2026). Senate 53-47 (Mar 4 2026). Polymarket Mar 22 2026: ~56% impeachment before term ends. Markets volatile — store as time-series, not static property.';

// ════════════════════════════════════════════
// §105 METHODOLOGY NOTE
// ════════════════════════════════════════════

// This graph contains three types of information:
//
// FACT: Documented in SEC filings, court records, official statements,
//   named sources, government press releases, parliamentary records.
//   Examples: Epstein $40M into Valar, Maven Program of Record,
//   flight logs, arrest dates, contract values.
//
// INFERENCE: Logical deduction from multiple facts, analytical
//   assessment not directly stated in any single source.
//   Examples: behavioral science schema (McClelland, Rubicon),
//   edge_function classifications, node_function assignments,
//   "Israel forced US" interpretation of Rubio quote.
//
// HYPOTHESIS: Speculative connection based on timing, pattern,
//   or structural analysis. Not demonstrated from evidence alone.
//   Examples: "war as distraction from Epstein exposure,"
//   "intentional timing of Andrew arrest and Iran strikes,"
//   causal claims about intelligence network directing
//   commercial outcomes.
//
// The strongest use of this graph is to present FACTS,
// note where INFERENCES are drawn, and clearly label
// HYPOTHESES as such. The graph does not assert that
// inferences or hypotheses are proven — it maps the
// documented structure and lets the reader evaluate.

// §106 STATISTICS (v4.3 — FINAL)
// Person nodes: 59
// Stakeholder nodes: 120
// Total edges: ~340
// Patterns: A-AP = 42 emergent patterns
// Evidence corrections: 6 factual fixes
// New property: evidence_type (FACT|INFERENCE|HYPOTHESIS)
// Files on GitHub: 15 (v3 base + 12 patches + queries + corrections)
