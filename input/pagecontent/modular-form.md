### SDC Modular Forms
Modular Forms describes an architecture to support constructing forms from other sub-forms and/or from libraries of pre-defined questions to ease form development and maintenance. See also the SDC specification [here](http://hl7.org/fhir/uv/sdc/STU3/modular.html).

### CH ORF Modular Form
It is common for questionnaires to share content - the same questions or even the same sections might appear in multiple forms. 

The mechanism for enabling re-use in CH ORF is as follows:   
[Modular Questionnaires](http://hl7.org/fhir/uv/sdc/STU3/modular.html#modular) allow one questionnaire to be composed of sub-questionnaires (which can in turn be composed of further sub-questionnaires, and so on).

The [ORF Questionnaire](Questionnaire-order-referral-form.html) is split up in different sections, e.g. Order, Receiver, Patient etc. Each of this section is defined
in a separate questionnaire module, in that way dependent Implementation Guides can directly reuse this sections into their derived
ORF Questionnaires.

The base ORF Questionnaire is available in a [modular version](Questionnaire-order-referral-form-modular.html) and in a [assembled version](Questionnaire-order-referral-form.html).

A Form Filler using the modular version needs to assemble the questionnaire with the subQuestionnaires. A FHIR server can support this by offering support for the [$assemble](http://hl7.org/fhir/uv/sdc/STU3/OperationDefinition-Questionnaire-assemble.html) operation.

#### CH ORF Questionnaire Section Modules

Each section of the [ORF Questionnaire](Questionnaire-order-referral-form.html) is defined by a modular subQuestionnaire:

* [Module Questionnaire Order](Questionnaire-ch-orf-module-order.html): Order section
* [Module Questionnaire Receiver](Questionnaire-ch-orf-module-receiver.html): Receiver section
* [Module Questionnaire Patient](Questionnaire-ch-orf-module-patient.html): Patient section
* [Module Questionnaire Requested Encounter](Questionnaire-ch-orf-module-requestedencounter.html): RequestedEncounter section
* [Module Questionnaire Coverage](Questionnaire-ch-orf-module-coverage.html): Coverage section
* [Module Questionnaire Sender](Questionnaire-ch-orf-module-sender.html): Sender section
* [Module Questionnaire Receiver Copy](Questionnaire-ch-orf-module-receivercopy.html): ReceiverCopy section
* [Module Questionnaire Appointment](Questionnaire-ch-orf-module-appointment.html): Appointment section


Further re-usable modules used in the sections:
* [Module Questionnaire Practitioner Name-Tel](Questionnaire-ch-orf-module-practitioner-nametel.html): Defining name and contact details
* [Module Questionnaire Address](Questionnaire-ch-orf-module-address.html): Address elements
