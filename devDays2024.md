# DevDays 2024 CPG Example

## Setup content development environment

Java and ruby are required to build the Implementation Guide.
```
ruby 3.3.0
java openjdk-21
```

If using asdf
```
asdf install
```

To update the publisher and ensure fsh, jekyll, and jake are installed, run
```
./bin/setup
```

Then install the following plugins in VS Code:

* FHIR Shorthand by MITRE-Health
* Clinical Quality Language (CQL) by Clinical Quality Framework

## Development

There are several build and test tasks available (`jake -T` show the full list):

### Build sushi
The sushi command converts FHIR Shorthand to FHIR JSON, putting the resulting files in `./fsh-generated/resources`.

```
jake build:sushi
```

### Build IG
This command runs the IG Publisher, which wraps the sushi command. Also converts the CQL to ELM and creates the corresponding FHIR library resources. It also runs validation and generates a static website. Lastly, it creates a FHIR package. The output of the publisher is in `./output`.
```
jake build:publish
```

### Test prepare
This command calles sushi, then makes copies of use case fixtures and vocabulary in the directory structure that the VS Code CQL plugin expects.
```
jake test:prepare
```

## Content for DevDays 2024

Content can be found at input/fsh

### Test Cases

Connecathon test cases are found at input/fsh/test-cases/pd-questionnaire-extract-apply-examples

The postman collection can be imported to run these test cases with $questionnaire, $assemble, and $apply. In order for the requests to work, postman environment variables should be set as follows.

| Variable | Value | Description |
| --- | --- | --- |
| cpgServer | http://localhost:9001 | Reson Framework CPG engine |
| contentEndpointType | hl7-fhir-file | Type of endpoint for content |
| contentEndpointAddress | {your local content path} | Local path to CPG Starter content |
| contentArtifactRoute | http://example.org | CPG Starter resources route pattern |
| baseResourceEndpointType | hl7-fhir-rest | Type of endpoint for FHIR base resources |
| baseResourceEndpointAddress | http://hapi.fhir.org/baseR4 | Address used to resolve base resources |
| baseResourceArtifactRoute | http://hl7.org/fhir | Base resource route pattern |
| terminologyEndpointType | hl7-fhir-file | Type of endpoint for terminology |
| terminologyEndpointAddress | {your local content path} | Local path to CPG Starter content which will also be used for teminology |

The Reason Framework $questionnaire operation uses configurable endpoints. See [CRMI  Artifact Endpoint Configurable](https://build.fhir.org/ig/HL7/crmi-ig/StructureDefinition-crmi-artifact-endpoint-configurable-operation.html) for more information.

## Running the CPG Engine

The CPG engine is available at https://github.com/reason-healthcare/reason-framework. Follow the readme there to run locally.
