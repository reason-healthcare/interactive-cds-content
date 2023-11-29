library ActiveSulfasalazineFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "On Sulfasalazine Feature": 'on-medication-sulfasalazine' from "CaseFeatureCodes"

valueset "Sulfasalazine Medications": 'http://example.org/ValueSet/sulfasalazine-vs'


context Patient

define "Active Sulfasalazine Orders":
  [MedicationRequest: "Sulfasalazine Medications"] SulfasalazineMedication
    where SulfasalazineMedication.status in { 'active' }
  // [MedicationRequest] Medications
  //   where Medications.medication in "Sulfasalazine Medications" and Medications.status in { 'active'}
  // No resulst are returned using this test case when evaluating "Active Sulfasalazine Orders"
    // Instance: MedicationRequest8
    // InstanceOf: MedicationRequest
    // * status = #active
    // * intent = #order
    // * subject = Reference(Patient8)
    // * medicationCodeableConcept = $ATC#A07EC01 "Sulfasalazine"

/**
 * @description
 * Inference if the patient is taking drug with a Sulfasalazine code
 */
define "On Sulfasalazine Inferred":
  if exists("Active Sulfasalazine Orders") then
    Observation {
      meta: Meta {
        profile: {
          canonical { value: 'http://example.org/StructureDefinition/ActiveSulfasalazineFeature' }
        }
      },
      extension: {
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
          value: canonical { value: 'http://example.org/StructureDefinition/ActiveSulfasalazineFeature' }
        },
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' },
          value: code { value: 'inferred' }
        }
      },
      status: ObservationStatus { value: 'final' },
      effective: dateTime { value: Now() },
      code: CodeableConcept {
        coding: {
          Coding {
            system: uri { value: 'http://example.org/CodeSystem/CaseFeatureCodes' },
            code: code { value: 'on-medication-sulfasalazine' }
          }
        }
      },
      value: boolean { value: true }
    }
  else null

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "On Sulfasalazine Asserted":
  Common.MostRecent([Observation: "On Sulfasalazine Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "On Sulfasalazine":
  Coalesce(
    "On Sulfasalazine Asserted",
    "On Sulfasalazine Inferred"
  )
