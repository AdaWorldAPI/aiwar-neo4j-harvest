// ── Constraints & Indexes ──
CREATE CONSTRAINT IF NOT EXISTS FOR (s:System) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (s:Stakeholder) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (c:CivicSystem) REQUIRE c.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (h:HistoricalSystem) REQUIRE h.id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (p:Person) REQUIRE p.id IS UNIQUE;
CREATE INDEX IF NOT EXISTS FOR (s:System) ON (s.year);
CREATE INDEX IF NOT EXISTS FOR (s:System) ON (s.noun_key);

// ── Schema Ontology (schema-as-data) ──
MERGE (:SchemaAxis {name: 'currentStatus_airo'});
MERGE (:SchemaAxis {name: 'type'});
MERGE (:SchemaAxis {name: 'militaryUse'});
MERGE (:SchemaAxis {name: 'civicUse'});
MERGE (:SchemaAxis {name: 'MLTask'});
MERGE (:SchemaAxis {name: 'MLType'});
MERGE (:SchemaAxis {name: 'purpose_vair'});
MERGE (:SchemaAxis {name: 'capacity_airo'});
MERGE (:SchemaAxis {name: 'output_airo'});
MERGE (:SchemaAxis {name: 'impact_vair'});
MERGE (:SchemaAxis {name: 'stakeholder'});
MERGE (:SchemaAxis {name: 'airo_type'});
MERGE (v:SchemaValue {value: 'Development'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'IntelligentControlSystem'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Robot'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Policing'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Capture'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ObjectRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AssessingRiskOfOffending'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BiometricsBasedEmotionRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Action'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PsychologicalHarm'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Nation'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AISubject'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Deployment'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'GenerativeModel'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Intel'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AR'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Store'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ObjectDetection'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PredictiveMapping'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AudioProcessing'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Content'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PhysicalInjury'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TechCompany'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AIDeployer'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Operation'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'NarrowAI'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Command'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BehaviorEvaluation'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Sort'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'FaceRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ProducingRecommendation'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BehaviourAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Decision'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'WellbeingImpact'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DefenseCompany'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AIDeveloper'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Retirement'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TrainingDatabase'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Logistics'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Logistics'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Recognize'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PatternRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DetectingCriminalOffences'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BiometricIdentification'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Prediction'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DistortionInHumanBehavior'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Institution'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AIProvider'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ExpertSystem'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Prediction'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'RecommenderSystems'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Predict'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Ranking'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Monitoring'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BiometricCategorisation'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Recommendation'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Overreliance'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Military'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ServiceRobot'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Mapping'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ConsumerTracking'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Assign'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SortingAlgorithm'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DetectingIndividuals'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ComputerVision'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Police'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'MultiAgentSystem'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Personnel'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Games'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Generate'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Classification'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DetectingLies'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DialectRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Company'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Dashboard'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Intelligence'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SocialWelfareSystems'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Automate'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SignalAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PerformingBackgroundChecks'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'EmotionRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Investor'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Nation'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Operations'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Security'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DecisionTree'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'IdentifyingIndividuals'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'FaceRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Untility'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TechCompany'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Logistics'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Marketing'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ComputerVision'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'RecognizingIndividuals'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Owner'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DefenseCompany'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Planning'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Advertising'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Recommendation'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'RemoteIdentification'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Geolocation'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'CEO'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Military'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Communications'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Robot'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SignalAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'EvaluatingJobCandidates'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'GestureRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Politician'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Investor'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Command'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Delivery'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'DecisionTree'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'EvaluatingEmployeePerformance'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ImageGeneration'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Institution'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'CrowdControl'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PoseEstimation'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'AssessingPeopleRelatedRisk'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'InformationRetrieval'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Utility'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PrivateSecurity'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SpatialReasoning'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'LieDetection'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'BorderPatrol'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TemporalReasoning'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'NamedEntityRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'CommonSenseReasoning'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ObjectDetection'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PolicyReasoning'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ObjectRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SpeechSynthesis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'PoseEstimation'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SpeechAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Profiling'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'VoiceRecognition'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SignalTracking'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TextAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'RelationshipExtraction'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TextGeneration'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SensitiveAttributeInference'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'ImageGeneration'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SentimentAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Photogrammetry'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'TransformerModel'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'Clustering'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SentimentAnalysis'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'SignalTracking'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'KnowledgeBase'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'currentStatus_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'type'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'militaryUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'civicUse'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'MLTask'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'InformationRetrieval'}) WITH v MATCH (a:SchemaAxis {name: 'MLType'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'purpose_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'capacity_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'output_airo'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'impact_vair'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'stakeholder'}) MERGE (v)-[:VALID_FOR]->(a);
MERGE (v:SchemaValue {value: 'nan'}) WITH v MATCH (a:SchemaAxis {name: 'airo_type'}) MERGE (v)-[:VALID_FOR]->(a);

// ── Systems (65 nodes) ──
MERGE (n:System:Development:MLTask_Generate {id: 'LargeGeospatialModels'})
SET n.name = 'Large Geospatial Models', n.year = 2025, n.current_status = 'Development', n.system_type = 'GenerativeAI', n.ml_task = 'Generate', n.military_use = 'Intelligence', n.civic_use = 'AR, Games', n.purpose = 'PredictiveMapping', n.capacity = 'ImageGeneration', n.output = 'Content', n.impact = 'PhysicalInjury, Overreliance, DistortionInHumanBehavior', n.image = './assets/noun-photogrammetry-4284363.png', n.noun_key = 'terrainMapping';
MERGE (n:System:Development:MLTask_Recognize {id: 'PolygraphPlus'})
SET n.name = 'Polygraph+', n.year = 2024, n.current_status = 'Development', n.system_type = 'BehaviorModeling, AnomalyDetection, ComputerVision, VoiceRecognition, IoT', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'BehaviorEvaluation', n.purpose = 'DetectingLies, DetectingCriminalOffences, AssessingRiskOfOffending, AssessingPeopleRelatedRisk, EvaluatingEmployeePerformance, EvaluatingJobCandidates, ProducingRecommendation', n.capacity = 'LieDetection, BehaviourAnalysis, BiometricsBasedEmotionRecognition, BiometricCategorisation, EmotionRecognition, GestureRecognition, Profiling,', n.output = 'Decision', n.impact = 'WellbeingImpact, PsychologicalHarm', n.image = './assets/noun-neurofeedback-7447387.png', n.noun_key = 'neurofeedback';
MERGE (n:System:Operation:MLTask_Predict {id: 'Lavender'})
SET n.name = 'Lavender', n.year = 2023, n.current_status = 'Operation', n.system_type = 'RecommendationSystem, PredictiveAnalytics, BehaviorModeling', n.ml_task = 'Predict', n.military_use = 'Intelligence', n.civic_use = 'RecommenderSystem', n.purpose = 'ProducingRecommendation', n.capacity = 'Profiling, InformationRetrieval, NamedEntityRecognition, RelationshipExtraction, SensitiveAttributeInference, SentimentAnalysis', n.output = 'Recommendation', n.impact = 'PhysicalInjury, WellbeingImpact, PsychologicalHarm', n.image = './assets/noun-target-7619584.png', n.noun_key = 'ml';
MERGE (n:System:Operation:MLTask_Predict {id: 'WheresDaddy'})
SET n.name = 'Where\\'s Daddy', n.year = 2023, n.current_status = 'Operation', n.system_type = 'LocationAwareness', n.ml_task = 'Predict', n.military_use = 'Command', n.civic_use = 'Logistics, Delivery, Advertising', n.purpose = 'ProducingRecommendation, DetectingIndividuals', n.capacity = 'Geolocation, ComputerVision, ObjectRecognition, SignalTracking', n.output = 'Prediction', n.impact = 'PhysicalInjury, WellbeingImpact, PsychologicalHarm', n.image = './assets/noun-infrared-drone-4284335.png', n.noun_key = 'locationTracking';
MERGE (n:System:Operation:MLTask_Automate {id: 'LegionX'})
SET n.name = 'LegionX', n.year = 2022, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, MultiAgentSystem', n.ml_task = 'Automate', n.military_use = 'Operations, Intelligence', n.civic_use = 'Policing, CrowdControl, PrivateSecurity, BehaviorEvaluation', n.purpose = 'ProducingRecommendation, DetectingIndividuals', n.capacity = 'ObjectDetection, PoseEstimation, Geolocation', n.output = 'Action, Decision', n.impact = 'PhysicalInjury, Overreliance, DistortionInHumanBehavior', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'poseRecognition';
MERGE (n:System:Operation:MLTask_Store {id: 'WolfPack'})
SET n.name = 'Wolf Pack', n.year = 2018, n.current_status = 'Operation', n.system_type = 'DataManagement', n.ml_task = 'Store', n.military_use = 'Logistics', n.civic_use = 'ConsumerTracking, Marketing, Security, SocialWelfareSystems', n.purpose = 'Monitoring, PerformingBackgroundChecks, RecognizingIndividuals', n.capacity = 'nan', n.output = 'nan', n.impact = 'PhysicalInjury, WellbeingImpact, PsychologicalHarm, Overreliance, DistortionInHumanBehavior', n.image = './assets/noun-ai-training-data-2985134.png', n.noun_key = 'trainingData';
MERGE (n:System:Operation:MLTask_Generate {id: 'AIP'})
SET n.name = 'Artificial Intelligence Platform', n.year = 2022, n.current_status = 'Operation', n.system_type = 'NLP, GenerativeAI', n.ml_task = 'Generate', n.military_use = 'Command', n.civic_use = 'Dashboard, ProjectManagement', n.purpose = 'nan', n.capacity = 'nan', n.output = 'Action, Content, Decision, Prediction, Recommendation', n.impact = 'nan', n.image = './assets/noun-surveillance-monitor-6831349.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Assign {id: 'MetaConstellation'})
SET n.name = 'Meta Constellation', n.year = 2022, n.current_status = 'Operation', n.system_type = 'PlanningSystem, MultiAgentSystem, RecommenderSystem', n.ml_task = 'Assign', n.military_use = 'Intelligence', n.civic_use = 'Dashboard, SupplyChainManagement', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-remote-team-6432341.png', n.noun_key = 'locationTracking';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Clearview'})
SET n.name = 'Clearview', n.year = 2022, n.current_status = 'Operation', n.system_type = 'FacialRecognition; ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification, AppUnlocking, AccessGranting', n.purpose = 'IdentifyingIndividuals, RecognizingIndividuals, RemoteIdentification', n.capacity = 'FaceRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-facial-recognition-4116350.png', n.noun_key = 'faceRecognition';
MERGE (n:System:Operation:MLTask_Automate {id: 'Wolly'})
SET n.name = 'Wolly', n.year = 2022, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, ComputerVision, RecommenderSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-turret-6749967.png', n.noun_key = 'robotPolicing';
MERGE (n:System:Operation:MLTask_Automate {id: 'FirstPOVDrones'})
SET n.name = 'First  Person View Drones', n.year = 2022, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Surveillance', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'uav';
MERGE (n:System:Operation:MLTask_Assign {id: 'MAPLE'})
SET n.name = 'MAPLE', n.year = 2022, n.current_status = 'Operation', n.system_type = 'IntelligentControlSystem, Simulation', n.ml_task = 'Assign', n.military_use = 'Command', n.civic_use = 'Logistics, Delivery, SupplyChainManagement', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-surveillance-monitor-6831349.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Sort {id: 'Gospel'})
SET n.name = 'The Gospel', n.year = 2021, n.current_status = 'Operation', n.system_type = 'ExpertSystem, Classification', n.ml_task = 'Sort', n.military_use = 'Command', n.civic_use = 'ConsumerTracking, Security, SocialWelfareSystems', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-earthquake-damage-6326583.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Alchemist'})
SET n.name = 'Alchemist', n.year = 2021, n.current_status = 'Operation', n.system_type = 'LocationAwareness, AnomalyDetection', n.ml_task = 'Recognize', n.military_use = 'Operations, Intelligence', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-mobile-tracking-5477710.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Store {id: 'Nimbus'})
SET n.name = 'Project Nimbus', n.year = 2021, n.current_status = 'Operation', n.system_type = 'DataManagement', n.ml_task = 'Store', n.military_use = 'Logistics', n.civic_use = 'CloudComputing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-data-center-2301592.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'ARCA'})
SET n.name = 'Assault Rifle Combat Application System', n.year = 2021, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, ComputerVision, BehaviorModeling', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-target-7619584.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'LAW'})
SET n.name = 'Lethal Autonomous Weapons', n.year = 2021, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation,  IntelligentControlSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-infrared-drone-4284335.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Gotham'})
SET n.name = 'Gotham', n.year = 2021, n.current_status = 'Operation', n.system_type = 'DataManagement, AnomalyDetection, BehaviorModeling', n.ml_task = 'Recognize', n.military_use = 'Command, Logistics, Operations', n.civic_use = 'Dashboard, ProjectManagement', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-missile-launcher-2052140.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Store {id: 'JEDI'})
SET n.name = 'JEDI', n.year = 2021, n.current_status = 'Operation', n.system_type = 'DataManagement', n.ml_task = 'Store', n.military_use = 'Logistics', n.civic_use = 'CloudComputing, EdgeComputing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-locked-cloud-5565062.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Assign {id: 'FireWeaver'})
SET n.name = 'Fire Weaver', n.year = 2020, n.current_status = 'Operation', n.system_type = 'MultiAgentSystem, PlanningSystem, RecommenderSystem', n.ml_task = 'Assign', n.military_use = 'Command', n.civic_use = 'Unknown', n.purpose = 'nan', n.capacity = 'nan', n.output = 'Action', n.impact = 'nan', n.image = './assets/noun-virtual-headset-7137401.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'FireFactory'})
SET n.name = 'Fire Factory', n.year = 2020, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, IntelligentControlSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Unknown', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-missile-launcher-2052140.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Sort {id: 'DIAS'})
SET n.name = 'Dialect Recognition Assistant (DIAS)', n.year = 2019, n.current_status = 'Operation', n.system_type = 'NLP', n.ml_task = 'Sort', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification', n.purpose = 'nan', n.capacity = 'AudioProcessing, DialectRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-speech-recognition-1870316.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'AFRS'})
SET n.name = 'Automated Facial Recognition System', n.year = 2019, n.current_status = 'Operation', n.system_type = 'FacialRecognition; ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification, AppUnlocking, AccessGranting', n.purpose = 'nan', n.capacity = 'FaceRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-facial-recognition-4116350.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Capture {id: 'Starshield'})
SET n.name = 'Starshield', n.year = 2024, n.current_status = 'Operation', n.system_type = 'IoT, LocationAwareness', n.ml_task = 'Capture', n.military_use = 'Intelligence', n.civic_use = 'InternetAccess, DataDistribution, SecureTransmission', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-satelite-5565092.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Capture {id: 'Starlink'})
SET n.name = 'Starlink', n.year = 2019, n.current_status = 'Operation', n.system_type = 'IoT, LocationAwareness', n.ml_task = 'Capture', n.military_use = 'Intelligence', n.civic_use = 'InternetAccess, DataDistribution', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-satelite-5565092.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'Pantir-SM'})
SET n.name = 'Pantir-SM', n.year = 2019, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, IntelligentControlSystem, Classification', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-classification-6860055.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'RedWolf'})
SET n.name = 'Red Wolf', n.year = 2019, n.current_status = 'Operation', n.system_type = 'FacialRecognition, ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Operations', n.civic_use = 'IdentityVerification, Security, Policing', n.purpose = 'nan', n.capacity = 'FaceRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-facial-recognition-4116350.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'BlueWolf'})
SET n.name = 'BlueWolf', n.year = 2018, n.current_status = 'Operation', n.system_type = 'FacialRecognition, ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Operations', n.civic_use = 'IdentityVerification, Security, Policing', n.purpose = 'nan', n.capacity = 'FaceRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-face-id-scan-1890640.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Capture {id: 'Mabat2000'})
SET n.name = 'Mabat 2000', n.year = 2018, n.current_status = 'Operation', n.system_type = 'ComputerVision', n.ml_task = 'Capture', n.military_use = 'Intelligence', n.civic_use = 'Surveillance, Policing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-cctv-5477699.png', n.noun_key = 'nan';
MERGE (n:System:Retirement:MLTask_Recognize {id: 'URSA'})
SET n.name = 'URSA', n.year = 2018, n.current_status = 'Retirement', n.system_type = 'LocationAwareness', n.ml_task = 'Recognize', n.military_use = 'Operations', n.civic_use = 'Retired', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-data-science-6432260.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Assign {id: 'TacNet'})
SET n.name = 'TacNet', n.year = 2017, n.current_status = 'Operation', n.system_type = 'MultiAgentSystem, PlanningSystem, RecommenderSystem', n.ml_task = 'Assign', n.military_use = 'Command', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-surveillance-monitor-6831349.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Predict {id: 'Bylina'})
SET n.name = 'Bylina', n.year = 2017, n.current_status = 'Operation', n.system_type = 'PredictiveAnalytics', n.ml_task = 'Predict', n.military_use = 'Command', n.civic_use = 'Unknown', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-earthquake-damage-6326583.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Maven'})
SET n.name = 'Maven Smart System', n.year = 2016, n.current_status = 'Operation', n.system_type = 'ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'Policing, Security, BorderPatrol, ScientificResearch', n.purpose = 'nan', n.capacity = 'ObjectDetection', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-object-recognition-6963419.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'PackBot'})
SET n.name = 'PackBot', n.year = 2016, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'SmartHome, Security', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-bomb-defusing-robot-1036305.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Assign {id: 'GISArta'})
SET n.name = 'GIS Arta', n.year = 2014, n.current_status = 'Operation', n.system_type = 'PlanningSystem, MultiAgentSystem, RecommenderSystem', n.ml_task = 'Assign', n.military_use = 'Logistics', n.civic_use = 'VehicleTasking, Logistics', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-threat-7566001.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'IrisGuard'})
SET n.name = 'IrisGuard', n.year = 2013, n.current_status = 'Operation', n.system_type = 'ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification, AppUnlocking, AccessGranting', n.purpose = 'nan', n.capacity = 'BiometricIdentification', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-iris-recognition-6831344.png', n.noun_key = 'biometric';
MERGE (n:System:Operation:MLTask_Predict {id: 'Skynet-US'})
SET n.name = 'Skynet-US', n.year = 2012, n.current_status = 'Operation', n.system_type = 'AnomalyDetection, MultiAgentSystem, BehaviorModeling, RecommenderSystem', n.ml_task = 'Predict', n.military_use = 'Intelligence', n.civic_use = 'DataBrokers, Marketing, BehaviorEvaluation', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-digital-footprint-6806678.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'RobotRiotControl'})
SET n.name = 'Robot Riot Control', n.year = 2011, n.current_status = 'Operation', n.system_type = 'AnomalyDetection, LocationAwareness, BehaviorModeling', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-riot-control-national-guards-1584300.png', n.noun_key = 'police';
MERGE (n:System:Operation:MLTask_Recognize {id: 'PrisonGuard'})
SET n.name = 'Prison Guard', n.year = 2011, n.current_status = 'Operation', n.system_type = 'AnomalyDetection, LocationAwareness, BehaviorModeling', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-police-robot-1119907.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Capture {id: 'Pegasus'})
SET n.name = 'Pegasus', n.year = 2011, n.current_status = 'Operation', n.system_type = 'AnomalyDetection, BehaviorModeling', n.ml_task = 'Capture', n.military_use = 'Intelligence', n.civic_use = 'BehaviorEvaluation, Surveillance', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-digital-footprint-6806678.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'SentryTech'})
SET n.name = 'Sentry-Tech', n.year = 2010, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, IntelligentControlSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-turret-6749967.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'SuperAegis'})
SET n.name = 'Super Aegis', n.year = 2010, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, IntelligentControlSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-turret-6749967.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'SentryRobot'})
SET n.name = 'Sentry Robot', n.year = 2010, n.current_status = 'Operation', n.system_type = 'Robotics/Navigation, IntelligentControlSystem', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-turret-6749967.png', n.noun_key = 'nan';
MERGE (n:System:Retirement:MLTask_Capture, Store {id: 'PRISM'})
SET n.name = 'PRISM/XKEYSCORE', n.year = 2007, n.current_status = 'Retirement', n.system_type = 'DataManagement, AnomalyDetection', n.ml_task = 'Capture, Store', n.military_use = 'Intelligence', n.civic_use = 'BehaviorEvaluation, Surveillance, Marketing, DataBrokers', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-digital-footprint-6806678.png', n.noun_key = 'nan';
MERGE (n:System:Retirement:MLTask_Recognize {id: 'DynaSpeak'})
SET n.name = 'DynaSpeak', n.year = 2006, n.current_status = 'Retirement', n.system_type = 'NLP', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'NaturalLanguageProcessing, TranslationApps', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-speech-recognition-1870316.png', n.noun_key = 'nan';
MERGE (n:System:Retirement:MLTask_Generate {id: 'CALO'})
SET n.name = 'CALO', n.year = 2003, n.current_status = 'Retirement', n.system_type = 'Agent', n.ml_task = 'Generate', n.military_use = 'Command', n.civic_use = 'AIAssistants', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-chatbot-7107716.png', n.noun_key = 'chatbot';
MERGE (n:System:Operation:MLTask_Recognize {id: 'GoldenShield'})
SET n.name = 'Golden Shield', n.year = 2003, n.current_status = 'Operation', n.system_type = 'DataManagement, AnomalyDetection', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'BehaviorEvaluation, Surveillance, Marketing, DataBrokers', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-cctv-5477699.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'SharpEyes'})
SET n.name = 'Sharp Eyes', n.year = 2003, n.current_status = 'Operation', n.system_type = 'FacialRecognition, ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification, Security, Policing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-cctv-5477699.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Skynet-PRC'})
SET n.name = 'Skynet-PRC', n.year = 2003, n.current_status = 'Operation', n.system_type = 'LocationAwareness', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'Security, Policing, LocationAnalytics', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-cctv-5477699.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Assign {id: 'Lattice'})
SET n.name = 'Lattice', n.year = 2025, n.current_status = 'Deployment', n.system_type = 'PlanningSystem, MultiAgentSystem, RecommenderSystem', n.ml_task = 'Assign', n.military_use = 'Command', n.civic_use = 'Policing, ScientificResearch', n.purpose = 'nan', n.capacity = 'nan', n.output = 'Action, Content, Decision', n.impact = 'PhysicalInjury, Overreliance, DistortionInHumanBehavior', n.image = './assets/noun-surveillance-monitor-6831349.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Store {id: 'Foundry'})
SET n.name = 'Foundry', n.year = 2022, n.current_status = 'Operation', n.system_type = 'DataManagement, Agent', n.ml_task = 'Store', n.military_use = 'Intelligence', n.civic_use = 'Policing, PrivateSecurity, BorderPatrol, BehaviorEvaluation, Surveillance, Marketing, DataBrokers', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-ai-training-data-2985134.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Recognize {id: 'Fortify'})
SET n.name = '(Mobile) Fortify', n.year = 2020, n.current_status = 'Operation', n.system_type = 'DataManagement, FacialRecognition, ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'IdentityVerification, Security, Policing', n.purpose = 'nan', n.capacity = 'FaceRecognition', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-facial-recognition-4116350.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'Sentry'})
SET n.name = 'Sentry', n.year = 2018, n.current_status = 'Operation', n.system_type = 'IntelligentControlSystem, IoT', n.ml_task = 'Automate', n.military_use = 'Intelligence', n.civic_use = 'BorderPatrol, Policing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-tower-111722.png', n.noun_key = 'nan';
MERGE (n:System:Development:MLTask_Recognize {id: 'Mantacus'})
SET n.name = 'Mantacus', n.year = 2022, n.current_status = 'Development', n.system_type = 'ComputerVision, AnomalyDetection', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'Policing, CrowdControl, PrivateSecurity', n.purpose = 'nan', n.capacity = 'ObjectRecognition', n.output = 'Decision', n.impact = 'Overreliance, WellbeingImpact', n.image = './assets/noun-pose-estimation-6860082.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Generate {id: 'AIVerse'})
SET n.name = 'AIVerse', n.year = 2021, n.current_status = 'Deployment', n.system_type = 'GenerativeAI', n.ml_task = 'Generate', n.military_use = 'Command', n.civic_use = 'SmartHome, Security', n.purpose = 'Monitoring, DetectingIndividuals', n.capacity = 'ObjectDetection, PoseEstimation, Classification', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-classification-6860055.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Automate {id: 'Vector'})
SET n.name = 'Vector', n.year = 2020, n.current_status = 'Deployment', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Surveillance', n.purpose = 'nan', n.capacity = 'nan', n.output = 'Action, Content', n.impact = 'PhysicalInjury, WellbeingImpact, PsychologicalHarm', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'nan';
MERGE (n:System:Development:MLTask_Recognize {id: 'EagleEye'})
SET n.name = 'Eagle Eye / SBMC Next', n.year = 2025, n.current_status = 'Development', n.system_type = 'ComputerVision', n.ml_task = 'Recognize', n.military_use = 'Intelligence', n.civic_use = 'AR, VR, Games', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-virtual-headset-7137401.png', n.noun_key = 'nan';
MERGE (n:System:Development:MLTask_Generate {id: 'Thunderforge'})
SET n.name = 'Project Thunderforge', n.year = 2025, n.current_status = 'Development', n.system_type = 'Agent, MultiAgentSystem, PlanningSystem', n.ml_task = 'Generate', n.military_use = 'Command', n.civic_use = 'AIAssistants, Chatbots', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-chatbot-7107716.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Automate {id: 'Jericho'})
SET n.name = 'Jericho, StrikeWeb', n.year = 2021, n.current_status = 'Deployment', n.system_type = 'IntelligentControlSystem, IoT', n.ml_task = 'Automate', n.military_use = 'Intelligence', n.civic_use = 'SmartHome, EdgeComputing', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-tower-111722.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'Atlas'})
SET n.name = 'Atlas', n.year = n.d., n.current_status = 'Operation', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, CrowdControl, PrivateSecurity, ScientificResearch', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Automate {id: 'Mithra'})
SET n.name = 'MithraOS', n.year = 2022, n.current_status = 'Deployment', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'SmartHome, Security', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-bomb-defusing-robot-1036305.png', n.noun_key = 'nan';
MERGE (n:System:Development:MLTask_Generate {id: 'Donovan'})
SET n.name = 'Donovan', n.year = 2023, n.current_status = 'Development', n.system_type = 'Agent', n.ml_task = 'Generate', n.military_use = 'Command', n.civic_use = 'AIAssistants, Chatbots', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'DistortionInHumanBehavior, Overreliance, WellbeingImpact', n.image = './assets/noun-chatbot-7107716.png', n.noun_key = 'assistant';
MERGE (n:System:Deployment:MLTask_Automate {id: 'Hivemind'})
SET n.name = 'Hivemind', n.year = 2015, n.current_status = 'Deployment', n.system_type = 'Agent, Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'nan';
MERGE (n:System:Deployment:MLTask_Automate {id: 'Centaur'})
SET n.name = 'Centaur', n.year = 2024, n.current_status = 'Deployment', n.system_type = 'Agent, Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Operations', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'nan';
MERGE (n:System:Operation:MLTask_Automate {id: 'Altra'})
SET n.name = 'Altra', n.year = n.d., n.current_status = 'Operation', n.system_type = 'Robotics/Navigation', n.ml_task = 'Automate', n.military_use = 'Command', n.civic_use = 'Policing, Security, BorderPatrol', n.purpose = 'nan', n.capacity = 'nan', n.output = 'nan', n.impact = 'nan', n.image = './assets/noun-drone-strike-75130.png', n.noun_key = 'nan';

