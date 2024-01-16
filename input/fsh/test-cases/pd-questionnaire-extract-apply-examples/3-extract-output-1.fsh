Instance: ExtractOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case1"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation)
  * resource = ActiveSulfasalazineFeatureObservation1

Instance: ActiveSulfasalazineFeatureObservation
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse1)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient1)
* performer = Reference(OrganizationShared)
* valueBoolean = true
* insert EffectiveDateCurrent


