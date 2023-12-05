Instance: ExtractOutput2
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations created by extract case 2"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation2)
  * resource = ActiveSulfasalazineFeatureObservation2
* entry[+]
  * insert BundleEntryPut(LastCbcPanelReportDate/LastCbcPanelReportDateFeatureObservation2)
  * resource = LastCbcPanelReportDateFeatureObservation2

Instance: ActiveSulfasalazineFeatureObservation2
InstanceOf: ActiveSulfasalazineFeature
Usage: #inline
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient8)
* effectiveDateTime = "2023-12-01T16:03:47.218-05:00"

Instance: LastCbcPanelReportDateFeatureObservation2
InstanceOf: LastCbcPanelReportDateFeature
Usage: #inline
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient8)
* effectiveDateTime = "2023-12-01T16:03:47.218-05:00"
