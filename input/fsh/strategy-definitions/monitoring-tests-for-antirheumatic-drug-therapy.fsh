Instance: MonitoringTestsForAntirheumaticDrugTherapy
InstanceOf: $cpg-strategydefinition
Usage: #definition
Title: "Monitoring Tests for Antirheumatic Drug Therapy"
* insert DefinitionMetadata(MonitoringTestsForAntirheumaticDrugTherapy, PlanDefinition)
* useContext[+]
  * code = #venue
  * valueCodeableConcept = $RoleCode#PC "Primary care clinic"
* useContext[+]
  * code = #venue
  * valueCodeableConcept = $RoleCode#OF "Outpatient Facility"
* description = """
* As the individual efficacy and tolerability of drug therapy cannot be predicted, patients should be closely monitored by laboratory tests (see safety monitoring tables 1 and 2) and clinically.
* Recommendations concerning safety monitoring of antirheumatic medication vary to some extent in different areas. Consult local recommendations.

*Table 1. Monitoring tests for antirheumatic drug therapy.*
Tests should also be performed 2-3 weeks after any increase in drug dose. ESR and CRP should be checked on visits to the doctor and otherwise as needed.

| Drug         | Safety monitoring tests  |
|  :--- |  :--- |
| Methotrexate	                         ||
| At 3 weeks, 6 weeks, 12 weeks, then every 3-6 months | Basic blood count with platelets + differential count, ALT |
| Every 6 months  | Creatinine (in case of impaired renal function, dose reduction) |
| Sulfasalazine                     ||
| Every 6 months  | Basic blood count with platelets + differential count |
| Hydroxychloroquine                     ||
| No laboratory monitoring needed. Checkup by an ophthalmologist after 5 years of use||

### One month after starting treatment
* Visit to a rheumatology nurse or, if necessary, a physician

### Tree-month visit
* If remission has not been achieved, medication should be intensified.
* If methotrexate has been given orally, use of an injectable dosage form should now be started, and if the dose has been below 25 mg, it should be raised to this level now, unless there are contraindications to this.
* Poor response to treatment, several swollen joints and a high CRP level predict treatment failure. In such cases, a biological agent or a JAK inhibitor should be added to the regimen.

### Six-month visit
* If remission has been achieved, glucocorticoid medication should be gradually reduced.
* If the patient still has objective signs of arthritis, a biological agent or JAK inhibitor should be started. The EULAR recommendation for management updated in 2016 prefers biological agents because the available safety data covers a longer period of use.

### After six months
* The frequency of monitoring depends on disease activity.
* If remission has been achieved, follow-up visits should be scheduled for one and two years after the beginning of treatment.
* If, due to disease activity, major changes have had to be made to the medication or a biological agent or JAK inhibitor has had to be started, follow-up should be started from the beginning again, scheduling visits at 3 and 6 months.
"""
* action
  * title = "Recommend monitoring tests for RA therapy"
  * description = "Recommend monitoring tests for RA therapy"
  * trigger
    * type = #named-event
    * name = "patient-view"
  * code = $cpg-common-process#guideline-based-care
  * action[+]
    * title = "Recommend testing due to Methotrexate"
    * description = "Recommend testing due to Methotrexate"
    * code = $cpg-common-process#guideline-based-care
    * definitionCanonical = Canonical(MethotrexateMonitoringRecommendation)
  * action[+]
    * title = "Recommend testing due to Sulfasalazine"
    * description = "Recommend testing due to Sulfasalazine"
    * code = $cpg-common-process#guideline-based-care
    * definitionCanonical = Canonical(SulfasalazineMonitoringRecommendation)