// ── Stakeholders (114 nodes) ──
MERGE (n:Stakeholder:Nation:AISubject {id: 'Palestine'})
SET n.name = 'Palestine', n.stakeholder_type = 'Nation', n.airo_type = 'AISubject', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Israel'})
SET n.name = 'Israel', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'US'})
SET n.name = 'United States', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer, AISubject {id: 'Ukraine'})
SET n.name = 'Ukraine', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer, AISubject', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Palantir'})
SET n.name = 'Palantir', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AISupplier {id: 'AWS'})
SET n.name = 'Amazon Web Services', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AISupplier', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AIDeployer, AISubject {id: 'Russia'})
SET n.name = 'Russia', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer, AISubject', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AISubject {id: 'Syria'})
SET n.name = 'Syria', n.stakeholder_type = 'Nation', n.airo_type = 'AISubject', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Germany'})
SET n.name = 'Germany', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Rheinmetall'})
SET n.name = 'Rheinmetall', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Hikvision'})
SET n.name = 'Hikvision', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'TKH'})
SET n.name = 'TKH Security', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'SpaceX'})
SET n.name = 'SpaceX', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'India'})
SET n.name = 'India', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Rafael'})
SET n.name = 'Rafael', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Elbit'})
SET n.name = 'Elbit Systems', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AIProvider {id: 'Amazon'})
SET n.name = 'Amazon', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AIProvider', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AIProvider {id: 'Google'})
SET n.name = 'Google', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AIProvider', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AIProvider {id: 'Alphabet'})
SET n.name = 'Alphabet', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AIProvider', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AIProvider {id: 'Oracle'})
SET n.name = 'Oracle', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AIProvider', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper, AIProvider {id: 'IBM'})
SET n.name = 'IBM', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper, AIProvider', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Libya'})
SET n.name = 'Libya', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Azerbaijan'})
SET n.name = 'Azerbaijan', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Turkey'})
SET n.name = 'Turkey', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'UK'})
SET n.name = 'United Kingdom', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Vyriy'})
SET n.name = 'Vyriy', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Roboneers'})
SET n.name = 'Roboneers', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'D3'})
SET n.name = 'D3', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Helsing'})
SET n.name = 'Helsing', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'PG'})
SET n.name = 'PG Robotics', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Skyeton'})
SET n.name = 'Skyeton', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Swarmer'})
SET n.name = 'Swarmer', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'ClearviewAI'})
SET n.name = 'Clearview AI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Company:AIDeveloper {id: 'Presage'})
SET n.name = 'Presage', n.stakeholder_type = 'Company', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:Company:AIDeveloper {id: 'Altec'})
SET n.name = 'Altec', n.stakeholder_type = 'Company', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Niantic'})
SET n.name = 'Niantic Spatial', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'Arlington'})
SET n.name = 'Arlington Capital', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Jordan'})
SET n.name = 'Jordan', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'SouthKorea'})
SET n.name = 'South Korea', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'China'})
SET n.name = 'China', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'NSO'})
SET n.name = 'NSO Group', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Military:AIDeveloper {id: 'Unit8200'})
SET n.name = 'Unit 8200', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:Military:AIDeveloper {id: 'DARPA'})
SET n.name = 'DARPA', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Microsoft'})
SET n.name = 'Microsoft', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'SRI'})
SET n.name = 'SRI: Stanford Research Institute', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'KyonggiUniversity'})
SET n.name = 'Kyonggi University', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'HanwhaTechwin-Samsung'})
SET n.name = 'Hanwha Techwin (formerly Samsung)', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'DoDAAM'})
SET n.name = 'DoDAAM', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'SwissInstitute'})
SET n.name = 'Swiss Institute', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:Military:AIDeveloper {id: 'UNHCR'})
SET n.name = 'UNHCR', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:Military:AIDeveloper {id: 'UKDSTL'})
SET n.name = 'UKDSTL', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'QinetiQ'})
SET n.name = 'QinetiQ', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Military:AIDeveloper {id: 'UKDES'})
SET n.name = 'UKDE&S', n.stakeholder_type = 'Military', n.airo_type = 'AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Endeavor'})
SET n.name = 'Endeavor', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'BlackRock'})
SET n.name = 'BlackRock', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'Stanford'})
SET n.name = 'Stanford University', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Anthropic'})
SET n.name = 'Anthropic', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'iRobot'})
SET n.name = 'iRobot', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Meta'})
SET n.name = 'Meta', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'OpenAI'})
SET n.name = 'OpenAI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AISubject {id: 'Lebanon'})
SET n.name = 'Lebanon', n.stakeholder_type = 'Nation', n.airo_type = 'AISubject', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'GoogleCloud'})
SET n.name = 'Google Cloud', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Azure'})
SET n.name = 'Azure', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Military:AIDeployer {id: 'Mamram'})
SET n.name = 'Mamram', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Anduril'})
SET n.name = 'Anduril', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Lockheed'})
SET n.name = 'Lockheed Martin', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'Booz'})
SET n.name = 'Booz Allen Hamilton', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Military:AIDeployer, AIDeveloper {id: 'PLA-PRC'})
SET n.name = 'People\\'s Liberation Army', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer, AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'Deloitte'})
SET n.name = 'Deloitte', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Accenture'})
SET n.name = 'Accenture', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Databricks'})
SET n.name = 'Databricks', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Leidos'})
SET n.name = 'Leidos', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'ScaleAI'})
SET n.name = 'ScaleAI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Snowflake'})
SET n.name = 'Snowflake', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'KKR'})
SET n.name = 'KKR Investments', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIOperator {id: 'GTR'})
SET n.name = 'Global Technical Reality Data Centers', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIOperator', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Utility:Stakeholder {id: 'Hyperoptic'})
SET n.name = 'Hyperoptic', n.stakeholder_type = 'Utility', n.airo_type = 'Stakeholder', n.image = './assets/noun-infrastructure-6195519.png';
MERGE (n:Stakeholder:Utility:Stakeholder {id: 'Vantage'})
SET n.name = 'Vantage Towers', n.stakeholder_type = 'Utility', n.airo_type = 'Stakeholder', n.image = './assets/noun-infrastructure-6195519.png';
MERGE (n:Stakeholder:Police:AIDeployer {id: 'Landeskriminalamt'})
SET n.name = 'German State Police-NRW, Hesse, Bavaria', n.stakeholder_type = 'Police', n.airo_type = 'AIDeployer', n.image = './assets/noun-riot-control-national-guards-1584300.png';
MERGE (n:Stakeholder:Police:AIDeployer {id: 'DanishNP'})
SET n.name = 'Danish Police', n.stakeholder_type = 'Police', n.airo_type = 'AIDeployer', n.image = './assets/noun-riot-control-national-guards-1584300.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Denmark'})
SET n.name = 'Denmark', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:TechCompany:AIDeployer {id: 'Scopley'})
SET n.name = 'Scopley Games', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeployer', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AIDeployer, AIDeveloper {id: 'Saudi'})
SET n.name = 'Saudi Arabia', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer, AIDeveloper', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'MIT'})
SET n.name = 'MIT', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Spain'})
SET n.name = 'Spain', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Institution:AIDeployer {id: 'NHS'})
SET n.name = 'UK NHS', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeployer', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:Police:AIDeployer {id: 'ICE'})
SET n.name = 'US Immigration (ICE)', n.stakeholder_type = 'Police', n.airo_type = 'AIDeployer', n.image = './assets/noun-riot-control-national-guards-1584300.png';
MERGE (n:Stakeholder:Military:AIDeployer, AIDeveloper {id: 'DIANA'})
SET n.name = 'DIANA', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer, AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:Military:AIDeployer {id: 'NATO'})
SET n.name = 'NATO', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Apple'})
SET n.name = 'Apple', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeployer, AIDeveloper {id: 'GDIT'})
SET n.name = 'General Dynamics Information Technologies', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeployer, AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Corsight'})
SET n.name = 'Corsight.AI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'Vanguard'})
SET n.name = 'Vanguard', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:Police:AIDeployer {id: 'CBP'})
SET n.name = 'US Customs and Border Patrol', n.stakeholder_type = 'Police', n.airo_type = 'AIDeployer', n.image = './assets/noun-riot-control-national-guards-1584300.png';
MERGE (n:Stakeholder:Institution:Stakeholder {id: 'Horizon'})
SET n.name = 'Horizon Europe', n.stakeholder_type = 'Institution', n.airo_type = 'Stakeholder', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeveloper {id: 'QS'})
SET n.name = 'Quantum Systems', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Military:AIDeployer, AIOperator {id: 'DIU'})
SET n.name = 'US Defense Innovation Unit', n.stakeholder_type = 'Military', n.airo_type = 'AIDeployer, AIOperator', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeployer, AIDeveloper {id: 'Axon'})
SET n.name = 'Axon', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeployer, AIDeveloper', n.image = './assets/noun-locked-location-198286.png';
MERGE (n:Stakeholder:Police:AIDeployer {id: 'USPD'})
SET n.name = 'US Local Police', n.stakeholder_type = 'Police', n.airo_type = 'AIDeployer', n.image = './assets/noun-riot-control-national-guards-1584300.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: '201V'})
SET n.name = '201 Ventures', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Delian'})
SET n.name = 'Delian', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'NIF'})
SET n.name = 'Nato Innovation Fund', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:AID:AIDeveloper {id: 'Tekever'})
SET n.name = 'Tekever', n.stakeholder_type = 'AID', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Portugal'})
SET n.name = 'Portugal', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Greece'})
SET n.name = 'Greece', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeployer {id: 'Airbus'})
SET n.name = 'Airbus', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeployer', n.image = './assets/noun-radiation-205518.png';
MERGE (n:Stakeholder:Institution:AIDeveloper {id: 'Fraunhofer'})
SET n.name = 'Fraunhofer Institutes', n.stakeholder_type = 'Institution', n.airo_type = 'AIDeveloper', n.image = './assets/noun-research-center-198322.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'ARX'})
SET n.name = 'ARX Robotics', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'BailleGifford'})
SET n.name = 'Baillie Gifford', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'ShieldAI'})
SET n.name = 'Shield AI', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Investor:AIDeveloper {id: 'McKinsey'})
SET n.name = 'McKinsey', n.stakeholder_type = 'Investor', n.airo_type = 'AIDeveloper', n.image = './assets/noun-museum-198296.png';
MERGE (n:Stakeholder:TechCompany:AIDeveloper {id: 'Teledyne'})
SET n.name = 'Teledyne FLIR', n.stakeholder_type = 'TechCompany', n.airo_type = 'AIDeveloper', n.image = './assets/noun-software-industry-198331.png';
MERGE (n:Stakeholder:Nation:AIDeployer {id: 'Italy'})
SET n.name = 'Italy', n.stakeholder_type = 'Nation', n.airo_type = 'AIDeployer', n.image = './assets/noun-flagged-location-198290.png';
MERGE (n:Stakeholder:DefenseCompany:AIDeployer {id: 'Leonardo'})
SET n.name = 'Leonardo', n.stakeholder_type = 'DefenseCompany', n.airo_type = 'AIDeployer', n.image = './assets/noun-radiation-205518.png';

