Instance: BundleCase1Modified
InstanceOf: Bundle
Description: "Test case inferred Sulfasalazine and no CBC - with newly asserted Sulfasalazine observation - Case1"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(MedicationRequest, MedicationRequest1)
* insert BundleEntry(Observation, ActiveSulfasalazineFeatureObservation1)