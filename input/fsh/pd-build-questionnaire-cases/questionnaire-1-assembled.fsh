Instance: QuestionnaireAssembled1
InstanceOf: Questionnaire
Usage: #example
* insert QuestionnaireMetaData(QuestionnaireAssembled1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2023-05-06T10:10:00+11:00"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date
