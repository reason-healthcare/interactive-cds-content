RuleSet: QuestionnaireMetaData(id)
* url = "http://questionnaire-processor/Questionnaire/{id}"
* status = #draft

RuleSet: QuestionnaireItem(id, path)
* linkId = "{path}"
* definition = "http://example.org/StructureDefinition/{id}#{path}"