// ── Civic Systems (23 nodes) ──
MERGE (n:CivicSystem {id: 'Claude'})
SET n.name = 'Claude', n.year = 2023, n.system_type = 'Generative', n.noun_key = 'textgenerator';
MERGE (n:CivicSystem {id: 'Roomba'})
SET n.name = 'Roomba', n.year = 2002, n.system_type = 'IoT', n.noun_key = 'smartHome';
MERGE (n:CivicSystem {id: 'Llama'})
SET n.name = 'Llama', n.year = 2023, n.system_type = 'Generative', n.noun_key = 'textgenerator';
MERGE (n:CivicSystem {id: 'Facebook'})
SET n.name = 'Facebook', n.year = 2004, n.system_type = 'Social', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'WhatsApp'})
SET n.name = 'WhatsApp', n.year = 2009, n.system_type = 'Social', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'ChatGPT'})
SET n.name = 'ChatGPT', n.year = 2022, n.system_type = 'Generative', n.noun_key = 'textgenerator';
MERGE (n:CivicSystem {id: 'Gemini'})
SET n.name = 'Gemini/Bard', n.year = 2024, n.system_type = 'Generative', n.noun_key = 'textgenerator';
MERGE (n:CivicSystem {id: 'DoorDash'})
SET n.name = 'DoorDash', n.year = 2012, n.system_type = 'App', n.noun_key = 'logistics';
MERGE (n:CivicSystem {id: 'Oculus'})
SET n.name = 'Oculus Rift', n.year = 2012, n.system_type = 'XR', n.noun_key = 'VR';
MERGE (n:CivicSystem {id: 'Hololens'})
SET n.name = 'Hololens 2', n.year = 2016, n.system_type = 'XR', n.noun_key = 'AR';
MERGE (n:CivicSystem {id: 'Vertex'})
SET n.name = 'Vertex', n.year = 2019, n.system_type = 'Storage', n.noun_key = 'cloud';
MERGE (n:CivicSystem {id: 'Pokemon'})
SET n.name = 'Pokemon Go', n.year = 2016, n.system_type = 'XR', n.noun_key = 'game';
MERGE (n:CivicSystem {id: 'Siri'})
SET n.name = 'Siri', n.year = 2011, n.system_type = 'Agent', n.noun_key = 'assistant';
MERGE (n:CivicSystem {id: 'Medicare'})
SET n.name = 'US Medicare Fraud Detection (CMS)', n.year = 2023, n.system_type = 'App', n.noun_key = 'system';
MERGE (n:CivicSystem {id: 'Paypal'})
SET n.name = 'Paypal', n.year = 1998, n.system_type = 'App', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'Spotify'})
SET n.name = 'Spotify', n.year = 2006, n.system_type = 'App', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'Twitter'})
SET n.name = 'Twitter/X', n.year = 2006, n.system_type = 'Social', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'Ring'})
SET n.name = 'Ring', n.year = 2013, n.system_type = 'Utility', n.noun_key = 'surveillanceCamera';
MERGE (n:CivicSystem {id: 'Citizen'})
SET n.name = 'Citizen', n.year = 2017, n.system_type = 'Social', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'Outlier'})
SET n.name = 'Outlier & Remotetasks', n.year = 2017, n.system_type = 'App', n.noun_key = 'trainingdataset';
MERGE (n:CivicSystem {id: 'Neko'})
SET n.name = 'Neko Health', n.year = 2018, n.system_type = 'Utility', n.noun_key = 'healthcare';
MERGE (n:CivicSystem {id: 'Instagram'})
SET n.name = 'Instagram', n.year = 2010, n.system_type = 'Social', n.noun_key = 'platform';
MERGE (n:CivicSystem {id: 'TikTok'})
SET n.name = 'TikTok', n.year = 2017, n.system_type = 'Social', n.noun_key = 'platform';

