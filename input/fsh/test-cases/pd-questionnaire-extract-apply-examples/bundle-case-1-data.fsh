Instance: Patient1
InstanceOf: Patient
Usage: #example
* name.family = "Patient1"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient1)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

// Instance: MedObservation1
// InstanceOf: ActiveSulfasalazineFeature
// Usage: #example
// * extension[+]
//   * url = $cpg-instantiatesCaseFeature
//   * valueCanonical = Canonical(ActiveSulfasalazineFeature)
// * extension[+]
//   * url = $cpg-caseFeatureType
//   * valueCode = #asserted
// * status = #final
// * code = CaseFeatureCodes#on-medication-sulfasalazine
// * subject = Reference(Patient1)
// * performer = Reference(OrganizationShared)
// * valueBoolean = true
// * effectiveDateTime = "2023-05-06T08:05:00+11:00"

Instance: MedicationRequest1
InstanceOf: MedicationRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient1)
* medicationCodeableConcept = $ATC#A07EC01 "Sulfasalazine"

// Instance: CBCObservation1
// InstanceOf: LastCbcPanelReportDateFeature
// Usage: #example
// * extension[+]
//   * url = $cpg-instantiatesCaseFeature
//   * valueCanonical = Canonical(LastCbcPanelReportDateFeature)
// * extension[+]
//   * url = $cpg-caseFeatureType
//   * valueCode = #asserted
// * status = #final
// * code = CaseFeatureCodes#last-cbc-panel-report-date
// * subject = Reference(Patient1)
// * performer = Reference(OrganizationShared)
// * insert ValueDateTime1
// * insert EffectiveDateTime1

// Instance: DiagnosticReport1
// InstanceOf: DiagnosticReport
// Usage: #example
// * meta.tag = http://example.org/fhir/CodeSystem/workflow-codes#01 "Needs Review"
// * identifier.system = "http://acme.com/lab/reports"
// * identifier.value = "5234342"
// * status = #final
// * category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
// * code.coding[+] = http://loinc.org#58410-2 "Complete blood count (hemogram) panel - Blood by Automated count"
// * code.coding[+] = $LOINC#58410-2 "CBC panel - Blood by Automated count"
// * code.text = "Complete Blood Count"
// * subject = Reference(Patient1)
// * encounter = Reference(Encounter1)
// * effectiveDateTime = "2021-01-04T08:30:00+11:00"
// * issued = "2023-01-04T11:45:33+11:00"
// * performer = Reference(OrganizationShared)
// * result[+] = Reference(r1-1)
// * result[+] = Reference(r1-2)

// Instance: r1-1
// InstanceOf: Observation
// Usage: #example
// * status = #final
// * code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
// * code.text = "Haemoglobin"
// * subject = Reference(Patient1)
// * performer = Reference(OrganizationShared)
// * valueQuantity = 176 'g/L' "g/L"
// * referenceRange.low = 135 'g/L' "g/L"
// * referenceRange.high = 180 'g/L' "g/L"

// Instance: r1-2
// InstanceOf: Observation
// Usage: #example
// * status = #final
// * code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
// * code.text = "Red Cell Count"
// * subject = Reference(Patient1)
// * performer = Reference(OrganizationShared)
// * valueQuantity = 5.9 '10*12/L' "x10*12/L"
// * referenceRange.low = 4.2 '10*12/L' "x10*12/L"
// * referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: InitialBundle
InstanceOf: Bundle
Description: "Test case inferred Sulfasalazine and no CBC"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
// * insert BundleEntry(Observation, MedObservation1)
// * insert BundleEntry(Observation, CBCObservation1)
// * insert BundleEntry(Observation, r1-1)
// * insert BundleEntry(Observation, r1-2)
* insert BundleEntry(MedicationRequest, MedicationRequest1)