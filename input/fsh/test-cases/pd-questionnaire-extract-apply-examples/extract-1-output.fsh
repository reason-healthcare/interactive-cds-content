Instance: ExtractOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of observations from $extract Case1"
* type = #transaction
* entry[+]
  * insert BundleEntryPut(ActiveSulfasalazineFeature/InlineActiveSulfasalazineFeatureObservation1)
  * resource = ActiveSulfasalazineFeatureObservation1
  // Should this actually be Patch to Observation/MedObservation7 with status = #amended?
// Entry for "Last CBC" not included since this the questionnaire is based on an asserted case feature that was not modified - see http://hl7.org/fhir/uv/sdc/extraction.html#obs-extract

Instance: InlineActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #inline
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse1)
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueBoolean = false // For example use, the author has updated the value of the asserted observation on questionnaire response
* effectiveDateTime = "2023-12-06T11:45:33+11:00" // Based on questionnaireResponse.authored considering this was modified



