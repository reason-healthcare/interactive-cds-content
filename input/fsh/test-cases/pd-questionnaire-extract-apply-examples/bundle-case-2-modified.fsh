Instance: ActiveSulfasalazineFeatureObservation2
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient/Patient8)
* effectiveDateTime = "2023-12-01T16:03:47.218-05:00"

Instance: LastCbcPanelReportDateFeatureObservation2
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient/Patient8)
* effectiveDateTime = "2023-12-01T16:03:47.218-05:00"

Instance: BundleCase8Modified
InstanceOf: Bundle
Description: "Test case for inferred case features"
Usage: #example
* meta.tag = #test
* type = #collection
* insert DataBundleEntry(Patient, Patient8)
* insert DataBundleEntry(Practitioner, PractitionerShared)
* insert DataBundleEntry(Organization, OrganizationShared)
* insert DataBundleEntry(Encounter, Encounter8)
* insert DataBundleEntry(Observation, ActiveSulfasalazineFeatureObservation2)
* insert DataBundleEntry(Observation, LastCbcPanelReportDateFeatureObservation2)
* insert DataBundleEntry(MedictionRequest, MedicationRequest8)
* insert DataBundleEntry(DiagnosticReport, DiagnosticReport8)
* insert DataBundleEntry(Observation, r8-1)
* insert DataBundleEntry(Observation, r8-2)