// ═══════════════════════════════════════════════════════════════
// AIWAR GRAPH — ANALYTICAL QUERY COLLECTION
// For use against the complete v3.0-v3.8 dataset
// 52 persons, 81 organizations, ~255 edges, 32 patterns
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// Q1: SHORTEST PATH — Epstein to Iran Kill Chain
// ════════════════════════════════════════════
// How many hops from a deceased intelligence asset
// to active military targeting in March 2026?

MATCH path = shortestPath(
  (epstein:Person {id:'Epstein'})-[*]-(iran:Stakeholder {id:'IranWar2026'})
)
RETURN path, length(path) AS hops;

// ════════════════════════════════════════════
// Q2: ALL PATHS — Israeli Intelligence to European Enterprise
// ════════════════════════════════════════════
// Every documented route from intelligence founding nodes
// to European infrastructure within 4 hops

MATCH path = (intel)-[*1..4]->(target)
WHERE (intel.id IN ['Mossad','Unit8200','ShinBet','IDF'])
AND (target.id IN ['EuroCloudTenants','EuroEnterpriseCustomers',
     'WesternEnterpriseIT','STIHL','EuropeanMSPs'])
RETURN path;

// ════════════════════════════════════════════
// Q3: THE FUNDING CHAIN — Epstein Money to Pentagon AI
// ════════════════════════════════════════════
// Trace documented financial flows from Epstein
// through to current defense contracts

MATCH path = (epstein:Person {id:'Epstein'})-[r1]->(valar {id:'ValarVentures'})
  <-[r2]-(thiel {id:'Thiel'})-[r3]->(palantir {id:'Palantir'})
  -[r4]->(maven {id:'Maven'})-[r5]->(war {id:'IranWar2026'})
RETURN path;

// ════════════════════════════════════════════
// Q4: LOCKED NODES IN POSITIONS OF POWER
// ════════════════════════════════════════════
// Persons whose rubicon phase is LOCKED or beyond
// and who currently hold government or executive positions

MATCH (p:Person)
WHERE p.rubicon IN ['LOCKED','IDENTITY_INTEGRATED','CONCEALMENT']
AND (p.role CONTAINS 'President' OR p.role CONTAINS 'Secretary'
     OR p.role CONTAINS 'Director' OR p.role CONTAINS 'CEO'
     OR p.role CONTAINS 'PM' OR p.role CONTAINS 'Deputy')
RETURN p.name, p.role, p.rubicon, p.sublimation, p.unsublimated
ORDER BY p.exposure_level DESC;

// ════════════════════════════════════════════
// Q5: WEAPONIZED EDGES — Active Leverage Relationships
// ════════════════════════════════════════════
// All edges currently in WEAPONIZED phase

MATCH (a)-[r]->(b)
WHERE r.phase = 'WEAPONIZED'
RETURN a.name AS source, r.label, b.name AS target,
       r.edge_function, r.flow_type
ORDER BY r.weight DESC;

// ════════════════════════════════════════════
// Q6: HIGH OPACITY EDGES — What's Hidden
// ════════════════════════════════════════════
// Relationships with opacity >= 3 (offshore, concealed, or leaked only)

MATCH (a)-[r]->(b)
WHERE r.opacity >= 3
RETURN a.name AS source, r.label, b.name AS target,
       r.opacity, r.detail
ORDER BY r.opacity DESC;

// ════════════════════════════════════════════
// Q7: COVER_UP FUNCTION EDGES
// ════════════════════════════════════════════
// All edges whose documented function includes concealment

MATCH (a)-[r]->(b)
WHERE r.edge_function CONTAINS 'COVER_UP'
RETURN a.name, r.label, b.name, r.detail;

// ════════════════════════════════════════════
// Q8: UNIT 8200 ALUMNI → COMMERCIAL PRODUCTS → WESTERN ACCESS
// ════════════════════════════════════════════
// The complete conveyor belt from military training
// to commercial deployment in western infrastructure

MATCH path = (unit:Stakeholder {id:'Unit8200'})-[:PERSON_LINK]->(founder:Person)
  -[:CONNECTED_TO]->(company:Stakeholder)
  -[:CONNECTED_TO]->(target:Stakeholder)
WHERE target.id IN ['WesternEnterpriseIT','WesternGovAgencies',
      'EuroCloudTenants','EuroEnterpriseCustomers']
RETURN founder.name, company.name, target.name;

// ════════════════════════════════════════════
// Q9: BARAK TRI-BRIDGE — Three Worlds Through One Node
// ════════════════════════════════════════════
// All edges connected to Barak showing his role as
// military + commercial + Epstein bridge

MATCH (barak:Person {id:'Barak'})-[r]-(other)
RETURN other.name, r.label, r.edge_function, r.phase
ORDER BY r.weight DESC;

