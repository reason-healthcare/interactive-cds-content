Instance: QuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #example
* insert QuestionnaireResponseMetaData(QuestionnaireAssembled1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeatureQuestionnaire1, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * answer[+].valueCoding = http://hl7.org/fhir/observation-status#preliminary
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.valueDateTime)
    * text = "Actual result"
    * answer[+].valueDateTime = "2023-05-06T10:10:00+11:00"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeatureQuestionnaire1, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * answer[+].valueCoding = http://hl7.org/fhir/observation-status#preliminary

