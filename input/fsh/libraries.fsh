Instance: FHIRHelpers
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(FHIRHelpers, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"

Instance: FHIRCommon
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(FHIRCommon, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRCommon.cql"

Instance: Common
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(Common, Library)
* description = "Common Library"
* type = $library-type#logic-library
* content.id = "ig-loader-Common.cql"

Instance: ActiveMethotrexateFeatureLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
Title: "Active Methotrexate Feature Logic"
* insert DefinitionMetadata(ActiveMethotrexateFeatureLogic, Library)
* description = "Case Feature Definition Logic for Active Methotrexate"
* type = $library-type#logic-library
* content.id = "ig-loader-ActiveMethotrexateFeatureLogic.cql"

Instance: ActiveSulfasalazineFeatureLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
Title: "Active Sulfasalazine Feature Logic"
* insert DefinitionMetadata(ActiveSulfasalazineFeatureLogic, Library)
* description = "Case Feature Definition Logic for Active Sulfasalazine"
* type = $library-type#logic-library
* content.id = "ig-loader-ActiveSulfasalazineFeatureLogic.cql"

Instance: LastCbcPanelReportDateFeatureLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
Title: "Last CBC Panel Report Date Feature Logic"
* insert DefinitionMetadata(LastCbcPanelReportDateFeatureLogic, Library)
* description = "Case Feature Definition Logic for CBC Panel Report Date"
* type = $library-type#logic-library
* content.id = "ig-loader-LastCbcPanelReportDateFeatureLogic.cql"

Instance: ApplicabilityLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
Title: "Applicability Logic"
* insert DefinitionMetadata(ApplicabilityLogic, Library)
* description = "Applicability Logic Library"
* type = $library-type#logic-library
* content.id = "ig-loader-ApplicabilityLogic.cql"
