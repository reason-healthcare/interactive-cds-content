Instance: Patient1
InstanceOf: Patient
Usage: #example
* name.family = "patient1"

Instance: Practitioner1
InstanceOf: Practitioner
Usage: #example
* name.family = "practitioner1"

Instance: Organization1
InstanceOf: Organization
Usage: #example
* name = "organization1"

Instance: Condition1
InstanceOf: Condition
Usage: #example
* subject = Reference(Patient1)
* recordedDate = "2023-01-01"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = $ActCode#AMB "ambulatory"
* subject = Reference(Patient1)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(Practitioner1)
* serviceProvider = Reference(Organization1)

Instance: BundleCase1
InstanceOf: Bundle
Description: "A simple case of a patient with an in-progress encounter"
Usage: #example
* meta.tag = #test
* type = #transaction
* entry[+]
  * insert BundleEntryPut(Patient/Patient1)
  * resource = Patient1
* entry[+]
  * insert BundleEntryPut(Practitioner/Practitioner1)
  * resource = Practitioner1
* entry[+]
  * insert BundleEntryPut(Organization/Organization1)
  * resource = Organization1
* entry[+]
  * insert BundleEntryPut(Encounter/Encounter1)
  * resource = Encounter1
* entry[+]
  * insert BundleEntryPut(Condition/Condition1)
  * resource = Condition1