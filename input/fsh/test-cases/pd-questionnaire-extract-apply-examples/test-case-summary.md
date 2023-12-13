### Test Case

Given a patient who is taking Sulfasalazine (inferred from med request) with no CBC results, then recommend order CBC.

When assert CBC result date within the last 6 months, then no recommendation.

#### Sequence

1a. POST /PlanDefinition/$questionnaire (url, version, data)
1b. Response: Sulfasalazine monitoring bundle of 2 questionnaires (cf1 = true, cf2 = null)
2a. POST /Questionnaire/$assemble (q1, q2)
2b. Response: single questionnaire (q1 + q2)
3. Display questionnaire from 2b
4. Create questionnaire response (no input provided)
5a. POST /QuestionnaireResponse/$extract (qr = 4)
5b. Response: FHIR bundle of observations (cf1 observation)
6a. POST /PlanDefinition/$apply (data = 5b)
6b. Response: RequestGroup (serviceRequest order CBC)
7. Create questionnaire response with answer q2




