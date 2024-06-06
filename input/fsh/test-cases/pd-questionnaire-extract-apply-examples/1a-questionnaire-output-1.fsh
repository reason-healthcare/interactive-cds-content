Instance: QuestionnaireOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of questionnaires from $questionnaire - Case1"
* type = #collection
* insert QuestionnaireBundleEntry(ModularQuestionnaire1)
* insert QuestionnaireBundleEntry(ActiveSulfasalazineFeatureQuestionnaire1)
* insert QuestionnaireBundleEntry(LastCbcPanelReportDateFeatureQuestionnaire1)

Instance: ModularQuestionnaire1
InstanceOf: SDCModularQuestionnaire
Usage: #example
* insert QuestionnaireMetaData(ModularQuestionnaire1)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
  * valueCode = #assemble-root
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * extension[+]
    * url =  "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
    * valueCanonical = Canonical(ActiveSulfasalazineFeatureQuestionnaire1)
  * type = #display
  * text = "ActiveSulfasalazineFeature sub-questionnaire"
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * extension[+]
    * url =  "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
    * valueCanonical = Canonical(LastCbcPanelReportDateFeatureQuestionnaire1)
  * type = #display
  * text = "LastCbcPanelReportDateFeature sub-questionnaire"

Instance: ActiveSulfasalazineFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #example
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
  // CASE ONE
    * valueCode = #Observation
  // CASE TWO
    // * valueExpression
    //   * language = #text/cql-identifier
    //   * expression = "On Sulfasalazine" // "On Sulfasalazine Asserted"?
    //   * reference = Canonical(ActiveSulfasalazineFeatureLogic)
  // * item representing id of resource to update
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.value[x])
    * text = "Actual result"
    * type = #boolean
    * initial.valueBoolean = true
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.effective[x])
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * insert InitialDateCurrent

Instance: LastCbcPanelReportDateFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #example
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
    * valueCode = #Observation
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.value[x])
    * text = "Actual result"
    * type = #dateTime