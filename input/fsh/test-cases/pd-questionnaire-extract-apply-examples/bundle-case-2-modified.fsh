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