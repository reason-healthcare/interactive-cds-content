Instance: BundleCase3
InstanceOf: Bundle
Usage: #example
* meta.tag.code = #test
* type = #transaction
* entry[+].fullUrl = "http://example.org/Patient/Patient3"
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/Patient3"
* entry[=].resource = Patient3
* entry[+].fullUrl = "http://example.org/Practitioner/Practitioner3"
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/Practitioner3"
* entry[=].resource = Practitioner3
* entry[+].fullUrl = "http://example.org/Organization/Organization3"
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/Organization3"
* entry[=].resource = Organization3
* entry[+].fullUrl = "http://example.org/Encounter/Encounter3"
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/Encounter3"
* entry[=].resource = Encounter3
* entry[+].fullUrl = "http://example.org/MedicationRequest/MedicationRequest3"
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/MedicationRequest3"
* entry[=].resource = MedicationRequest3
* entry[+].fullUrl = "https://example.com/base/DiagnosticReport/101"
* entry[=].resource = Instance-for-BundleCase3-1
* entry[+].fullUrl = "https://example.com/base/Observation/r1"
* entry[=].resource = r1
* entry[+].fullUrl = "https://example.com/base/Observation/r2"
* entry[=].resource = r2
* entry[+].fullUrl = "https://example.com/base/Observation/r3"
* entry[=].resource = r3
* entry[+].fullUrl = "https://example.com/base/Observation/r4"
* entry[=].resource = r4
* entry[+].fullUrl = "https://example.com/base/Observation/r5"
* entry[=].resource = r5
* entry[+].fullUrl = "https://example.com/base/Observation/r6"
* entry[=].resource = r6
* entry[+].fullUrl = "https://example.com/base/Observation/r7"
* entry[=].resource = r7
* entry[+].fullUrl = "https://example.com/base/Observation/r8"
* entry[=].resource = r8
* entry[+].fullUrl = "https://example.com/base/Observation/r9"
* entry[=].resource = r9
* entry[+].fullUrl = "https://example.com/base/Observation/r10"
* entry[=].resource = r10
* entry[+].fullUrl = "https://example.com/base/Observation/r11"
* entry[=].resource = r11
* entry[+].fullUrl = "https://example.com/base/Observation/r12"
* entry[=].resource = r12
* entry[+].fullUrl = "https://example.com/base/Observation/r13"
* entry[=].resource = r13
* entry[+].fullUrl = "https://example.com/base/Observation/r14"
* entry[=].resource = r14
* entry[+].fullUrl = "https://example.com/base/Observation/r15"
* entry[=].resource = r15
* entry[+].fullUrl = "https://example.com/base/Observation/r16"
* entry[=].resource = r16
* entry[+].fullUrl = "https://example.com/base/Observation/r17"
* entry[=].resource = r17

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
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient3)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(Practitioner3)
* serviceProvider = Reference(Organization3)

Instance: MedicationRequest3
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject = Reference(Patient3)
* medicationCodeableConcept = $RXNORM#373988 "Sulfasalazine Enema"

Instance: Instance-for-BundleCase3-1
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
* subject = Reference(Patient3)
* encounter = Reference(Encounter3)
* effectiveDateTime = "2023-01-04T08:30:00+11:00"
* issued = "2023-01-04T11:45:33+11:00"
* performer = Reference(Organization3)
* result[+] = Reference(r1)
* result[+] = Reference(r2)
* result[+] = Reference(r3)
* result[+] = Reference(r4)
* result[+] = Reference(r5)
* result[+] = Reference(r6)
* result[+] = Reference(r7)
* result[+] = Reference(r8)
* result[+] = Reference(r9)
* result[+] = Reference(r10)
* result[+] = Reference(r11)
* result[+] = Reference(r12)
* result[+] = Reference(r13)
* result[+] = Reference(r14)
* result[+] = Reference(r15)
* result[+] = Reference(r16)
* result[+] = Reference(r17)

Instance: r1
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Haemoglobin"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 176 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r2
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: r3
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Haematocrit"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity.value = 55
* valueQuantity.unit = "%"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H
* referenceRange.low.value = 38
* referenceRange.low.unit = "%"
* referenceRange.high.value = 52
* referenceRange.high.unit = "%"

Instance: r4
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#787-2 "Erythrocyte mean corpuscular volume [Entitic volume] by Automated count"
* code.text = "Mean Cell Volume"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 99 'fL' "fL"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H
* referenceRange.low = 80 'fL' "fL"
* referenceRange.high = 98 'fL' "fL"

Instance: r5
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#785-6 "Erythrocyte mean corpuscular hemoglobin [Entitic mass] by Automated count"
* code.text = "Mean Cell Haemoglobin"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 36 'pg' "pg"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H
* referenceRange.low = 27 'pg' "pg"
* referenceRange.high = 35 'pg' "pg"

Instance: r6
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelet Count"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 444 '10*9/L' "x10*9/L"
* referenceRange.low = 150 '10*9/L' "x10*9/L"
* referenceRange.high = 450 '10*9/L' "x10*9/L"

Instance: r7
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "White Cell Count"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 4.6 '10*9/L' "x10*9/L"
* referenceRange.low = 4 '10*9/L' "x10*9/L"
* referenceRange.high = 11 '10*9/L' "x10*9/L"

Instance: r8
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#770-8 "Neutrophils/100 leukocytes in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 20 '%' "%"

Instance: r9
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 0.9 '10*9/L' "x10*9/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#LL
* referenceRange.low = 2 '10*9/L' "x10*9/L"
* referenceRange.high = 7.5 '10*9/L' "x10*9/L"

Instance: r10
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#736-9 "Lymphocytes/100 leukocytes in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 20 '%' "%"

Instance: r11
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 0.9 '10*9/L' "x10*9/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L
* referenceRange.low = 1.1 '10*9/L' "x10*9/L"
* referenceRange.high = 4 '10*9/L' "x10*9/L"

Instance: r12
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#5905-5 "Monocytes/100 leukocytes in Blood by Automated count"
* code.text = "Monocytes"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 20 '%' "%"

Instance: r13
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#742-7 "Monocytes [#/volume] in Blood by Automated count"
* code.text = "Monocytes"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 0.9 '10*9/L' "x10*9/L"
* referenceRange.low = 0.2 '10*9/L' "x10*9/L"
* referenceRange.high = 1 '10*9/L' "x10*9/L"

Instance: r14
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#713-8 "Eosinophils/100 leukocytes in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 20 '%' "%"

Instance: r15
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#711-2 "Eosinophils [#/volume] in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 0.92 '10*9/L' "x10*9/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH
* referenceRange.low = 0.04 '10*9/L' "x10*9/L"
* referenceRange.high = 0.4 '10*9/L' "x10*9/L"

Instance: r16
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#706-2 "Basophils/100 leukocytes in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 20 '%' "%"

Instance: r17
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#704-7 "Basophils [#/volume] in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient3)
* performer = Reference(Organization3)
* valueQuantity = 0.92 '10*9/L' "x10*9/L"
* referenceRange.high = 0.21 '10*9/L' "x10*9/L"
