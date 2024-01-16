Instance: ExtractOutput2
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case2"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/ActiveSulfasalazineFeatureObservation1)
  * resource = ActiveSulfasalazineFeatureObservation2
* entry[+]
  * insert BundleEntryPut(LastCbcPanelReportDate/LastCbcPanelReportDateFeatureObservation1)
  * resource = LastCbcPanelReportDateFeatureObservation2

Instance: ActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient1)
* valueBoolean = true
* insert EffectiveDateCurrent

Instance: LastCbcPanelReportDateFeatureObservation1
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient1)
* insert ValueDateTime1
* insert EffectiveDateCurrent
