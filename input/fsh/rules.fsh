RuleSet: DefinitionMetadata(id, type)
* extension[knowledgeCapability].valueCode = #computable
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* version = "0.1.0"
* status = #draft
* experimental = true
* publisher = "Acme Co."

RuleSet: ConformanceMetadata
* ^meta.profile = $cpg-casefeaturedefinition
* ^extension[$cpg-knowledgeCapability][+].valueCode = #sharable
* ^extension[$cpg-knowledgeCapability][+].valueCode = #computable
* ^extension[$cpg-knowledgeCapability][+].valueCode = #publishable
* ^extension[$cpg-knowledgeRepresentationLevel].valueCode = #structured
* ^experimental = true
* ^publisher = "Acme Co."

RuleSet: CaseFeatureExpressions(reference, baseExpression)
* ^extension[$cpg-inferenceExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-inferenceExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-inferenceExpression].valueExpression.expression = "{baseExpression} Inference"
* ^extension[$cpg-assertionExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-assertionExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-assertionExpression].valueExpression.expression = "{baseExpression} Assertion"
* ^extension[$cpg-featureExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-featureExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-featureExpression].valueExpression.expression = "{baseExpression}"

RuleSet: BundleEntryPut(resourceUrl)
* fullUrl = "http://example.org/{resourceUrl}"
* request
  * method = #PUT
  * url = "{resourceUrl}"