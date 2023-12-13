Instance: QuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Questionnaire response - Case2"
* insert QuestionnaireResponseMetaData(QuestionnaireAssembled1)
* subject = Reference(Patient/Patient8)
* authored = "2023-12-05T11:45:33+11:00"
* author = Reference(Parctitioner/Practitioner8)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = false
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * answer[+].valueDateTime = "2023-12-13T16:03:47.218-05:00"