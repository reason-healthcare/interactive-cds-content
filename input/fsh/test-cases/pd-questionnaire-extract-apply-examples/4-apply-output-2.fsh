Instance: ApplyOutput2
InstanceOf: Bundle
Usage: #example
Description: "Output with action.condition that does not apply - Case2"
* type = #collection
* insert BundleEntry(RequestGroup, RequestGroup2)

Instance: RequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(SulfasalazineMonitoringRecommendation|0.1.0)