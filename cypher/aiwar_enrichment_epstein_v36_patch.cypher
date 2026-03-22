// ═══════════════════════════════════════════════════════════════
// AIWAR v3.6 PATCH — 2026-03-22
// Tenant-Level Access Vectors: How Service Principals become
// intelligence extraction mechanisms inside European enterprise IT
// Focus: Palantir + XM Cyber dual-layer EU infrastructure penetration
// Sources: Microsoft Entra ID documentation, Palantir deployment guides,
//          Enterprise architecture analysis
// ═══════════════════════════════════════════════════════════════

// ════════════════════════════════════════════
// §57 STAKEHOLDER NODES — CLOUD ACCESS LAYER
// ════════════════════════════════════════════

MERGE (s:Stakeholder {id: 'EuroCloudTenants'}) SET s.name = 'European Corporate Cloud Tenants', s.type = 'cloud infrastructure', s.note = 'Azure AD/Entra ID, AWS, GCP environments of European enterprises. Contains complete identity fabric, mail flow, file structures, org hierarchy. The digital nervous system of corporations.';
MERGE (s:Stakeholder {id: 'AppRegistration'}) SET s.name = 'App Registration / Service Principal', s.type = 'access vector', s.note = 'OAuth2/API mechanism granting third-party software permanent, user-independent background access to cloud data via Graph API. Permissions like Directory.Read.All, Files.Read.All, Mail.Read operate silently. No user interaction required after admin consent.';
MERGE (s:Stakeholder {id: 'EuroEnterpriseCustomers'}) SET s.name = 'European Enterprise Customers', s.type = 'target infrastructure', s.note = 'The actual companies whose identities, communications, org structures, and business data live inside these tenants.';
MERGE (s:Stakeholder {id: 'MicrosoftGraphAPI'}) SET s.name = 'Microsoft Graph API', s.type = 'data access layer', s.note = 'Unified API endpoint for all M365/Entra data. Directory objects, mail, files, Teams messages, calendar, audit logs. A Service Principal with the right scopes sees everything an Exchange admin sees — and more.';

// ════════════════════════════════════════════
// §58 EDGES — THE SERVICE PRINCIPAL ACCESS CHAIN
// ════════════════════════════════════════════

