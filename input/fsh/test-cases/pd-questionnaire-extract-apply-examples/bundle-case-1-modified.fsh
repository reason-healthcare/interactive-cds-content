Instance: BundleCase7Modified
InstanceOf: Bundle
Description: "Test case for asserted case features updated to reflect extracted observations - Case1"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient7)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter7)
* insert BundleEntry(Observation, ActiveSulfasalazineFeatureObservation1)
* insert BundleEntry(Observation, LastCbcPanelReportDateFeatureObservation1)
* insert BundleEntry(Observation, CBCObservation7)
* insert BundleEntry(Observation, r7-1)
* insert BundleEntry(Observation, r7-2)
* insert BundleEntry(MedicationRequest, MedicationRequest7)