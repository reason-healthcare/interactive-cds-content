Instance: Patient8
InstanceOf: Patient
Usage: #example
* name.family = "patient8"

Instance: Encounter8
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient8)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: MedicationRequest8
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient8)
* medicationCodeableConcept = $ATC#A07EC01 "Sulfasalazine"

Instance: DiagnosticReport8
InstanceOf: DiagnosticReport
Usage: #example
* meta.tag = http://example.org/fhir/CodeSystem/workflow-codes#01 "Needs Review"
* identifier.system = "http://acme.com/lab/reports"
* identifier.value = "5234342"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
* code.coding[+] = http://loinc.org#58410-2 "Complete blood count (hemogram) panel - Blood by Automated count"
* code.coding[+] = #CBC "MASTER FULL BLOOD COUNT"
* code.text = "Complete Blood Count"
* subject = Reference(Patient8)
* encounter = Reference(Encounter8)
* effectiveDateTime = "2021-01-04T08:30:00+11:00"
* issued = "2021-01-04T11:45:33+11:00"
* performer = Reference(OrganizationShared)
* result[+] = Reference(r8-1)
* result[+] = Reference(r8-2)

Instance: r8-1
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Haemoglobin"
* subject = Reference(Patient8)
* performer = Reference(OrganizationShared)
* valueQuantity = 176 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r8-2
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient8)
* performer = Reference(OrganizationShared)
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: BundleCase8
InstanceOf: Bundle
Description: "Test case for inferred case features - Case2"
Usage: #example
* meta.tag = #test
* type = #collection
* insert BundleEntry(Patient, Patient8)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter8)
* insert BundleEntry(MedictionRequest, MedicationRequest8)
* insert BundleEntry(DiagnosticReport, DiagnosticReport8)
* insert BundleEntry(Observation, r8-1)
* insert BundleEntry(Observation, r8-2)