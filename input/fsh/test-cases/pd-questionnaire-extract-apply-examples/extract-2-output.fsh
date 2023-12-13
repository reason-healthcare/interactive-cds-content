Instance: ExtractOutput2
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case2"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation2)
  * resource = ActiveSulfasalazineFeatureObservation2
* entry[+]
  * insert BundleEntryPut(LastCbcPanelReportDate/LastCbcPanelReportDateFeatureObservation2)
  * resource = LastCbcPanelReportDateFeatureObservation2

Instance: ActiveSulfasalazineFeatureObservation2
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient8)
* valueBoolean = false
* effectiveDateTime = "2023-04-01T16:03:47.218-05:00"

Instance: LastCbcPanelReportDateFeatureObservation2
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient8)
* valueDateTime = "2023-12-13T16:03:47.218-05:00"
* effectiveDateTime = "2023-12-13T16:03:47.218-05:00"
