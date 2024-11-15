Instance: 3ExtractOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case1"
* type = #collection
* insert BundleEntry(ActiveSulfasalazineFeature, ActiveSulfasalazineFeatureObservation1)

Instance: ActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(QuestionnaireResponse/2QuestionnaireResponse1)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient1)
* performer = Reference(OrganizationShared)
* valueBoolean = true


