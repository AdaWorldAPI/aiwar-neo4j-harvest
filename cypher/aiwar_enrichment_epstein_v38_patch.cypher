// ═══════════════════════════════════════════════════════════════
// AIWAR v3.8 PATCH — 2026-03-22
// European Enterprise Security Architecture: Access Surface Analysis
// Factual mapping of installed security vendors, their access levels,
// founding backgrounds, and data flow paths in European cloud tenants
// Sources: Vendor documentation, Microsoft Entra ID docs, Guardian,
//          XM Cyber PR, Arctic Wolf architecture docs, public records
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §68 STAKEHOLDER NODES
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'STIHL'}) SET s.name = 'STIHL', s.type = 'manufacturing', s.note = 'German global market leader. Uses XM Cyber for hybrid cloud security across AWS, Azure, and on-premises environments.';
MERGE (s:Stakeholder {id: 'ArcticWolf'}) SET s.name = 'Arctic Wolf Networks', s.type = 'MDR provider', s.note = 'Managed Detection and Response. Collects continuous telemetry from customer cloud tenants, networks, and endpoints via API integrations and agents. Data processed in North American infrastructure.';
MERGE (s:Stakeholder {id: 'EuroGagOrderScope'}) SET s.name = 'European Legal Data Requests', s.type = 'legal process', s.note = 'Court orders with non-disclosure provisions under GDPR, German StPO, or EU directives. Addressed to cloud providers and data controllers. Do not typically address third-party security vendors with tenant-level API access.';

// ════════════════════════════════════════════
// §69 EDGES — STIHL + GOOGLE-SCHWARZ LOOP
// ════════════════════════════════════════════

