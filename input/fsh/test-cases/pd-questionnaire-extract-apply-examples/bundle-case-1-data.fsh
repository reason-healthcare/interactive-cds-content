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
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* extension[+]
  * url = $cpg-instantiatesCaseFeature
  * valueCanonical = Canonical(ActiveSulfasalazineFeature)
* extension[+]
  * url = $cpg-caseFeatureType
  * valueCode = #asserted
* status = #final
* code = CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueBoolean = true
* effectiveDateTime = "2023-05-06T08:05:00+11:00"

Instance: MedicationRequest7
InstanceOf: MedicationRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient7)
* medicationCodeableConcept = $ATC#A07EC01 "Sulfasalazine"

Instance: CBCObservation7
InstanceOf: LastCbcPanelReportDateFeature
Usage: #example
* extension[+]
  * url = $cpg-instantiatesCaseFeature
  * valueCanonical = Canonical(LastCbcPanelReportDateFeature)
* extension[+]
  * url = $cpg-caseFeatureType
  * valueCode = #asserted
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueDateTime = "2021-12-04T16:03:47.218-05:00"
* effectiveDateTime = "2021-12-04T16:03:47.218-05:00"

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
* issued = "2023-01-04T11:45:33+11:00"
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
Description: "Test case for asserted case features - Case1"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient7)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter7)
* insert BundleEntry(Observation, MedObservation7)
* insert BundleEntry(Observation, CBCObservation7)
* insert BundleEntry(Observation, r7-1)
* insert BundleEntry(Observation, r7-2)
* insert BundleEntry(MedicationRequest, MedicationRequest7)