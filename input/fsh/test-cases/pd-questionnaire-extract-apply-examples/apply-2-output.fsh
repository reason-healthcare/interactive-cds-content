Instance: ApplyOutput2
InstanceOf: Bundle
Usage: #example
Description: "Output with action.condition that does apply - Case2"
* type = #collection
* insert BundleEntry(RequestGroup, RequestGroup2)
* insert BundleEntry(ServiceRequest, ServiceRequest2)

Instance: RequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient8)
* instantiatesCanonical = Canonical(SulfasalazineMonitoringRecommendation)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy (Sulfasalazine)."
  * description = "Order monitoring tests for antirheumatic drug therapy (Sulfasalazine)."
  * code = $cpg-common-process#diagnostic-testing
  * type = $action-type#create
  * resource = Reference(ServiceRequest2)

Instance: ServiceRequest2
InstanceOf: ServiceRequest
Usage: #inline
* status = #draft
* intent = #option
* instantiatesCanonical = Canonical(OrderCBCActivity)
* subject = Reference(Patient/Patient8)
* doNotPerform = false
* code = $LOINC#58410-2 "CBC panel - Blood by Automated count"