MATCH (a {id:'XMCyber'}) MATCH (b {id:'STIHL'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='continuous attack simulation on hybrid cloud', r.weight=5, r.source='XM Cyber press release', r.detail='Maps attack paths across STIHL AWS, Azure, and on-prem infrastructure.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0, r.source_url='https://xmcyber.com/de/xm-cyber-und-stihl/';

MATCH (a {id:'SchwarzGroup'}) MATCH (b {id:'Google'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='strategic partnership for sovereign cloud in Europe', r.weight=5, r.source='XM Cyber/Schwarz PR', r.detail='Joint offering: Google Workspace with Schwarz-managed client-side encryption. Marketed as European digital sovereignty solution.', r.edge_function='LEGITIMIZER', r.flow_type='MONEY,INFLUENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// ════════════════════════════════════════════
// §70 EDGES — ARCTIC WOLF MDR ACCESS
// ════════════════════════════════════════════

MATCH (a {id:'ArcticWolf'}) MATCH (b {id:'AppRegistration'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='deploys via API and service principals', r.weight=5, r.detail='MDR operation requires privileged API access to Entra ID, M365, AWS CloudTrail via app registrations. Reads security logs, sign-in data, endpoint telemetry.', r.edge_function='DEAL_FLOW', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=1.0;
MATCH (a {id:'ArcticWolf'}) MATCH (b {id:'EuroCloudTenants'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='continuous telemetry collection', r.weight=5, r.detail='Centralizes identity, network, and security metadata from European enterprise tenants into own North American cloud infrastructure for analysis.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='LOCKED', r.reliability_score=0.95;
MATCH (a {id:'ArcticWolf'}) MATCH (b {id:'EuroEnterpriseCustomers'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='MDR provider / security data chokepoint', r.weight=5, r.edge_function='GATEKEEPER', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// ════════════════════════════════════════════
// §71 EDGES — ACCESS SURFACE UNDER LEGAL PROCESS
// ════════════════════════════════════════════

// What a European court order addresses
MATCH (a {id:'EuroGagOrderScope'}) MATCH (b {id:'EuroCloudTenants'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='addresses cloud provider as data controller', r.weight=5, r.detail='European court orders with non-disclosure provisions are directed at cloud providers (Microsoft, Google, AWS) as data controllers or processors under GDPR.', r.reliability_score=1.0;

// What it does not address — factual observation
MATCH (a {id:'EuroGagOrderScope'}) MATCH (b {id:'XMCyber'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='not typically addressed as party', r.weight=3, r.detail='Security vendors with tenant-level API access (attack path mapping, vulnerability scanning) are generally not named in data preservation or non-disclosure orders. They retain their existing access and telemetry during legal proceedings.', r.reliability_score=0.95;
MATCH (a {id:'EuroGagOrderScope'}) MATCH (b {id:'ArcticWolf'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='not typically addressed as party', r.weight=3, r.detail='MDR providers with continuous log collection are generally not named in non-disclosure orders. Their telemetry stream continues unchanged during legal proceedings.', r.reliability_score=0.95;
MATCH (a {id:'EuroGagOrderScope'}) MATCH (b {id:'CheckPoint'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='not typically addressed as party', r.weight=3, r.detail='Network security appliances performing deep packet inspection are not addressed by court orders directed at cloud providers.', r.reliability_score=0.95;
MATCH (a {id:'EuroGagOrderScope'}) MATCH (b {id:'Wiz'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='not typically addressed as party', r.weight=3, r.detail='Cloud posture management tools with cross-tenant scanning access operate outside the scope of typical data preservation orders.', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §72 EMERGENT PATTERNS (v3.8)
// ════════════════════════════════════════════

// PATTERN AD: Installed Access Surface in a Typical European Enterprise Tenant
//
//   The following is a factual inventory of what security vendors
//   with documented Israeli intelligence founding backgrounds
//   can access in a standard European enterprise cloud environment,
//   based on their published product documentation:
//
//   ┌─────────────────┬──────────────────────────────────────────────┐
//   │ Vendor          │ Documented Access (per vendor documentation) │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ XM Cyber        │ Complete attack path topology: every         │
//   │ (Mossad dir.)   │ privilege escalation path, lateral movement  │
//   │                 │ route, and misconfiguration in hybrid cloud  │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ Check Point     │ Deep packet inspection: content of network   │
//   │ (Unit 8200)     │ traffic passing through firewall appliances  │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ Palo Alto       │ Next-gen firewall: application-layer traffic │
//   │ (Unit 8200)     │ analysis on network perimeter                │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ Wiz             │ Agentless cloud posture: full architecture   │
//   │ (Unit 8200)     │ of AWS/Azure/GCP, all misconfigurations      │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ Cybereason      │ EDR: process-level visibility on every       │
//   │ (Unit 8200)     │ managed endpoint                             │
//   ├─────────────────┼──────────────────────────────────────────────┤
//   │ Cellebrite      │ Mobile forensics: full device extraction     │
//   │ (8200-adjacent) │ capability on seized devices                 │
//   └─────────────────┴──────────────────────────────────────────────┘
//
//   Each vendor's access level is documented in their own product
//   specifications. Each vendor's founding background is documented
//   in their own corporate history. This table simply places both
//   facts side by side.

// PATTERN AE: Legal Process Scope vs Installed Access Scope
//
//   A European court order with non-disclosure provision:
//   - Is directed at the cloud provider (Microsoft, Google, AWS)
//   - Requires the provider not to inform the data subject
//   - May include data preservation requirements
//
//   The order does not typically:
//   - Address third-party security vendors with API access to the tenant
//   - Restrict ongoing telemetry collection by MDR/SOC providers
//   - Limit attack simulation by vulnerability management tools
//   - Affect deep packet inspection by network security appliances
//
//   During the period between order issuance and execution,
//   the installed security vendors retain their existing access
//   and continue their normal data collection operations.
//
//   This is not a vulnerability in the legal process.
//   It is a description of its current scope.

// PATTERN AF: The Google-Schwarz Sovereignty Architecture
//
//   Google: operates Project Nimbus ($1.2B sovereign cloud for IDF)
//   Schwarz Group: acquired XM Cyber (founded by Mossad director)
//   Google + Schwarz: joint partnership for "sovereign cloud" in Europe
//
//   The two companies that jointly offer European digital sovereignty
//   are the same two companies that respectively:
//   (a) operate the Israeli military's sovereign cloud, and
//   (b) own a company founded by the former director of
//       Israeli foreign intelligence.
//
//   These are facts of public corporate record.

// ════════════════════════════════════════════
// §73 STATISTICS (v3.8 cumulative)
// ════════════════════════════════════════════
// Person nodes: 52
// Stakeholder nodes: 81 (+3: STIHL, ArcticWolf, EuroGagOrderScope)
// Total edges: ~255
// Patterns: A-AF = 32 emergent patterns
//
// COMPLETE REPOSITORY (v3.0 → v3.8):
// 9 cypher files on GitHub
// Spans: 1981 → March 22, 2026
// 52 persons, 81 organizations, ~255 edges, 32 patterns