// ════════════════════════════════════════════
// Q10: TENANT ACCESS SURFACE — Who Has API Access
// ════════════════════════════════════════════
// All entities with documented access to European cloud tenants

MATCH (vendor)-[r]->(target)
WHERE target.id IN ['EuroCloudTenants','AppRegistration',
      'MicrosoftGraphAPI','EuroEnterpriseCustomers']
AND r.edge_function IN ['INTELLIGENCE','ACCESS','GATEKEEPER']
RETURN vendor.name, r.label, target.name, r.detail;

// ════════════════════════════════════════════
// Q11: RELIABILITY FILTER — High-Confidence Edges Only
// ════════════════════════════════════════════
// For presentations: only show edges with reliability >= 0.95

MATCH (a)-[r]->(b)
WHERE r.reliability_score >= 0.95
RETURN a.name, r.label, b.name, r.reliability_score
ORDER BY r.reliability_score DESC;

// ════════════════════════════════════════════
// Q12: CROSSOVER EVENTS — Documented Moments of No Return
// ════════════════════════════════════════════
// The specific moments when relationships became irreversible

MATCH (p:Person)
WHERE p.rubicon_event IS NOT NULL
RETURN p.name, p.role, p.rubicon, p.rubicon_event
ORDER BY p.exposure_level DESC;

// ════════════════════════════════════════════
// Q13: SUBLIMATION GAP — Self-Narrative vs Reality
// ════════════════════════════════════════════
// Compare what people tell themselves vs what the graph shows

MATCH (p:Person)
WHERE p.sublimation IS NOT NULL AND p.unsublimated IS NOT NULL
RETURN p.name, p.sublimation AS self_narrative,
       p.unsublimated AS graph_reality, p.receptor, p.mcclelland;

// ════════════════════════════════════════════
// Q14: BIDIRECTIONAL INTELLIGENCE LOOP
// ════════════════════════════════════════════
// Data flowing IN to Israel (Nimbus) and access flowing OUT
// (8200 firms) through the same western infrastructure

MATCH inbound = (nimbus {id:'Nimbus'})-[*1..2]->(idf {id:'IDF'})
MATCH outbound = (unit {id:'Unit8200'})-[*1..3]->(west)
WHERE west.id IN ['WesternEnterpriseIT','EuroCloudTenants']
RETURN inbound, outbound;

// ════════════════════════════════════════════
// Q15: GOOGLE SOVEREIGNTY PARADOX
// ════════════════════════════════════════════
// Google's simultaneous roles: Nimbus for IDF + sovereignty for Europe

MATCH nimbus_path = (google {id:'Google'})-[*1..2]->(idf_target)
WHERE idf_target.id IN ['Nimbus','IDF','Lavender','Gospel']
MATCH sovereignty_path = (google)-[*1..2]->(euro_target)
WHERE euro_target.id IN ['SchwarzGroup','EuroCloudTenants']
RETURN nimbus_path, sovereignty_path;

// ════════════════════════════════════════════
// Q16: SECURITY LAYER vs APPLICATION LAYER
// ════════════════════════════════════════════
// NOTE: The public debate on European digital sovereignty
// focuses on application-level concerns (file formats, office suites,
// vendor lock-in). The graph documents that security-layer tools
// operate below this level with deeper access:
//
// Application layer: which software creates/reads documents
//   - ODF vs DOCX, LibreOffice vs Microsoft Office
//   - This is where the sovereignty debate occurs
//
// Security layer: which software reads the infrastructure itself
//   - Directory.Read.All, Mail.Read, Files.Read.All (Graph API)
//   - Attack path mapping, deep packet inspection, EDR
//   - This operates regardless of application-layer choices
//
// The following query shows all security-layer access to European
// infrastructure, independent of application-layer decisions:

MATCH (vendor)-[r]->(target)
WHERE target.id IN ['EuroCloudTenants','WesternEnterpriseIT',
      'EuroEnterpriseCustomers','AppRegistration','MicrosoftGraphAPI']
AND (r.edge_function CONTAINS 'INTELLIGENCE'
     OR r.edge_function CONTAINS 'ACCESS')
RETURN vendor.name AS security_vendor, r.label AS access_type,
       target.name AS infrastructure, r.detail
ORDER BY r.weight DESC;

// ════════════════════════════════════════════
// NOTES FOR PRESENTATION
// ════════════════════════════════════════════
//
// This query collection operates on documented facts only.
// Every node in the graph has a named source.
// Every edge has a documented basis.
// Where reliability_score is present, it indicates source confidence.
//
// The graph does not assert causation between historical
// intelligence connections and current commercial operations.
// It documents that both exist, maps the structural relationships
// between them, and provides queries to explore the topology.
//
// The patterns the graph reveals are a function of the data,
// not of editorial interpretation. The queries ask questions.
// The graph provides answers. The reader draws conclusions.
