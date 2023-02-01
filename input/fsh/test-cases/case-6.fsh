Instance: Patient6
InstanceOf: Patient
Usage: #example
* name.family = "patient6"

Instance: Encounter6
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = $ActCode#AMB "ambulatory"
* subject = Reference(Patient6)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: MedicationRequest6
InstanceOf: MedicationRequest
* status = #cancelled
* intent = #order
* subject = Reference(Patient6)
* medicationCodeableConcept = $RXNORM#105586 "methotrexate 10 MG Oral Tablet"

Instance: BundleCase6
InstanceOf: Bundle
Description: "A simple case of a patient with an in-progress encounter"
Usage: #example
* meta.tag = #test
* type = #transaction
* entry[+]
  * insert BundleEntryPut(Patient/Patient6)
  * resource = Patient6
* entry[+]
  * insert BundleEntryPut(Practitioner/PractitionerShared)
  * resource = PractitionerShared
* entry[+]
  * insert BundleEntryPut(Organization/OrganizationShared)
  * resource = OrganizationShared
* entry[+]
  * insert BundleEntryPut(Encounter/Encounter6)
  * resource = Encounter6
* entry[+]
  * insert BundleEntryPut(MedicationRequest/MedicationRequest6)
  * resource = MedicationRequest6