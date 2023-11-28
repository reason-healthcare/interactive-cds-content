Instance: Patient7
InstanceOf: Patient
Usage: #example
* name.family = "patient7"

Instance: Encounter7
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient7)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: Observation7
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient4)
* performer = Reference(OrganizationShared)

Instance: BundleCase7
InstanceOf: Bundle
Description:
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient7"
  * resource = Patient7
* entry[+]
  * fullUrl = "http://example.org/Practitioner/PractitionerShared"
  * resource = PractitionerShared
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationShared"
  * resource = OrganizationShared
* entry[+]
  * fullUrl = "http://example.org/Encounter/Encounter7"
  * resource = Encounter7
* entry[+]
  * fullUrl = "http://example.org/Observation/Observation7"
  * resource = Observation7