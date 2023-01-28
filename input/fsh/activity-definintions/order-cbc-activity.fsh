Instance: OrderCBCActivity
InstanceOf: $cpg-servicerequestactivity
Usage: #definition
* insert DefinitionMetadata(OrderCBCActivity, ActivityDefinition)
* description = "Order hemogram plus platelet count labratory panel"
* doNotPerform = false
* kind = #ServiceRequest
* productCodeableConcept = $LOINC#58410-2 "Complete blood count panel"