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
    * answer[+].valueBoolean = false // For example purposes, the author changes the response from true to false here
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * answer[+].valueDateTime = 2023-12-04T16:03:47.218-05:00 // For example purposes, the author does not change the date

