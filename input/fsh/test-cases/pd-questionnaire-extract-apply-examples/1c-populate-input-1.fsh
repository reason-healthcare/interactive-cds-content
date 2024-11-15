Instance: 1cPopulateParameters1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "questionnaire"
  * resource = 1bQuestionnaireAssembled1
* parameter[+]
  * name = "subject"
  * valueReference = Reference(Patient/Patient1)
* parameter[+]
  * name = "context"
  * part[+]
    * name = "name"
    * valueString = "Patient"
  * part[+]
    * name = "content"
    * valueReference = Reference(Bundle/BundleInitial)
