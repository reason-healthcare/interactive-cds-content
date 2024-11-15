Instance: 3ExtractOutput2
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract - Case2"
* type = #collection
* insert BundleEntry(ActiveSulfasalazineFeature, ActiveSulfasalazineFeatureObservation2)
* insert BundleEntry(LastCbcPanelReportDate, LastCbcPanelReportDateFeatureObservation2)

Instance: ActiveSulfasalazineFeatureObservation2
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(QuestionnaireResponse/2QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient1)
* valueBoolean = true

Instance: LastCbcPanelReportDateFeatureObservation2
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(QuestionnaireResponse/2QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient1)
* insert CBCDateCurrentValue
