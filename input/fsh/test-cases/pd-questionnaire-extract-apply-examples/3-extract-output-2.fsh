Instance: ExtractOutput2
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case2"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation1)
  * resource = ActiveSulfasalazineFeatureObservation1
* entry[+]
  * insert BundleEntryPut(LastCbcPanelReportDate/LastCbcPanelReportDateFeatureObservation1)
  * resource = LastCbcPanelReportDateFeatureObservation1

Instance: ActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(QuestionnaireResponse/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient1)
* valueBoolean = true

Instance: LastCbcPanelReportDateFeatureObservation1
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(QuestionnaireResponse/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient1)
* insert ValueDateTime1
