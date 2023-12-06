Instance: QuestionnaireAssembled2
InstanceOf: Questionnaire
Usage: #example
Description: "Assembled Questionnaire - Case2"
* insert QuestionnaireMetaData(QuestionnaireAssembled2)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * extension[sdc-questionnaire-observationExtract]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
    * valueBoolean = true
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
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
  * extension[sdc-questionnaire-observationExtract]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
    * valueBoolean = true
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * initial.valueDateTime = "2021-01-04T11:45:33+11:00"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.effectiveDateTime)
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * initial.valueDateTime = "2023-04-01T16:03:47.218-05:00" // Should reflect current date