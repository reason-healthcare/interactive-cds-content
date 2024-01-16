Instance: Patient1
InstanceOf: Patient
Usage: #example
* name.family = "Patient1"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient1)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: MedicationRequest1
InstanceOf: MedicationRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient1)
* medicationCodeableConcept = $ATC#A07EC01 "Sulfasalazine"

Instance: InitialBundle
InstanceOf: Bundle
Description: "Test case inferred Sulfasalazine and no CBC"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(MedicationRequest, MedicationRequest1)