Alias: $loinc = http://loinc.org

Instance: SulfasalazineMonitoringRecommendationBundle
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://questionnaire-processor/Questionnaire/ActiveSulfasalazineFeatureQuestionnaire"
  * resource = ActiveSulfasalazineFeatureQuestionnaire
* entry[+]
  * fullUrl = "http://questionnaire-processor/Questionnaire/LastCbcPanelReportDateFeatureQuestionnaire"
  * resource = LastCbcPanelReportDateFeatureQuestionnaire

Instance: ActiveSulfasalazineFeatureQuestionnaire
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire, Observation.valueString)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true //create some test bundles that return true / false
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    // * answerValueSet = Canonical(observation-codes)
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine

Instance: LastCbcPanelReportDateFeatureQuestionnaire
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire)
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire, Observation.valueString)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2023-01-01" //create some test bundles that return various dates
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire, Observation.code)
      * extension
        * url = Canonical(questionnaire-hidden)
        * valueBoolean = true
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    // * answerValueSet = Canonical(observation-codes)
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date