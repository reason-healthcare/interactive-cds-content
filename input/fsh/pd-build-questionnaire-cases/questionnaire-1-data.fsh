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

Instance: MedObservation7
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueBoolean = true

Instance: MedicationRequest7
InstanceOf: MedicationRequest
* status = #ended
* intent = #order
* subject = Reference(Patient7)
* medicationCodeableConcept = $RXNORM#373988 "Sulfasalazine Enema"

Instance: CBCObservation7
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueDateTime = "2023-05-06T10:10:00+11:00"

Instance: DiagnosticReport7
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
* subject = Reference(Patient7)
* encounter = Reference(Encounter7)
* effectiveDateTime = "2021-01-04T08:30:00+11:00"
* issued = "2021-01-04T11:45:33+11:00"
* performer = Reference(OrganizationShared)
* result[+] = Reference(r7-1)
* result[+] = Reference(r7-2)

Instance: r7-1
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Haemoglobin"
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueQuantity = 176 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r7-2
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: BundleCase7
InstanceOf: Bundle
Description: "Test case for asserted case features"
Usage: #example
* type = #collection
* insert DataBundleEntry(Patient, Patient7)
* insert DataBundleEntry(Practitioner, PractitionerShared)
* insert DataBundleEntry(Organization, OrganizationShared)
* insert DataBundleEntry(Encounter, Encounter7)
* insert DataBundleEntry(Observation, MedObservation7)
* insert DataBundleEntry(Observation, CBCObservation7)
* insert DataBundleEntry(Observation, r7-1)
* insert DataBundleEntry(Observation, r7-2)