### SDC Form Data Extraction
Data Extraction describes how to design questionnaires to support converting completed forms into a FHIR resource or Bundle of FHIR resources for subsequent analysis. See also the SDC specification [here](http://hl7.org/fhir/uv/sdc/STU3/extraction.html).

### CH ORF Data Extraction

An ORF document is a FHIR document (bundle) that contains the results of a filled in Questionnaire (QuestionnaireResponse Resource) together with the structured resources which map all information filled in the questionnaire. For ORF all data available in QuestionnaireResponse items have a representation in FHIR resource data elements (e.g a questionnaire response item for the gender of the patient is mapped to Patient.gender).

To support this extraction, the ORF guide supports [StructureMap-based extraction](http://hl7.org/fhir/uv/sdc/STU3/extraction.html#structuremap-based-extraction). The ORF Implementation Guide provides a [StructureMap](StructureMap-OrfQrToBundle.html) which maps all fields in the [ORF Questionnaire](questionnaire-form.html). To extract data from the completed QuestionnaireResponse,  the [StructureMap](StructureMap-OrfQrToBundle.html) needs to be invoked. This can be done by invoking the [Extract operation](http://hl7.org/fhir/uv/sdc/STU3/OperationDefinition-QuestionnaireResponse-extract.html) that takes a completed QuestionnaireResponse and converts it to a Bundle of resources by using metadata embedded in the Questionnaire the QuestionnaireResponse is based on.

Derived Implementation Guides should provide further maps that the clinical data from entries can be mapped to FHIR resource data elements.