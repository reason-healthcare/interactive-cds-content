Instance: QuestionnaireParameters1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "url"
  * valueUri = "http://example.org/PlanDefinition/SulfasalazineMonitoringRecommendation"
* parameter[+]
  * name = "version"
  * valueString = "0.1.0"
* parameter[+]
  * name = "data"
  * resource = InitialBundle
* parameter[+]
  * name = "artifactEndpointConfiguration"
  * part[+]
    * name = "artifactRoute"
    * valueUri = "http://example.org"
  * part[+]
    * name = "endpointUri"
    * valueUri = "file:///Users/taylorkingston/projects/cpg-starter-example/output"
  * part[+]
    * name = "endpoint"
    * resource
      * resourceType = "Endpoint"
      * address = "file:///Users/taylorkingston/projects/cpg-starter-example/output"
      * status = #active
      * connectionType = #hl7-fhir-file
* parameter[+]
  * name = "artifactEndpointConfiguration"
  * part[+]
    * name = "artifactRoute"
    * valueUri = "http://hl7.org/fhir"
  * part[+]
    * name = "endpointUri"
    * valueUri = "http://hapi.fhir.org/baseR4"
  * part[+]
    * name = "endpoint"
    * resource
      * resourceType = "Endpoint"
      * address = "http://hapi.fhir.org/baseR4"
      * status = #active
      * connectionType = #hl7-fhir-rest