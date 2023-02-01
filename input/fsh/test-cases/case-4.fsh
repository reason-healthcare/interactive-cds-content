Instance: Patient4
InstanceOf: Patient
Usage: #example
* name.family = "patient4"

Instance: Encounter4
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = $ActCode#AMB "ambulatory"
* subject = Reference(Patient4)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: MedicationRequest4
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient4)
* medicationCodeableConcept = $RXNORM#105586 "methotrexate 10 MG Oral Tablet"

Instance: Instance-for-BundleCase4-1
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
* subject = Reference(Patient4)
* encounter = Reference(Encounter4)
* effectiveDateTime = "2021-01-04T08:30:00+11:00"
* issued = "2021-01-04T11:45:33+11:00"
* performer = Reference(OrganizationShared)
* result[+] = Reference(r4-1)
* result[+] = Reference(r4-2)

Instance: r4-1
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Haemoglobin"
* subject = Reference(Patient4)
* performer = Reference(OrganizationShared)
* valueQuantity = 176 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r4-2
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient4)
* performer = Reference(OrganizationShared)
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: BundleCase4
InstanceOf: Bundle
Usage: #example
* meta.tag.code = #test
* type = #transaction
* entry[+].fullUrl = "http://example.org/Patient/Patient4"
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/Patient4"
* entry[=].resource = Patient4
* entry[+].fullUrl = "http://example.org/Practitioner/PractitionerShared"
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PractitionerShared"
* entry[=].resource = PractitionerShared
* entry[+].fullUrl = "http://example.org/Organization/OrganizationShared"
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/OrganizationShared"
* entry[=].resource = OrganizationShared
* entry[+].fullUrl = "http://example.org/Encounter/Encounter4"
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/Encounter4"
* entry[=].resource = Encounter4
* entry[+].fullUrl = "http://example.org/MedicationRequest/MedicationRequest4"
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/MedicationRequest4"
* entry[=].resource = MedicationRequest4
* entry[+].fullUrl = "https://example.com/base/DiagnosticReport/102"
* entry[=].resource = Instance-for-BundleCase4-1
* entry[+].fullUrl = "https://example.com/base/Observation/r4-1"
* entry[=].resource = r4-1
* entry[+].fullUrl = "https://example.com/base/Observation/r4-2"
* entry[=].resource = r4-2
