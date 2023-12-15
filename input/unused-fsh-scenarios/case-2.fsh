Instance: Patient2
InstanceOf: Patient
Usage: #example
* name.family = "patient2"

Instance: Practitioner2
InstanceOf: Practitioner
Usage: #example
* name.family = "practitioner2"

Instance: Organization2
InstanceOf: Organization
Usage: #example
* name = "organization2"

Instance: Encounter2
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = $ActCode#AMB "ambulatory"
* subject = Reference(Patient2)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(Practitioner2)
* serviceProvider = Reference(Organization2)

Instance: MedicationRequest2
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient2)
* medicationCodeableConcept = $RXNORM#105586 "methotrexate 10 MG Oral Tablet"

Instance: BundleCase2
InstanceOf: Bundle
Description: "A simple case of a patient with an in-progress encounter"
Usage: #example
* meta.tag = #test
* type = #transaction
* entry[+]
  * insert BundleEntryPut(Patient/Patient2)
  * resource = Patient2
* entry[+]
  * insert BundleEntryPut(Practitioner/Practitioner2)
  * resource = Practitioner2
* entry[+]
  * insert BundleEntryPut(Organization/Organization2)
  * resource = Organization2
* entry[+]
  * insert BundleEntryPut(Encounter/Encounter2)
  * resource = Encounter2
* entry[+]
  * insert BundleEntryPut(MedicationRequest/MedicationRequest2)
  * resource = MedicationRequest2