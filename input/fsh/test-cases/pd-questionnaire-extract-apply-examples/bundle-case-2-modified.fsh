Instance: BundleCase2Modified
InstanceOf: Bundle
Description: "Test case inferred Sulfasalazine and no CBC - with newly asserted Sulfasalazine and CBC observations - Case2"
Usage: #example
* meta.tag = #test
* type = #collection
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(MedictionRequest, MedicationRequest1)
* insert BundleEntry(Observation, ActiveSulfasalazineFeatureObservation2)
* insert BundleEntry(Observation, LastCbcPanelReportDateFeatureObservation2)