Instance: QuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Questionnaire response with answer to 'Last CBC Report' - Case2"
* insert QuestionnaireResponseMetaData(QuestionnaireAssembled1)
* subject = Reference(Patient/Patient1)
* authored = "2023-12-05T11:45:33+11:00"
* author = Reference(Parctitioner/Practitioner1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = true
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * insert AnswerDate1