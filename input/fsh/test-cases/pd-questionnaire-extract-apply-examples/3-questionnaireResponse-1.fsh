Instance: QuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Questionnaire response with modified Observation.valueBoolean - Case1"
* insert QuestionnaireResponseMetaData(QuestionnaireAssembled1)
* subject = Reference(Patient/Patient7)
* authored  = "2023-12-06T11:45:33+11:00"
* author = Reference(Practitioner/Practitioner7)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = true
/*
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * insert AnswerDate1
*/