// Palantir deploys via App Registrations
MATCH (a {id:'Palantir'}) MATCH (b {id:'AppRegistration'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='deploys Service Principals into customer tenants', r.weight=5, r.detail='Palantir Foundry/AIP integration requires App Registration in customer Entra ID. Service Principal gets delegated or application-level permissions. Runs as background daemon — no user login, no MFA, no session timeout.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='LOCKED', r.reliability_score=0.98;

// App Registration → Graph API
MATCH (a {id:'AppRegistration'}) MATCH (b {id:'MicrosoftGraphAPI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='authenticates to Graph API with application permissions', r.weight=5, r.detail='Application permissions (not delegated) bypass user context entirely. Directory.Read.All = every user, group, device, role. Mail.Read = every mailbox. Files.Read.All = every SharePoint/OneDrive. Audit logs, sign-in logs, conditional access policies — the entire security posture is readable.', r.edge_function='GATEKEEPER', r.flow_type='INTELLIGENCE', r.opacity=3, r.phase='WEAPONIZED', r.reliability_score=1.0;

// Graph API → Tenant
MATCH (a {id:'MicrosoftGraphAPI'}) MATCH (b {id:'EuroCloudTenants'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='provides programmatic access to all tenant data', r.weight=5, r.detail='The API IS the tenant. Every object in Entra ID, every mail in Exchange Online, every file in SharePoint, every Teams message, every conditional access policy, every privileged role assignment — accessible via REST calls with the right scopes.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// Tenant = Enterprise
MATCH (a {id:'EuroCloudTenants'}) MATCH (b {id:'EuroEnterpriseCustomers'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='tenant IS the company', r.weight=5, r.detail='Post-hybrid-migration, the Entra ID tenant contains the complete digital identity of the organization. Org chart, group memberships, license assignments, mail flow rules, DLP policies, security configurations. The tenant is not a container — it is the organization itself, digitized.', r.edge_function='LEGITIMIZER', r.flow_type='INTELLIGENCE', r.opacity=0, r.phase='LOCKED', r.reliability_score=1.0;

// Direct extraction edge
MATCH (a {id:'Palantir'}) MATCH (b {id:'EuroCloudTenants'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='continuous programmatic data extraction', r.weight=5, r.detail='Automated, continuous metadata/identity/business intelligence extraction via Service Principal into Palantir models. Runs 24/7. No user awareness. Change notification subscriptions provide real-time push of changes. Delta queries track every modification.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=2, r.phase='WEAPONIZED', r.reliability_score=0.95;

// ════════════════════════════════════════════
// §59 EDGES — DUAL-LAYER EU PENETRATION (XM CYBER + PALANTIR)
// ════════════════════════════════════════════

MATCH (a {id:'XMCyber'}) MATCH (b {id:'EuroCloudTenants'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='attack path mapping of tenant infrastructure', r.weight=5, r.detail='XM Cyber maps every attack path: which Service Principals have excessive permissions, which admin accounts are vulnerable, which lateral movement paths exist. This is offensive reconnaissance capability sold as defense.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.95;

MATCH (a {id:'XMCyber'}) MATCH (b {id:'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label='dual-layer penetration of EU infrastructure', r.weight=4, r.detail='XM Cyber (Mossad origin) maps infrastructure vulnerabilities. Palantir (CIA origin, Epstein funding chain) extracts business/identity data via API. Both sit deep inside the same European target infrastructure. Different vectors, complementary intelligence take.', r.edge_function='INTELLIGENCE', r.flow_type='INTELLIGENCE', r.opacity=1, r.phase='WEAPONIZED', r.reliability_score=0.90;

// ════════════════════════════════════════════
// §60 EMERGENT PATTERNS (v3.6)
// ════════════════════════════════════════════

// PATTERN Z: The Service Principal as Silent Intelligence Collector (NEW v3.6)
//
//   An Exchange admin migrating mailboxes knows exactly what
//   a Service Principal with Mail.Read application permission can do:
//   it reads every email in every mailbox without any user knowing.
//   
//   Directory.Read.All: complete org chart, every group membership,
//     every device, every role assignment, every conditional access policy
//   Mail.Read: every email in every mailbox (application-level = all mailboxes)
//   Files.Read.All: every document in SharePoint and OneDrive
//   AuditLog.Read.All: every admin action, every sign-in, every permission change
//   
//   A Service Principal with these scopes IS a permanent intelligence
//   collection operation running inside the customer's infrastructure.
//   It requires admin consent once. Then it runs forever.
//   No MFA. No session expiry. No user-visible sign-in.
//   Delta queries track every change in real-time.
//   Change notifications push updates the moment they happen.
//   
//   When Palantir deploys Foundry/AIP into a European enterprise,
//   the App Registration that enables the integration IS the
//   intelligence collection mechanism. The product and the
//   extraction vector are the same object.
//
//   This is not a backdoor. This is the front door.
//   Admin consent is the key. And the admin usually doesn't
//   understand what application-level Graph API permissions mean
//   versus delegated permissions. The distinction between
//   "this app can read YOUR mail" and "this app can read
//   ALL mail in the organization" is one checkbox.

// PATTERN AA: Complementary Intelligence Geometry (NEW v3.6)
//
//   XM Cyber (Mossad/Shin Bet origin):
//     WHAT: Maps attack paths — vulnerabilities, lateral movement,
//           privilege escalation, misconfigured permissions
//     HOW: Agent-based scanning or agentless API integration
//     INTELLIGENCE VALUE: Knows exactly how to break in
//     OWNER: Schwarz Group (German retail infrastructure)
//
//   Palantir (CIA origin, Epstein→Thiel funding chain):
//     WHAT: Extracts business data, identities, communications,
//           org structures via Service Principal/Graph API
//     HOW: App Registration with application permissions
//     INTELLIGENCE VALUE: Knows exactly what's inside
//     DEPLOYED: In Maven kill chain + enterprise analytics
//
//   Wiz (Unit 8200):
//     WHAT: Agentless cloud posture scanning
//     HOW: Cross-tenant API access to cloud configurations
//     INTELLIGENCE VALUE: Knows the complete cloud architecture
//
//   Check Point / Palo Alto (Unit 8200):
//     WHAT: Deep packet inspection on network perimeter
//     HOW: Sits inline on every network flow
//     INTELLIGENCE VALUE: Sees all network traffic content
//
//   Cellebrite (Unit 8200 adjacent):
//     WHAT: Extracts data from locked mobile devices
//     HOW: Physical device forensics
//     INTELLIGENCE VALUE: Everything on the phone
//
//   Together these five vectors cover:
//   HOW TO GET IN (XM Cyber) + WHAT'S INSIDE (Palantir) +
//   THE CLOUD SHAPE (Wiz) + WHAT MOVES (Check Point/PAN) +
//   THE PHONE (Cellebrite)
//
//   All founded by or deeply connected to Israeli intelligence.
//   All sitting inside the same western enterprise infrastructure.
//   All operating under commercial licenses with admin consent.
//   
//   This is not surveillance. This is architecture.
//   The western enterprise is the product.

// ════════════════════════════════════════════
// §61 STATISTICS (v3.6 cumulative)
// ════════════════════════════════════════════
// Person nodes: 51
// Stakeholder nodes: 76 (+4: EuroCloudTenants, AppRegistration,
//                    EuroEnterpriseCustomers, MicrosoftGraphAPI)
// Total edges: ~230
// Patterns: A-AA = 27 emergent patterns
// New key insight: Service Principal IS the intelligence collection
//   mechanism. Product and extraction vector are the same object.
