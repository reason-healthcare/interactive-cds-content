Instance: ExtractOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract Case1"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation1)
  * resource = ActiveSulfasalazineFeatureObservation1
* entry[+]
  * insert BundleEntryPut(LastCbcPanelReportDateFeature/ActiveSulfasalazineFeatureObservation1)
  * resource = LastCbcPanelReportDateFeatureObservation1

Instance: ActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse1)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueBoolean = true
* effectiveDateTime = "2023-12-06T11:45:33+11:00"

Instance: LastCbcPanelReportDateFeatureObservation1
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse1)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueDateTime = "2021-12-04T16:03:47.218-05:00"
* effectiveDateTime = "2021-12-04T16:03:47.218-05:00"



