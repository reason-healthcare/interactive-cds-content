Instance: Patient5
InstanceOf: Patient
Usage: #example
* name.family = "patient5"

Instance: Encounter5
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient5)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: MedicationRequest5
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient5)
* medicationCodeableConcept = $RXNORM#373988 "Sulfasalazine Enema"

Instance: BundleCase5
InstanceOf: Bundle
Description: "A simple case of a patient with an in-progress encounter"
Usage: #example
* meta.tag = #test
* type = #transaction
* entry[+]
  * insert BundleEntryPut(Patient/Patient5)
  * resource = Patient5
* entry[+]
  * insert BundleEntryPut(Practitioner/PractitionerShared)
  * resource = PractitionerShared
* entry[+]
  * insert BundleEntryPut(Organization/OrganizationShared)
  * resource = OrganizationShared
* entry[+]
  * insert BundleEntryPut(Encounter/Encounter5)
  * resource = Encounter5
* entry[+]
  * insert BundleEntryPut(MedicationRequest/MedicationRequest5)
  * resource = MedicationRequest5