// ── Historical Systems (7 nodes) ──
MERGE (n:HistoricalSystem {id: 'Dehomag'})
SET n.name = 'IBM Dehomag', n.year = 1933, n.system_type = 'DataManagement';
MERGE (n:HistoricalSystem {id: 'Translator'})
SET n.name = 'IBM Simultaneous Translator', n.year = 1945, n.system_type = 'Language';
MERGE (n:HistoricalSystem {id: 'ELIZA'})
SET n.name = 'ELIZA', n.year = 1966, n.system_type = 'Language';
MERGE (n:HistoricalSystem {id: 'Shoebox'})
SET n.name = 'Shoebox', n.year = 1964, n.system_type = 'Language';
MERGE (n:HistoricalSystem {id: 'ARPANET'})
SET n.name = 'ARPANET', n.year = 1969, n.system_type = 'Network';
MERGE (n:HistoricalSystem {id: 'Onavo'})
SET n.name = 'Onavo', n.year = 2010, n.system_type = 'Analytics, Potential spyware';
MERGE (n:HistoricalSystem {id: 'Wiz'})
SET n.name = 'Wiz', n.year = 2020, n.system_type = 'DataManagement';

// ── People (12 nodes) ──
MERGE (n:Person {id: 'Luckey'})
SET n.name = 'Palmer Luckey', n.person_type = 'Owner, Investor';
MERGE (n:Person {id: 'Musk'})
SET n.name = 'Elon Musk', n.person_type = 'Owner, Investor';
MERGE (n:Person {id: 'Thiel'})
SET n.name = 'Peter Thiel', n.person_type = 'Owner, Investor';
MERGE (n:Person {id: 'Ellison'})
SET n.name = 'Larry Ellison', n.person_type = 'Owner, Investor';
MERGE (n:Person {id: 'Fink'})
SET n.name = 'Larry Fink', n.person_type = 'CEO, Investor';
MERGE (n:Person {id: 'Vance'})
SET n.name = 'JD Vance', n.person_type = 'Investor, Politician';
MERGE (n:Person {id: 'Ek'})
SET n.name = 'Daniel Ek', n.person_type = 'Owner, Investor';
MERGE (n:Person {id: 'Scherf'})
SET n.name = 'Gundbert Scherf', n.person_type = 'Owner';
MERGE (n:Person {id: 'Reil'})
SET n.name = 'Torsten Reil', n.person_type = 'Owner';
MERGE (n:Person {id: 'Rosen'})
SET n.name = 'Guy Rosen', n.person_type = 'Chief Information Security Officer';
MERGE (n:Person {id: 'Rappaport'})
SET n.name = 'Assaf Rappaport', n.person_type = 'Owner';
MERGE (n:Person {id: 'Karp'})
SET n.name = 'Alex Karp', n.person_type = 'Owner';

