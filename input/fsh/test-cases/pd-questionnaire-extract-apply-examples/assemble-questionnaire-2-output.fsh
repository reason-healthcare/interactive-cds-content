Instance: QuestionnaireAssembled2
InstanceOf: Questionnaire
Usage: #example
Description: "Assembled Questionnaire - Case2"
* insert QuestionnaireMetaData(QuestionnaireAssembled2)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
    * valueCode = #Observation
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true  // Currently not returning true b/c of issue with CQL
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, ObservationeffectiveDateTime)
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * initial.valueDateTime = "2023-04-01T16:03:47.218-05:00" // Should reflect current date
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
    * valueCode = #Observation
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2023-01-04T11:45:33+11:00"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.effectiveDateTime)
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * initial.valueDateTime = "2023-12-13T16:03:47.218-05:00" // Should reflect current date
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual Result"
    * type = #dateTime
    * initial.valueDateTime = "2023-12-13T16:03:47.218-05:00" // Should reflect current date