Instance: ApplyOutput1
InstanceOf: Bundle
Usage: #example
Description: "Output with action.condition that does apply - Case1"
* type = #collection
* insert BundleEntry(RequestGroup, RequestGroup1)
* insert BundleEntry(ServiceRequest, ServiceRequest1)

Instance: RequestGroup1
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(SulfasalazineMonitoringRecommendation|0.1.0)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy (Sulfasalazine)."
  * description = "Order monitoring tests for antirheumatic drug therapy (Sulfasalazine)."
  * code = $cpg-common-process#diagnostic-testing
  * type = $action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should order CBC if on Sulfasalazine therapy and missing test"
  * resource = Reference(ServiceRequest/ServiceRequest1)

Instance: ServiceRequest1
InstanceOf: ServiceRequest
Usage: #inline
* status = #draft
* intent = #option
* instantiatesCanonical = Canonical(OrderCBCActivity|0.1.0)
* subject = Reference(Patient/Patient1)
* doNotPerform = false
* code = $LOINC#58410-2 "CBC panel - Blood by Automated count"


