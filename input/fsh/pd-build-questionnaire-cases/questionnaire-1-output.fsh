Alias: $loinc = http://loinc.org

Instance: QuestionnaireBundle1
InstanceOf: Bundle
Usage: #example
Description: "Test results for asserted case features"
* type = #collection
* insert QuestionnaireBundleEntry(ActiveSulfasalazineFeatureQuestionnaire1)
* insert QuestionnaireBundleEntry(LastCbcPanelReportDateFeatureQuestionnaire1)

Instance: ActiveSulfasalazineFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true //create some test bundles that return true / false
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

Instance: LastCbcPanelReportDateFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2023-05-06T10:10:00+11:00" //create some test bundles that return various dates
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