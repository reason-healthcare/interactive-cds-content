library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include ActiveMethotrexateFeatureLogic version '0.1.0' called ActiveMethotrexateFeature
include ActiveSulfasalazineFeatureLogic version '0.1.0' called ActiveSulfasalazineFeature
include LastCbsPanelReportFeatureLogic version '0.1.0' called LastCbcPanelReportFeature


context Patient

define "On Methotrexate therapy":
  ActiveMethotrexateFeature."On Methotrexate".value as boolean

define "On Sulfasalazine therapy":
  ActiveSulfasalazineFeature."On Sulfasalazine".value as boolean

/**
 * @description
 * This is true if: there are no results, or the results are older than 6 months
 */
define "Missing last CBC result":
  if (exists(LastCbcPanelReportFeature."Last CBC Panel Report Date")) then
    LastCbcPanelReportFeature."Last CBC Panel Report Date".value as dateTime before (Today() - 6 months)
  else
    true

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should order CBC if on Sulfasalazine therapy and missing test":
  "Missing last CBC result" and "On Sulfasalazine therapy"

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should order CBC if on Methotrexate therapy and missing test":
  "Missing last CBC result" and "On Methotrexate therapy"