// ── E_isDevelopedBy (114 edges) ──
MATCH (a {id: 'Niantic'}) MATCH (b {id: 'LargeGeospatialModels'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'US'}) MATCH (b {id: 'PolygraphPlus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'Lavender'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'WheresDaddy'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Elbit'}) MATCH (b {id: 'LegionX'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'WolfPack'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'AIP'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'MetaConstellation'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ClearviewAI'}) MATCH (b {id: 'Clearview'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Roboneers'}) MATCH (b {id: 'Wolly'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Vyriy'}) MATCH (b {id: 'FirstPOVDrones'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'PG'}) MATCH (b {id: 'FirstPOVDrones'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'UKDSTL'}) MATCH (b {id: 'MAPLE'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'Gospel'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'Alchemist'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Google'}) MATCH (b {id: 'Nimbus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'AWS'}) MATCH (b {id: 'Nimbus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Elbit'}) MATCH (b {id: 'ARCA'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'US'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Gotham'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Rafael'}) MATCH (b {id: 'FireWeaver'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Rafael'}) MATCH (b {id: 'FireFactory'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Germany'}) MATCH (b {id: 'DIAS'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'India'}) MATCH (b {id: 'AFRS'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SpaceX'}) MATCH (b {id: 'Starshield'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SpaceX'}) MATCH (b {id: 'Starlink'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Russia'}) MATCH (b {id: 'Pantir-SM'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'RedWolf'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'BlueWolf'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'TKH'}) MATCH (b {id: 'Mabat2000'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'URSA'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Rheinmetall'}) MATCH (b {id: 'TacNet'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Syria'}) MATCH (b {id: 'Bylina'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Google'}) MATCH (b {id: 'Maven'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'MIT'}) MATCH (b {id: 'ARPANET'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'GISArta'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'US'}) MATCH (b {id: 'Skynet-US'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'China'}) MATCH (b {id: 'RobotRiotControl'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'KyonggiUniversity'}) MATCH (b {id: 'PrisonGuard'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'NSO'}) MATCH (b {id: 'Pegasus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Rafael'}) MATCH (b {id: 'SentryTech'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DoDAAM'}) MATCH (b {id: 'SuperAegis'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'HanwhaTechwin-Samsung'}) MATCH (b {id: 'SentryRobot'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'US'}) MATCH (b {id: 'PRISM'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SRI'}) MATCH (b {id: 'DynaSpeak'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'CALO'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'China'}) MATCH (b {id: 'GoldenShield'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'China'}) MATCH (b {id: 'SharpEyes'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'China'}) MATCH (b {id: 'Skynet-PRC'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SRI'}) MATCH (b {id: 'CALO'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SwissInstitute'}) MATCH (b {id: 'CALO'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'SouthKorea'}) MATCH (b {id: 'RobotRiotControl'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Russia'}) MATCH (b {id: 'Bylina'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Hikvision'}) MATCH (b {id: 'Mabat2000'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Turkey'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Skyeton'}) MATCH (b {id: 'FirstPOVDrones'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Swarmer'}) MATCH (b {id: 'FirstPOVDrones'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'D3'}) MATCH (b {id: 'Wolly'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Presage'}) MATCH (b {id: 'PolygraphPlus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Altec'}) MATCH (b {id: 'PolygraphPlus'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Oracle'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'GoogleCloud'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Microsoft'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'AWS'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Helsing'}) MATCH (b {id: 'Wolly'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'QinetiQ'}) MATCH (b {id: 'MAPLE'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Endeavor'}) MATCH (b {id: 'PackBot'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'BlackRock'}) MATCH (b {id: 'Mabat2000'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 1;
MATCH (a {id: 'iRobot'}) MATCH (b {id: 'Roomba'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Anthropic'}) MATCH (b {id: 'Claude'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'Facebook'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'WhatsApp'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'iRobot'}) MATCH (b {id: 'PackBot'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'Lattice'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'OpenAI'}) MATCH (b {id: 'Lattice'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'OpenAI'}) MATCH (b {id: 'ChatGPT'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Google'}) MATCH (b {id: 'Gemini'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'KKR'}) MATCH (b {id: 'DoorDash'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Microsoft'}) MATCH (b {id: 'Hololens'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Saudi'}) MATCH (b {id: 'LargeGeospatialModels'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Niantic'}) MATCH (b {id: 'Pokemon'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'Dehomag'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'Translator'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'Shoebox'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Foundry'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'ARPANET'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Apple'}) MATCH (b {id: 'Siri'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Maven'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'GDIT'}) MATCH (b {id: 'Medicare'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Corsight'}) MATCH (b {id: 'Fortify'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'Sentry'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Mantacus'}) MATCH (b {id: 'DIANA'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'QS'}) MATCH (b {id: 'Vector'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'EagleEye'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'US'}) MATCH (b {id: 'EagleEye'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Delian'}) MATCH (b {id: 'Jericho'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Tekever'}) MATCH (b {id: 'Atlas'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ARX'}) MATCH (b {id: 'Mithra'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ScaleAI'}) MATCH (b {id: 'Donovan'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DIU'}) MATCH (b {id: 'Donovan'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ScaleAI'}) MATCH (b {id: 'Outlier'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ShieldAI'}) MATCH (b {id: 'Hivemind'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'DIU'}) MATCH (b {id: 'Hivemind'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'ScaleAI'}) MATCH (b {id: 'Thunderforge'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Microsoft'}) MATCH (b {id: 'Thunderforge'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'Thunderforge'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Helsing'}) MATCH (b {id: 'Centaur'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Helsing'}) MATCH (b {id: 'Altra'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'Instagram'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'EagleEye'}) MERGE (a)-[r:DEVELOPED_BY]->(b) SET r.label = 'developed', r.weight = 2;

// ── E_isDeployedBy (79 edges) ──
MATCH (a {id: 'US'}) MATCH (b {id: 'LargeGeospatialModels'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'proposed relationship', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'PolygraphPlus'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Lavender'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'WheresDaddy'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'LegionX'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'WolfPack'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'AIP'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'MetaConstellation'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Clearview'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'Wolly'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'FirstPOVDrones'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'UK'}) MATCH (b {id: 'MAPLE'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Gospel'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Alchemist'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Nimbus'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'ARCA'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Libya'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Gotham'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'JEDI'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'FireWeaver'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'FireFactory'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Germany'}) MATCH (b {id: 'DIAS'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'India'}) MATCH (b {id: 'AFRS'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Starshield'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Starlink'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Russia'}) MATCH (b {id: 'Pantir-SM'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'RedWolf'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'BlueWolf'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Mabat2000'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'URSA'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Germany'}) MATCH (b {id: 'TacNet'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Syria'}) MATCH (b {id: 'Bylina'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Maven'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'PackBot'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'GISArta'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Jordan'}) MATCH (b {id: 'IrisGuard'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Skynet-US'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'RobotRiotControl'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'SouthKorea'}) MATCH (b {id: 'PrisonGuard'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Pegasus'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'SentryTech'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'SouthKorea'}) MATCH (b {id: 'SuperAegis'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'SouthKorea'}) MATCH (b {id: 'SentryRobot'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'PRISM'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'DynaSpeak'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'CALO'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'GoldenShield'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'SharpEyes'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'Skynet-PRC'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'MetaConstellation'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'Clearview'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'UNHCR'}) MATCH (b {id: 'IrisGuard'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Russia'}) MATCH (b {id: 'Bylina'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Russia'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Azerbaijan'}) MATCH (b {id: 'LAW'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Ukraine'}) MATCH (b {id: 'Starlink'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Pegasus'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'MIT'}) MATCH (b {id: 'ARPANET'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Lattice'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Lockheed'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Booz'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'ICE'}) MATCH (b {id: 'Foundry'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'NHS'}) MATCH (b {id: 'Foundry'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'DanishNP'}) MATCH (b {id: 'Gotham'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Medicare'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'ICE'}) MATCH (b {id: 'Fortify'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Fortify'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'Fortify'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'CBP'}) MATCH (b {id: 'Fortify'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Jericho'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'UK'}) MATCH (b {id: 'Atlas'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Airbus'}) MATCH (b {id: 'Hivemind'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Hivemind'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'Landeskriminalamt'}) MATCH (b {id: 'Gotham'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'ICE'}) MATCH (b {id: 'Axon'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'CBP'}) MATCH (b {id: 'Sentry'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'CBP'}) MATCH (b {id: 'Lattice'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'Donovan'}) MERGE (a)-[r:DEPLOYED_BY]->(b) SET r.label = 'employed', r.weight = 1;

// ── E_connection (95 edges) ──
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'US'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Unit8200'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'UKDSTL'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'UKDES'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Stanford'}) MATCH (b {id: 'BlackRock'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Stanford'}) MATCH (b {id: 'SRI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Helsing'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'BlackRock'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Clearview'}) MATCH (b {id: 'AFRS'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'similar', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Anthropic'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'AWS'}) MATCH (b {id: 'Anthropic'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Syria'}) MATCH (b {id: 'Jordan'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'refugees from', r.weight = 1;
MATCH (a {id: 'Microsoft'}) MATCH (b {id: 'OpenAI'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Israel'}) MATCH (b {id: 'Oracle'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'GoogleCloud'}) MATCH (b {id: 'Google'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'AWS'}) MATCH (b {id: 'Amazon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Google'}) MATCH (b {id: 'Alphabet'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Azure'}) MATCH (b {id: 'Microsoft'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Mamram'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Lockheed'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'incorporates', r.weight = 1;
MATCH (a {id: 'Booz'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'incorporates', r.weight = 1;
MATCH (a {id: 'PLA-PRC'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'incorporates', r.weight = 1;
MATCH (a {id: 'Anduril'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Accenture'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Booz'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Deloitte'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Oracle'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Databricks'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Leidos'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'ScaleAI'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Snowflake'}) MATCH (b {id: 'Llama'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Gemini'}) MATCH (b {id: 'Vertex'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'GTR'}) MATCH (b {id: 'KKR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Vantage'}) MATCH (b {id: 'KKR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Hyperoptic'}) MATCH (b {id: 'KKR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Oculus'}) MATCH (b {id: 'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Azure'}) MATCH (b {id: 'Anduril'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'relies on', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Landeskriminalamt'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'MIT'}) MATCH (b {id: 'ELIZA'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Jordan'}) MATCH (b {id: 'UNHCR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Syria'}) MATCH (b {id: 'UNHCR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'Palestine'}) MATCH (b {id: 'UNHCR'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'China'}) MATCH (b {id: 'PLA-PRC'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'NATO'}) MATCH (b {id: 'DIANA'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'ICE'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'UK'}) MATCH (b {id: 'NHS'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'UK'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'US'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'part of', r.weight = 1;
MATCH (a {id: 'Germany'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;
MATCH (a {id: 'Denmark'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;
MATCH (a {id: 'Spain'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;
MATCH (a {id: 'ARPANET'}) MATCH (b {id: 'Stanford'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'affiliated', r.weight = 1;
MATCH (a {id: 'WhatsApp'}) MATCH (b {id: 'Lavender'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'provides data to', r.weight = 1;
MATCH (a {id: 'iRobot'}) MATCH (b {id: 'Endeavor'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'sold part of to', r.weight = 1;
MATCH (a {id: 'Pokemon'}) MATCH (b {id: 'Scopley'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'sold to', r.weight = 1;
MATCH (a {id: 'CALO'}) MATCH (b {id: 'Siri'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'based on', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'ICE'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'DanishNP'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'NHS'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'Palantir'}) MATCH (b {id: 'Booz'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'subcontracts', r.weight = 1;
MATCH (a {id: 'GDIT'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'subcontracts', r.weight = 1;
MATCH (a {id: 'ScaleAI'}) MATCH (b {id: 'Meta'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Blackrock'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Blackrock'}) MATCH (b {id: 'Amazon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Blackrock'}) MATCH (b {id: 'Microsoft'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Blackrock'}) MATCH (b {id: 'Alphabet'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Blackrock'}) MATCH (b {id: 'IBM'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Vanguard'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'IBM'}) MATCH (b {id: 'Horizon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'DIANA'}) MATCH (b {id: 'Mantacus'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'DIANA'}) MATCH (b {id: 'AIVerse'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'DIANA'}) MATCH (b {id: 'Vector'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'USPD'}) MATCH (b {id: 'Axon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'Citizen'}) MATCH (b {id: 'Axon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'provides data to', r.weight = 1;
MATCH (a {id: 'Ring'}) MATCH (b {id: 'Axon'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'provides data to', r.weight = 1;
MATCH (a {id: 'Amazon'}) MATCH (b {id: 'Ring'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'owns', r.weight = 1;
MATCH (a {id: '201V'}) MATCH (b {id: 'Delian'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Portugal'}) MATCH (b {id: 'Tekever'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'NIF'}) MATCH (b {id: 'ARX'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Portugal'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;
MATCH (a {id: 'Greece'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;
MATCH (a {id: 'NIF'}) MATCH (b {id: 'Tekever'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Airbus'}) MATCH (b {id: 'QS'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'partners with', r.weight = 1;
MATCH (a {id: 'Fraunhofer'}) MATCH (b {id: 'QS'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'partners with', r.weight = 1;
MATCH (a {id: 'BailleGifford'}) MATCH (b {id: 'Tekever'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'BailleGifford'}) MATCH (b {id: 'Spotify'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invests in', r.weight = 1;
MATCH (a {id: 'Teledyne'}) MATCH (b {id: 'Endeavor'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'sold to', r.weight = 1;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'iRobot'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'MIT'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'DARPA'}) MATCH (b {id: 'Stanford'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'contracts', r.weight = 1;
MATCH (a {id: 'Arlington'}) MATCH (b {id: 'PackBot'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'invested in', r.weight = 1;
MATCH (a {id: 'Meta'}) MATCH (b {id: 'Onavo'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'purchased', r.weight = 1;
MATCH (a {id: 'Google'}) MATCH (b {id: 'Wiz'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'purchased', r.weight = 1;
MATCH (a {id: 'Italy'}) MATCH (b {id: 'NATO'}) MERGE (a)-[r:CONNECTED_TO]->(b) SET r.label = 'member of', r.weight = 1;

// ── E_place (21 edges) ──
MATCH (a {id: 'Lavender'}) MATCH (b {id: 'Palestine'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id: 'Clearview'}) MATCH (b {id: 'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id: 'IrisGuard'}) MATCH (b {id: 'Jordan'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 3;
MATCH (a {id: 'KyonggiUniversity'}) MATCH (b {id: 'SouthKorea'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'NSO'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Arlington'}) MATCH (b {id: 'US'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'FireWeaver'}) MATCH (b {id: 'Lebanon'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 0;
MATCH (a {id: 'GTR'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'GTR'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'GTR'}) MATCH (b {id: 'Spain'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Vantage'}) MATCH (b {id: 'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Hyperoptic'}) MATCH (b {id: 'UK'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Vantage'}) MATCH (b {id: 'Spain'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Translator'}) MATCH (b {id: 'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'used in', r.weight = 0;
MATCH (a {id: 'Landeskriminalamt'}) MATCH (b {id: 'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'DanishNP'}) MATCH (b {id: 'Denmark'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Corsight'}) MATCH (b {id: 'Israel'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Delian'}) MATCH (b {id: 'Greece'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'QS'}) MATCH (b {id: 'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Helsing'}) MATCH (b {id: 'Germany'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;
MATCH (a {id: 'Leonardo'}) MATCH (b {id: 'Italy'}) MERGE (a)-[r:USED_IN]->(b) SET r.label = 'based in', r.weight = 0;

// ── E_people (22 edges) ──
MATCH (a {id: 'Luckey'}) MATCH (b {id: 'Oculus'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Luckey'}) MATCH (b {id: 'Anduril'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Musk'}) MATCH (b {id: 'SpaceX'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Paypal'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Thiel'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Ellison'}) MATCH (b {id: 'Oracle'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Fink'}) MATCH (b {id: 'BlackRock'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Vance'}) MATCH (b {id: 'Anduril'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'investor', r.weight = nan;
MATCH (a {id: 'Ek'}) MATCH (b {id: 'Helsing'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'investor', r.weight = nan;
MATCH (a {id: 'Ek'}) MATCH (b {id: 'Spotify'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Musk'}) MATCH (b {id: 'Twitter'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Scherf'}) MATCH (b {id: 'Helsing'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Scherf'}) MATCH (b {id: 'McKinsey'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'former partner', r.weight = nan;
MATCH (a {id: 'Reil'}) MATCH (b {id: 'Helsing'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Ek'}) MATCH (b {id: 'Neko'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'owner', r.weight = nan;
MATCH (a {id: 'Ellison'}) MATCH (b {id: 'TikTok'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'prospective owner', r.weight = nan;
MATCH (a {id: 'Rosen'}) MATCH (b {id: 'Meta'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'employee', r.weight = nan;
MATCH (a {id: 'Rosen'}) MATCH (b {id: 'Unit8200'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'unit vetran', r.weight = nan;
MATCH (a {id: 'Rosen'}) MATCH (b {id: 'Onavo'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Rappaport'}) MATCH (b {id: 'Wiz'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'founder', r.weight = nan;
MATCH (a {id: 'Rappaport'}) MATCH (b {id: 'Unit8200'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'unit vetran', r.weight = nan;
MATCH (a {id: 'Karp'}) MATCH (b {id: 'Palantir'}) MERGE (a)-[r:PERSON_LINK]->(b) SET r.label = 'CEO', r.weight = nan;