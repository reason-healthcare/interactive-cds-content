Instance: MethotrexateMonitoringRecommendation
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert DefinitionMetadata(MethotrexateMonitoringRecommendation, PlanDefinition)
* description = "Monitoring tests for antirheumatic drug therapy for Methotrexate."
* library = Canonical(ApplicabilityLogic)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should order CBC if on antirheumatic drug therapy"
  * code = $cpg-common-process#diagnostic-testing
  * definitionCanonical = Canonical(OrderCBCActivity)
