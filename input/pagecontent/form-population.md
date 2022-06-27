### SDC Form Population
Questionnaire Population describes how to design questionnaires to support pre-population of answers and how to use services that support pre-populating forms. See also the SDC specification [here](http://hl7.org/fhir/uv/sdc/STU3/populate.html).

#### CH ORF Form Population
ORF uses [Expression-based population](http://hl7.org/fhir/uv/sdc/STU3/populate.html#designing-questionnaires-to-support-populate) for [form population](http://hl7.org/fhir/uv/sdc/STU3/populate.html).

This allows to reduce data entry into forms when the relevant data already exists in discrete form within the clinical or administrative system completing the form. The SDC Form Filler and/or SDC Form Manager queries the clinical or administrative system during the form population process. The [ORF Questionnaire](questionnaire-form.html) defines two launchContext variables which must be provided to support the form population process:

- patient: The patient this from is referring to, needs to be a [Patient](http://hl7.org/fhir/patient.html) resource, is used for prepopulating the patient in the form.
- user: The practitioner which fills out the form, needs to be a [Practitioner](http://hl7.org/fhir/practitioner.html) resource, is used for prepopulating the sender in the form.

The form defines [variables and x-fhir-query](http://hl7.org/fhir/uv/sdc/STU3/expressions.html#expression-extensions) expressions to get the values from clinical or administrative system for the initial population:

*Patient prepopulation example:*

{% include img.html img="prepop-patient.png" width="90%" %}

*Sender prepopulation example:*

{% include img.html img="prepop-sender.png" width="90%" %}



