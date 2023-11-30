Alias: $loinc = http://loinc.org

Instance: QuestionnaireBundle2
InstanceOf: Bundle
Usage: #example
Description: "Test results for inferred case features"
* type = #collection
* insert QuestionnaireBundleEntry(ActiveSulfasalazineFeatureQuestionnaire2)
* insert QuestionnaireBundleEntry(LastCbcPanelReportDateFeatureQuestionnaire2)

Instance: ActiveSulfasalazineFeatureQuestionnaire2
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire2)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine

Instance: LastCbcPanelReportDateFeatureQuestionnaire2
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire2)
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2021-01-04T11:45:33+11:00" //create some test bundles that return various dates
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date