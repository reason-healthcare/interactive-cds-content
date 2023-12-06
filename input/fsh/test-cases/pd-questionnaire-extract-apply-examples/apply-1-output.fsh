Instance: ApplyOutput1
InstanceOf: Bundle
Usage: #example
Description: "Output with action.condition that does not apply - Case1"
* type = #collection
* insert BundleEntry(RequestGroup, RequestGroup1)

Instance: RequestGroup1
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient7)
* instantiatesCanonical = Canonical(SulfasalazineMonitoringRecommendation)