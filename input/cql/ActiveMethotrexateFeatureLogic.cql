library ActiveMethotrexateFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "On Methotrexate Feature": 'on-medication-methotrexate' from "CaseFeatureCodes"

valueset "Methotrexate Medications": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1116.181'

context Patient

define "Active Methotrexate Orders":
  [MedicationRequest: "Methotrexate Medications"] MethotrexateMedication
    where MethotrexateMedication.status in { 'active' } 

/**
 * @description 
 * Inference if the patient is taking drug with a Methotrexate code
 */
define "On Methotrexate Inferred":
  if exists("Active Methotrexate Orders") then
    Observation {
      meta: Meta {
        profile: {
          canonical { value: 'http://example.org/StructureDefinition/ActiveMethotrexateFeature' }
        }
      },
      extension: {
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
          value: canonical { value: 'http://example.org/StructureDefinition/ActiveMethotrexateFeature' }
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
            code: code { value: 'on-medication-methotrexate' }
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
define "On Methotrexate Asserted":
  Common.MostRecent([Observation: "On Methotrexate Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "On Methotrexate":
  Coalesce(
    "On Methotrexate Asserted",
    "On Methotrexate Inferred"
  )
