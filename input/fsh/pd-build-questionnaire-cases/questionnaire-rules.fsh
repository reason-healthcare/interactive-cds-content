RuleSet: QuestionnaireMetaData(id)
* url = "http://questionnaire-processor/Questionnaire/{id}"
* status = #draft

RuleSet: QuestionnaireItem(id, path)
* linkId = "{path}"
* definition = "http://example.org/StructureDefinition/{id}#{path}"

RuleSet: DataBundleEntry(resourceType, id)
* entry[+]
  * fullUrl = "http://example.org/{resourceType}/{id}"
  * resource = {id}

RuleSet: QuestionnaireBundleEntry(id)
* entry[+]
  * fullUrl = "http://questionnaire-processor/Questionnaire/{id}"
  * resource = {id}

RuleSet: QuestionnaireResponseMetaData(questionnaireId)
* questionnaire = Canonical({questionnaireId})
* status = #completed
