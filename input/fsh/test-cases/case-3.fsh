Instance: Patient3
InstanceOf: Patient
Usage: #example
* name.family = "patient3"

Instance: Practitioner3
InstanceOf: Practitioner
Usage: #example
* name.family = "practitioner3"

Instance: Organization3
InstanceOf: Organization
Usage: #example
* name = "organization3"

Instance: Encounter3
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = $ActCode#AMB "ambulatory"
* subject = Reference(Patient3)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(Practitioner3)
* serviceProvider = Reference(Organization3)

Instance: MedicationRequest3
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient3)
* medicationCodeableConcept = $RXNORM#373988 "Sulfasalazine Enema"

Instance: BundleCase3
InstanceOf: Bundle
Description: "A simple case of a patient with an in-progress encounter"
Usage: #example
* meta.tag = #test
* type = #transaction
* entry[+]
  * insert BundleEntryPut(Patient/Patient3)
  * resource = Patient3
* entry[+]
  * insert BundleEntryPut(Practitioner/Practitioner3)
  * resource = Practitioner3
* entry[+]
  * insert BundleEntryPut(Organization/Organization3)
  * resource = Organization3
* entry[+]
  * insert BundleEntryPut(Encounter/Encounter3)
  * resource = Encounter3
* entry[+]
  * insert BundleEntryPut(MedicationRequest/MedicationRequest3)
  * resource = MedicationRequest3