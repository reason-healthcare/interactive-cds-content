Profile: ActiveMethotrexateFeature
Parent: Observation
Description: "Case feature definition: patient has active methotrexate treatment"
Title: "Active Methotrexate Feature"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(ActiveMethotrexateFeatureLogic, On Methotrexate)
* status = #final
* code = CaseFeatureCodes#on-medication-methotrexate
* value[x] only boolean