Instance: RheumatoidArthritisGuideline
InstanceOf: $cpg-pathwaydefinition
Usage: #definition
* insert DefinitionMetadata(RheumatoidArthritisGuideline, PlanDefinition)
* description = """
### Essentials
* If rheumatoid arthritis (RA) is suspected, the patient should be referred without delay to a rheumatology outpatient clinic.
  * RA as an immunological disorder may begin several years before the appearance of symptoms, which may, at first, be unspecific, making it impossible to distinguish incipient RA from other types of arthritis.
  * If there is inflammation in several, particularly small, joints, and rheumatoid factor and/or citrullinated peptide antibodies in blood, the patient probably has RA. Seronegative polyarthritis differs from seropositive polyarthritis as regards genetics and its more favourable prognosis, and it may prove in follow-up to be psoriatic arthropathy, for example.
  * ESR and CRP may be normal.
  * Systemic glucocorticoids interfere with the diagnosis and should therefore not be started in primary health care, but a glucocorticoid can be injected as first aid into inflamed joints.
  * New patients with symptoms of arthritis need to see a rheumatologist unless the diagnosis is evident and treatment can be provided on the primary care level, as is often the case with gout or reactive arthritis.
* RA is a progressive, debilitating disease but effective medication started early can make more than half of newly diagnosed patients asymptomatic within six months.
* The basic medication consists of a combination of methotrexate, sulfasalazine and hydroxychloroquine. Low glucocorticoid doses should be added to the regimen for at least a few months.
* Inflamed joints should be treated with glucocorticoid injections.
* RA not responding to combination drug therapy should be treated with biologicals biologicals or with a janus kinase (JAK) inhibitor.
* Physical exercise will improve the patient's functional ability and reduce the risk of cardiovascular disease.

### Epidemiology
* About 40 adults per 100 000 per year develop RA.
* The age at onset is most commonly 65-70 years but two in three of those developing the disease are younger than 65 years old.
* Two in three patients are women.
* Some people are genetically susceptible to RA.
* Smoking doubles the risk of the disease.

### Symptoms
* The onset of RA is usually insidious.
* Morning stiffness, tender and swollen joints are typical.
* Proximal interphalangeal and metacarpophalangeal joints, wrists, and balls of the feet are most commonly affected but basically any joint may become inflamed.
* Fatigue, malaise and mild fever may occur as systemic symptoms.

### Investigations in primary care
* See the article Clinical examination of patients with joint inflammation in primary health care 1.
* Palpation can be used to find out whether a patient with joint symptoms has arthritis.
* An inflamed joint is characterized by soft swelling, tenderness, pain on movement and a limited range of motion.
  * Fist closure is often limited in patients with inflammation of small finger joints or with flexor tenosynovitis.
  * Tenderness on lateral squeezing of the knuckles or balls of the feet suggests arthritis.
  * It may be difficult to distinguish arthritis from osteoarthritis. In fingers, osteoarthritis occurs in the distal or proximal interphalangeal joints, RA in proximal interphalangeal and metacarpophalangeal joints. Patients with osteoarthritis may develop rheumatoid arthritis.
* Laboratory tests: ESR, CRP, basic blood count with platelets, RF, anti-CCP antibodies
  * ALT, ALP, creatinine, urate, Borrelia antibodies, chemical screening of urine, ANAs, antibodies to diagnose reactive arthritis, as considered necessary (see Reactive arthritis > Diagnosis 2).
* If intra-articular injections are given, a synovial fluid sample should be taken at the same time for examination (synovial fluid leucocytes + differential count from synovial fluid, bacterial culture, possibly synovial fluid crystals), if fluid can be aspirated; see the article 3.
  * In patients with arthritis, synovial fluid is cloudy, with a leucocyte count exceeding 2 000 x 106/l.
  * Highly cloudy synovial fluid suggests bacterial arthritis, usually monoarthritis.
* Imaging of patients with arthritis should mainly be performed at a rheumatology outpatient clinic.

### Principles of drug treatment
* RA should be diagnosed and medication begun at a rheumatology outpatient clinic.
---
"""
* action[+]
  * title = "Beginning of treatment"
  * description = "Strategy for beginning treatment for RA"
  * code = $cpg-common-process#guideline-based-care
* action[+]
  * title = "Screening"
  * description = "Strategy for screening before starting to use immunosuppressive medication"
  * code = $cpg-common-process#guideline-based-care
* action[+]
  * title = "Monitoring of treatment"
  * description = "Strategy for monitoring during antirheumatic medication treatment"
  * code = $cpg-common-process#guideline-based-care
  * definitionCanonical = Canonical(MonitoringTestsForAntirheumaticDrugTherapy)