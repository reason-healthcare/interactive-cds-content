Instance: QuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
* insert QuestionnaireResponseMetaData(QuestionnaireAssembled1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire2, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * answer[+].valueCoding = http://hl7.org/fhir/observation-status#preliminary
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation.valueDateTime)
    * text = "Actual result"
    * answer[+].valueDateTime = "2021-01-04T11:45:33+11:00"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire2, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * answer[+].valueCoding = http://hl7.org/fhir/observation-status#preliminary
