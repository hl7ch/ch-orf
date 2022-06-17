### SDC Modular Forms
Modular Forms describes an architecture to support constructing forms from other sub-forms and/or from libraries of pre-defined questions to ease form development and maintenance. See also the SDC specification [here](http://hl7.org/fhir/uv/sdc/STU3/modular.html).

### CH ORF Modular Form
It is common for questionnaires to share content - the same questions or even the same sections might appear in multiple forms. 

The mechanism for enabling re-use in CH ORF is as follows:   
[Modular Questionnaires](http://hl7.org/fhir/uv/sdc/STU3/modular.html#modular) allow one questionnaire to be composed of sub-questionnaires (which can in turn be composed of further sub-questionnaires, and so on).

* [Questionnaire Order-Referral-Form](Questionnaire-order-referral-form.html)
* [Questionnaire Order-Referral-Form (Modular version)](Questionnaire-order-referral-form-modular.html)
   * [Module Questionnaire Order](): SubQuestionnaire ‘order’
   * [Module Questionnaire Receiver](): SubQuestionnaire ‘receiver’
   * [Module Questionnaire Patient](): SubQuestionnaire ‘patient’
   * [Module Questionnaire Requested Encounter](): SubQuestionnaire ‘requestedEncounter’
   * [Module Questionnaire Coverage](): SubQuestionnaire ‘coverage’
   * [Module Questionnaire Sender](): SubQuestionnaire ‘sender’
   * [Module Questionnaire Receiver Copy](): SubQuestionnaire ‘receiverCopy’
   * [Module Questionnaire Appointment](): SubQuestionnaire ‘appointment’
   * Further re-usable modules
      * [Module Questionnaire Practitioner Name-Tel](): SubQuestionnaire ‘practitioner-nametel’
      * [Module Questionnaire Address](): SubQuestionnaire ‘address’
