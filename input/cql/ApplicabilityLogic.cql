library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include ActiveMethotrexateFeatureLogic version '0.1.0' called ActiveMethotrexateFeature

context Patient

define "On antirheumatic drug therapy":
  ActiveMethotrexateFeature."On Methotrexate".value as boolean

define "Missing last CBC result":
  true

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should order CBC if on antirheumatic drug therapy":
  "Missing last CBC result" and "On antirheumatic drug therapy"