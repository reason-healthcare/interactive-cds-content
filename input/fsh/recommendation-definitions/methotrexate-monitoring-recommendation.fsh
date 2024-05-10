Instance: MethotrexateMonitoringRecommendation
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
Title: "Methotrexate Monitoring Recommendation"
* insert DefinitionMetadata(MethotrexateMonitoringRecommendation, PlanDefinition)
* description = "Monitoring tests for antirheumatic drug therapy for Methotrexate."
* library[+] = Canonical(ApplicabilityLogic)
* relatedArtifact[+]
  * type = #citation
  * citation = "Criswell LA, Saag KG, Sems KM et al. Moderate-term, low-dose corticosteroids for rheumatoid arthritis. Cochrane Database Syst Rev 2000;(2):CD001158 PubMed."
  * url = "https://pubmed.ncbi.nlm.nih.gov/10796420"
* action
  * title = "Order monitoring tests for antirheumatic drug therapy (Methotrexate)."
  * description = "Order monitoring tests for antirheumatic drug therapy (Methotrexate)."
  * extension[$cqf-qualityOfEvidence].valueCodeableConcept = $evidence-quality#high
  * extension[$cqf-strengthOfRecommendation].valueCodeableConcept = $recommendation-strength#strong
  * extension[$cpg-directionOfRecommendation].valueCodeableConcept = $cpg-recommendation-direction#for
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should order CBC if on Methotrexate therapy and missing test"
  * input[+]
    * type = #Observation
    * profile = Canonical(ActiveMethotrexateFeature)
  * input[+]
    * type = #Observation
    * profile = Canonical(LastCbcPanelReportDateFeature)
  * code = $cpg-common-process#diagnostic-testing
  * definitionCanonical = Canonical(OrderCBCActivity)
