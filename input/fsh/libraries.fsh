Instance: FHIRHelpers
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(FHIRHelpers, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"

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
* insert DefinitionMetadata(ActiveMethotrexateFeatureLogic, Library)
* description = "Case Feature Definition Logic for Active Methotrexate"
* type = $library-type#logic-library
* content.id = "ig-loader-ActiveMethotrexateFeatureLogic.cql"

Instance: ActiveSulfasalazineFeatureLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(ActiveSulfasalazineFeatureLogic, Library)
* description = "Case Feature Definition Logic for Active Sulfasalazine"
* type = $library-type#logic-library
* content.id = "ig-loader-ActiveSulfasalazineFeatureLogic.cql"

Instance: ApplicabilityLogic
InstanceOf: $cpg-executablelibrary
Usage: #definition
* insert DefinitionMetadata(ApplicabilityLogic, Library)
* description = "Applicability Logic Library"
* type = $library-type#logic-library
* content.id = "ig-loader-ApplicabilityLogic.cql"
