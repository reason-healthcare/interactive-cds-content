Instance: ModularQuestionnaire1
InstanceOf: SDCModularQuestionnaire
Usage: #example
* insert QuestionnaireMetaData(ModularQuestionnaire1)
* extension[assemble-expectation]
  * valueCode = #assemble-root
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * extension[SubQuestionnaireExtension]
    * valueCanonical = Canonical(ActiveSulfasalazineFeatureQuestionnaire1)
  * type = #display
  * text = "ActiveSulfasalazineFeature sub-questionnaire"
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * extension[SubQuestionnaireExtension]
    * valueCanonical = Canonical(LastCbcPanelReportDateFeatureQuestionnaire1)
  * type = #display
  * text = "LastCbcPanelReportDateFeature sub-questionnaire"
* contained[+] = ActiveSulfasalazineFeatureQuestionnaire1
* contained[+] = LastCbcPanelReportDateFeatureQuestionnaire1

Instance: ActiveSulfasalazineFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(ActiveSulfasalazineFeatureQuestionnaire1)
* extension
  * url = $launch-context
  * extension[0]
    * url = "name"
    * valueCoding = $launch-context#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient
* item[+]
  * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[ItemPopulationContextExtension]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "On Sulfasalazine"
      * reference = "http://example.org/Library/ActiveSulfasalazineFeatureLogic"
      * name = "ActiveSulfasalazineFeature"
  * item[+]
    * insert QuestionnaireItem(ActiveSulfasalazineFeature, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * extension[InitialExpressionExtension]
      * valueExpression
        * language = #text/cql-expression
        * expression = "%ActiveSulfasalazineFeature.value[x]"
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

Instance: LastCbcPanelReportDateFeatureQuestionnaire1
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(LastCbcPanelReportDateFeatureQuestionnaire1)
* extension
  * url = $launch-context
  * extension[0]
    * url = "name"
    * valueCoding = $launch-context#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient
* item[+]
  * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[ItemPopulationContextExtension]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Last CBC Panel Report Date"
      * reference = "http://example.org/Library/LastCbcPanelReportDateFeatureLogic"
      * name = "LastCbcPanelReportDateFeature"
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
    * insert QuestionnaireItem(LastCbcPanelReportDateFeature, Observation.valueDateTime)
    * text = "Actual result"
    * type = #dateTime
    * extension[InitialExpressionExtension]
      * valueExpression
        * language = #text/cql-expression
        * expression = "%LastCbcPanelReportDateFeature.value[x]"