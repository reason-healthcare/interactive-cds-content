Instance: ActiveSulfasalazineFeatureObservation2
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient8)
* valueBoolean = true
* effectiveDateTime = "2023-04-01T16:03:47.218-05:00"

Instance: LastCbcPanelReportDateFeatureObservation2
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient8)
* valueDateTime = "2023-04-01T16:03:47.218-05:00"
* effectiveDateTime = "2023-04-01T16:03:47.218-05:00"

Instance: BundleCase8Modified
InstanceOf: Bundle
Description: "Test case for inferred case features updated to reflect extracted observations - Case2"
Usage: #example
* meta.tag = #test
* type = #collection
* insert BundleEntry(Patient, Patient8)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter8)
* insert BundleEntry(Observation, ActiveSulfasalazineFeatureObservation2)
* insert BundleEntry(Observation, LastCbcPanelReportDateFeatureObservation2)
* insert BundleEntry(MedictionRequest, MedicationRequest8)
* insert BundleEntry(DiagnosticReport, DiagnosticReport8)
* insert BundleEntry(Observation, r8-1)
* insert BundleEntry(Observation, r8-2)