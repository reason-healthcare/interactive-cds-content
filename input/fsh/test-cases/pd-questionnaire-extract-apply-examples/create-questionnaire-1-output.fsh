Instance: QuestionnaireOutput1
InstanceOf: Bundle
Usage: #example
Description: "Bundle of questionnaires from $questionnaire - Case1"
* type = #collection
* insert QuestionnaireBundleEntry(ActiveSulfasalazineFeatureQuestionnaire1)
* insert QuestionnaireBundleEntry(LastCbcPanelReportDateFeatureQuestionnaire1)

Instance: ActiveSulfasalazineFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "On Sulfasalazine" // "On Sulfasalazine Asserted"?
      * reference = Canonical(ActiveSulfasalazineFeatureLogic)
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
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-medication-sulfasalazine
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.subject)
    * insert HiddenExtension
    * text = "Who and/or what the observation is about"
    * type = #reference
    // * initial.valueReference = Reference(Patient/Patient7)
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.performer)
    * text = "Who is responsible for the observation"
    * insert HiddenExtension
    * repeats = true
    * type = #reference
    // * initial.valueReference = Reference(Organization/OrganizationShared)
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.effectiveDateTime)
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * insert InitialDate1

Instance: LastCbcPanelReportDateFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire1)
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-itemExtractionContext]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Last CBC Panel Report Date"
      * reference = Canonical(LastCbcPanelReportDateFeatureLogic)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * answerValueSet = Canonical(observation-status)
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#last-cbc-panel-report-date
  * item
  * linkId = "ed3020dd-7716-4775-ba06-d38da5ddb9ea"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "Measurements and simple assertions"
  * type = #group
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.subject)
    * insert HiddenExtension
    * text = "Who and/or what the observation is about"
    * type = #reference
    // * initial.valueReference = Reference(Patient/Patient7)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.performer)
    * insert HiddenExtension
    * text = "Who is responsible for the observation"
    * repeats = true
    * type = #reference
    // * initial.valueReference = Reference(Organization/OrganizationShared)
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.effectiveDateTime)
    * insert HiddenExtension
    * text = "Clinically relevant time/time-period for observation"
    * type = #dateTime
    * insert InitialDate1
  * item[+]
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * insert InitialDate1