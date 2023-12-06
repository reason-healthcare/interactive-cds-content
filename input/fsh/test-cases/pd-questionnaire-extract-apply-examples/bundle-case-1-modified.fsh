Instance: ActiveSulfasalazineFeatureObservation1
InstanceOf: ActiveSulfasalazineFeature
Usage: #example
* derivedFrom = Reference(Questionnaire/QuestionnaireResponse1)
* status = #final
* code = http://example.org/CodeSystem/CaseFeatureCodes#on-medication-sulfasalazine
* subject = Reference(Patient7)
* performer = Reference(OrganizationShared)
* valueBoolean = false // For example use, the author has updated the value of the asserted observation on questionnaire response
* effectiveDateTime = "2023-12-06T11:45:33+11:00" // Based on questionnaireResponse.authored considering this was modified

Instance: BundleCase7Modified
InstanceOf: Bundle
Description: "Test case for asserted case features"
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient7)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter7)
* insert BundleEntry(Observation, ActiveSulfasalazineFeatureObservation1)
* insert BundleEntry(Observation, CBCObservation7)
* insert BundleEntry(Observation, r7-1)
* insert BundleEntry(Observation, r7-2)
* insert BundleEntry(MedicationRequest, MedicationRequest7)