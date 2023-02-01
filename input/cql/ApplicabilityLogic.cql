library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include ActiveMethotrexateFeatureLogic version '0.1.0' called ActiveMethotrexateFeature
include ActiveSulfasalazineFeatureLogic version '0.1.0' called ActiveSulfasalazineFeature

context Patient

define "On antirheumatic drug therapy":
  ActiveMethotrexateFeature."On Methotrexate".value as boolean or
  ActiveSulfasalazineFeature."On Sulfasalazine".value as boolean

define "Missing last CBC result":
  [DiagnosticReport: "CBC Panel"] CBCReport
  where CBCReport.status not in { 'final' }

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should order CBC if on antirheumatic drug therapy":
  "Missing last CBC result" and "On antirheumatic drug therapy"