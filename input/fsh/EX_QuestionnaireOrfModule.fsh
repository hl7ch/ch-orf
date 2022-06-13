Instance: order-referral-form-modular
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Order-Referral-Form"
Description: "Example for Questionnaire"
* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
/*--*/
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[0].valueId = "Bundle"
* extension[=].extension[1].url = "type"
* extension[=].extension[1].valueCode = #Bundle
* extension[=].extension[2].url = "description"
* extension[=].extension[2].valueString = "The Bundle that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form-modular"
* name = "OrderReferralForm"
* title = "Order-Referral-Form"
* status = #active
* subjectType = #Patient
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display

// ---------- sender (Absender) ----------
//------- Pull down ----

* item[+].linkId = "sender.pulldown"
* item[=].text = "Absender anzeigen"
* item[=].type = #boolean

//------------------------------

/* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
*/
// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "sender.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

//------- Pull down ----
* item[+].linkId = "familyDoctor.pulldown"
* item[=].text = "Absender ist der Hausarzt?"
* item[=].type = #boolean

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Satinär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"
* item[=].item.type = #display

/*------ Appointment ------------------------------ */
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
// Design as agreed with eHealth Suisse and Cistec 09.06.2021

//------- Pull down ----

* item[+].linkId = "coverage.pulldown"
* item[=].text = "Kostenträger anzeigen"
* item[=].type = #boolean
//-----------------------

/* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
*/
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item[=].linkId = "coverage.1"
* item[=].item[=].text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item[=].type = #display
* item[=].item[=].enableWhen.question = "coverage.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

// populate with familydoctor if familydoctor is not sender)
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-familydoctor|2.0.0"
* item[=].item[=].linkId = "familydoctor.1"
* item[=].item[=].text = "Unable to resolve 'familydoctor' sub-questionnaire"
* item[=].item[=].type = #display
* item[=].item[=].enableWhen.question = "familyDoctor.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item[=].linkId = "receiverCopy.1"
* item[=].item[=].text = "Unable to resolve 'receivercopy' sub-questionnaire"
* item[=].item[=].type = #display



// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string
* item[=].item[=].required = true


Instance: ch-orf-module-order
InstanceOf: Questionnaire
Title: "Module Questionnaire order"
Description: "Subquestionnaire order"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order"
* name = "ModuleQuestionnaireOrderForm"
* title = "Module Questionnaire Order Form"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

//------- Pull down ----

* item[+].linkId = "identifier.pulldown"
* item[=].text = "Auftragsnummern anzeigen"
* item[=].type = #boolean

//------------------------------

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "identifier.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "identifier.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:precedentDocument"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "identifier.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


// ---------- Order Priority ----------
* item[+].linkId = "order.priority"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.priority"
* item[=].text = "Auftragspriorität"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].valueCoding = RequestPriority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].answerOption[+].valueCoding = RequestPriority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].answerOption[+].valueCoding = RequestPriority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."


// ---------- Urgent Notification Contact for this document ----------
/* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group
*/

* item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Zu benachrichtigende Person bei Eingang des Auftrags"
* item[=].item[=].type = #group
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'order.notificationContactDocument.practitioner.'"
* item[=].item[=].enableWhen.question = "order.priority"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = RequestPriority#stat

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].item[=].linkId = "order.notificationContactDocument.practitioner.1"
* item[=].item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].item[=].type = #display


// ---------- Urgent Notification Contact for the Response to this document ----------
/* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForTheResponseToThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
*/

* item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Zu benachrichtigende Person für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'order.notificationContactDocumentResponse.practitioner.'"
* item[=].item[=].enableWhen.question = "order.priority"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = RequestPriority#stat

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].item[=].linkId = "order.notificationContactDocumentResponse.practitioner.1"
* item[=].item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].item[=].type = #display


Instance: ch-orf-module-receiver
InstanceOf: Questionnaire
Title: "Module Questionnaire receiver"
Description: "Subquestionnaire receiver"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver"
* name = "ModuleQuestionnaireOrderReceiver"
* title = "Module Questionnaire Order Receiver"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

* item[+].linkId = "receiver.practitioner"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].text = "Empfangende Person"
* item[=].type = #group

* item[=].item[+].linkId = "receiver.practitioner.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].text = "Titel"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].text = "GLN"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].text = "ZSR"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[+].linkId = "receiver.organization"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].text = "Empfangende Organisation"
* item[=].type = #group

* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "'receiver.organization.'"

* item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].text = "Name der Organisation"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].text = "GLN"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "receiver.organization.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display


Instance: ch-orf-module-patient
InstanceOf: Questionnaire
Title: "Module Questionnaire patient"
Description: "Subquestionnaire patient"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient"
* name = "ModuleQuestionnaireOrderPatient"
* title = "Module Questionnaire Order Patient"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"



* item[+].linkId = "patient.localPid"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.identifier:LocalPid.value"
* item[=].text = "Lokale Patienten-ID"
* item[=].type = #string

* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension.valueBoolean = true
* item[=].linkId = "patient.localPidDomain"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.identifier:LocalPid.system"
* item[=].text = "Lokale Patienten-ID Domain"
* item[=].type = #string

* item[+].linkId = "patient.familyName"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.name.family"
* item[=].text = "Name"
* item[=].type = #string

* item[+].linkId = "patient.givenName"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.name.given"
* item[=].text = "Vorname"
* item[=].type = #string

* item[+].linkId = "patient.gender"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.gender"
* item[=].text = "Geschlecht"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding = AdministrativeGender#male "Männlich"
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].valueCoding = AdministrativeGender#female "Weiblich"
* item[=].answerOption[+].valueCoding = AdministrativeGender#other "Anderes"

* item[+].linkId = "patient.birthDate"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.birthDate"
* item[=].text = "Geburtsdatum"
* item[=].type = #date



//------- Pull down ----

* item[+].linkId = "patient.pulldown"
* item[=].text = "Weitere Angaben"
* item[=].type = #boolean

//------------------------------



* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#1 "ledig"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#2 "verheiratet"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#3 "verwitwet"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#4 "geschieden"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#5 "unverheiratet"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#6 "in eingetragener Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#7 "aufgelöste Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = EchMaritalStatus#9 "unbekannt"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].item[=].linkId = "patient.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.languageOfCorrespondance"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.communication:languageOfCorrespondance"
* item[=].item[=].text = "Korrespondenssprache"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.languageCode"
* item[=].item[=].enableWhen.question = "patient.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

// ---------- Patient Contact Person : The principle target of a particular Form Content is one patient ----------


/* item[+].linkId = "patient.contactperson"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact"
* item[=].text = "Kontaktperson"
* item[=].type = #group
*/

//------- Pull down ----

* item[+].linkId = "patient.contactperson.pulldown"
* item[=].text = "Kontaktperson"
* item[=].type = #boolean

//------------------------------


* item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.contactperson.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.contactperson.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.contactperson.relationship"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact.relationship.text"
* item[=].item[=].text = "Beziehung"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.contactperson.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[=].enableWhen.question = "patient.contactperson.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.contact.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "patient.contactperson.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


Instance: ch-orf-module-familydoctor
InstanceOf: Questionnaire
Title: "Module Family Docotor"
Description: "Subquestionnaire Family Docotor"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-familydoctor"
* name = "ModuleQuestionnaireOrderRequestedEncounter"
* title = "Module Questionnaire Order requestedEncounter"
* status = #active
* date = "2022-06-08"
* publisher = "HL7 Switzerland"

/* item[+].linkId = "familyDocotor.practitionerRole"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].type = #group
* item[=].repeats = true
*/
* item[+].linkId = "familyDocotor.practitionerRole.practitioner"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].text = "Hausarzt"
* item[=].type = #group
/*
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'familyDocotor.practitionerRole.practitioner.'"
*/
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].linkId = "familyDocotor.practitionerRole.practitioner.1"
* item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].type = #display

/* item[=].item[+].linkId = "familyDocotor.practitionerRole.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].type = #group
*/

//------- Pull down ----

* item[=].item[+].linkId = "familydoctor.pulldown"
* item[=].item[=].text = "Weitere Angaben"
* item[=].item[=].type = #boolean

//------------------------------


/* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'familyDocotor.practitionerRole.organization.'"
*/



* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "familyDocotor.practitionerRole.organization.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display
* item[=].item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

/*
* item[+].linkId = "familyDoctor.practitioner.title"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].text = "Titel"
* item[=].type = #string

* item[+].linkId = "familyDoctor.practitioner.familyName"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].text = "Name"
* item[=].type = #string

* item[+].linkId = "familyDoctor.practitioner.givenName"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].text = "Vorname"
* item[=].type =  #string

* item[+].linkId = "familyDoctor.practitioner.phone"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].text = "Telefon"
* item[=].type = #string

* item[+].linkId = "patient.generalPractitioner.practitioner.email"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].text = "E-Mail"
* item[=].type = #string

//------- Pull down ----

* item[+].linkId = "patient.contactperson.pulldown"
* item[=].text = "Weitere Angaben"
* item[=].type = #boolean

//------------------------------

* item[=].item[+].linkId = "familyDoctor.practitioner.gln"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].text = "GLN"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "familyDoctor.practitioner.zsr"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].text = "ZSR"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "familyDoctor.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].type = #group
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'patient.generalPractitioner.organization.'"

* item[=].item[=].item[+].linkId = "familyDoctor.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "familyDoctor.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "familyDoctor.organization.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display
*/



Instance: ch-orf-module-requestedencounter
InstanceOf: Questionnaire
Title: "Module Questionnaire requestedEncounter"
Description: "Subquestionnaire patrequestedEncounterient"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter"
* name = "ModuleQuestionnaireOrderRequestedEncounter"
* title = "Module Questionnaire Order requestedEncounter"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

* item[+].linkId = "requestedEncounter.class"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.class"
* item[=].type = #choice
* item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].answerOption[+].valueCoding = V3ActCode#AMB "Ambulant"
* item[=].answerOption[+].valueCoding = V3ActCode#IMP "Stationär"
* item[=].answerOption[+].valueCoding = V3ActCode#EMER "Notfall"

* item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.extension:desiredAccommodation"
* item[=].text = "Zimmerkategorie"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding = ChCoreCSEncounterType#1 "allgemein"
* item[=].answerOption[+].valueCoding = ChCoreCSEncounterType#2 "halbprivat"
* item[=].answerOption[+].valueCoding = ChCoreCSEncounterType#3 "privat"


Instance: ch-orf-module-coverage
InstanceOf: Questionnaire
Title: "Module Questionnaire Coverage"
Description: "Subquestionnaire Converage"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage"
* name = "ModuleQuestionnaireOrderCoverage"
* title = "Module Questionnaire Order Coverage"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

//------- Pull down ----

* item[+].linkId = "coverage.pulldown"
* item[=].text = "Weitere Angaben"
* item[=].type = #boolean

//------------------------------


* item[+].linkId = "coverage.beneficiary"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.beneficiary"
* item[=].text = "Begünstigter (Patient)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.beneficiary.ahvn13"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient.identifier:AHVN13"
* item[=].item[=].text = "AHV-Nr. des Patienten"
* item[=].item[=].type = #string

// KVG
* item[+].linkId = "coverage.kvg"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Krankenkasse (nach KVG)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.kvg.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].type = #string

// UVG
* item[+].linkId = "coverage.uvg"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Unfallversicherung (nach UVG)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.uvg.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].text = "Schadennummer"
* item[=].item[=].type = #string

// Zusatz
* item[+].linkId = "coverage.vvg"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.vvg.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].type = #string

// IV
* item[+].linkId = "coverage.iv"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Invalidenversicherung (IV)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].text = "IV-Verfügungsnummer"
* item[=].item[=].type = #string

// MV
* item[+].linkId = "coverage.mv"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Militärversicherung (MV)"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.mv.versichertennummer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].text = "MV-Versichertennummer"
* item[=].item[=].type = #string

// Self
* item[+].linkId = "coverage.self"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Selbstzahler"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.self.patient"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "coverage.self.patientRelatedPerson"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Andere Person"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen[+].question = "coverage.self.patient"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerBoolean = false

* item[=].item[+].linkId = "coverage.self.relatedPerson" 
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Andere Person"   
* item[=].item[=].type = #group
* item[=].item[=].enableWhen[+].question = "coverage.self.patientRelatedPerson"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'coverage.self.relatedPerson.'"

* item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.familyName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.givenName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

// Other
* item[+].linkId = "coverage.other"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].text = "Anderer Kostenträger"
* item[=].type = #group
* item[=].enableWhen.question = "familydoctor.pulldown"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "coverage.other.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].type = #string

* item[+].linkId = "coverage.other.id"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].text = "Beliebige ID"
* item[=].type = #string

* item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier.type.text"
* item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].type = #string

// The situation where a person and not a organization is an other payer is not depicted. 
// Id's of insurances other than kvg are proprietary. Zusatzversicherung however may use the Kennnummer der Versichertenkarte (KVG).
// Id's for other are not defined.

Instance: ch-orf-module-sender
InstanceOf: Questionnaire
Title: "Module Questionnaire Sender"
Description: "Subquestionnaire Sender"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender"
* name = "ModuleQuestionnaireOrderSender"
* title = "Module Questionnaire Order Sender"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[+].linkId = "sender.author"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].text = "Verantwortlicher"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "sender.author.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].type = #group
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'sender.author.organization.'"

* item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "sender.author.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[+].linkId = "sender.dataenterer"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:dataEnterer"
* item[=].text = "Erfasser"
* item[=].type = #group

* item[=].item[+].linkId = "sender.dataenterer.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Erfassende Person"
* item[=].item[=].type = #group


* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'sender.dataenterer.practitioner.'"

* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].linkId = "sender.dataenterer.practitioner.1"
* item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].type = #display

Instance: ch-orf-module-receivercopy
InstanceOf: Questionnaire
Title: "Module Questionnaire receiverCopy"
Description: "Subquestionnaire receiverCopy"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy"
* name = "ModuleQuestionnaireOrderReceiverCopy"
* title = "Module Questionnaire Order receiverCopy"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

* item[+].linkId = "receiverCopy.practitionerRole"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.practitioner.'"

* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].linkId = "receiverCopy.practitionerRole.practitioner.1"
* item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.organization.'"

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

* item[+].linkId = "receiverCopy.patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient"
* item[=].text = "Patient selbst"
* item[=].type = #boolean


* item[+].linkId = "receiverCopy.relatedPerson"
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].text = "Andere Person"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "receiverCopy.relatedPerson.familyName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiverCopy.relatedPerson.'"

* item[=].item[+].linkId = "receiverCopy.relatedPerson.givenName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].text = "Vorame"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "receiverCopy.relatedPerson.phone"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "receiverCopy.relatedPerson.email"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "receiverCopy.relatedPerson.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display

Instance: ch-orf-module-initator
InstanceOf: Questionnaire
Title: "Module Questionnaire initator"
Description: "Subquestionnaire initator"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initator"
* name = "ModuleQuestionnaireOrderInitator"
* title = "Module Questionnaire Order initator"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

* item[+].linkId = "initator.practitionerRole"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "initator.practitionerRole.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initator.practitionerRole.practitioner.'"

* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].linkId = "initator.practitionerRole.practitioner.1"
* item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "initator.practitionerRole.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initator.practitionerRole.organization.'"

* item[=].item[=].item[+].linkId = "initator.practitionerRole.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "initator.practitionerRole.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

* item[+].linkId = "initator.patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patient#Patient"
* item[=].text = "Patient selbst"
* item[=].type = #boolean


* item[+].linkId = "initator.relatedPerson"
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].text = "Andere Person"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "initator.relatedPerson.familyName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initator.relatedPerson.'"

* item[=].item[+].linkId = "initator.relatedPerson.givenName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].text = "Vorame"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "initator.relatedPerson.phone"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "initator.relatedPerson.email"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "initator.relatedPerson.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display


/*------ Appointment ------------------------------ */
Instance: ch-orf-module-appointment
InstanceOf: Questionnaire
Title: "Module Questionnaire Appointment"
Description: "Subquestionnaire appointment"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment"
* name = "ModuleQuestionnaireOrderAppointment"
* title = "Module Questionnaire Order Appointment"
* status = #active
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

* item[+].linkId = "appointment.location"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.participant.actor"
* item[=].text = "Ort der Durchführung"
* item[=].type = #group
* item[=].required = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "'appointment.location.'"

* item[=].item[+].linkId = "appointment.location.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.name"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "appointment.location.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "appointment.location.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "appointment.location.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display

* item[+].linkId = "appointment.requestedPeriod"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod"
* item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].type = #group

* item[=].item[+].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.start"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime

* item[+].linkId = "appointment.status"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.status"
* item[=].text = "Status"
* item[=].required = true           // also required in Appointment.status
* item[=].type = #choice
* item[=].answerOption[+].valueCoding = AppointmentStatus#proposed "Wunsch des Patienten (vorgeschlagen)"
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].valueCoding = AppointmentStatus#pending "Vom Patienten bestätigt, aber vom Leistungserbringer noch nicht (ausstehend)"
* item[=].answerOption[+].valueCoding = AppointmentStatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
// * item[=].answerValueSet = "http://fhir.ch/ig/ch-orf/ValueSet/ch-orf-vs-appointmentstatus"

* item[+].linkId = "appointment.patientInstruction"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.patientInstruction"
* item[=].text = "Patienteninformation für diesen Termin"
* item[=].type = #string

/*------ Practitioner Name / Telecom ------------------------------ */
Instance: ch-orf-module-practitioner-nametel
InstanceOf: Questionnaire
Title: "Module Questionnaire Practitioner with Name/Telecom"
Description: "Subquestionnaire Practitioner with Name/Telecom"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* extension[1].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
* extension[=].valueString = "linkIdPrefix"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel"
* name = "ModuleQuestionnairePractitionerNameTel"
* title = "Module Questionnaire Practitioner with name and telecom"
* status = #active
* date = "2022-05-09"
* publisher = "HL7 Switzerland"

* item[+].linkId = "title"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].text = "Titel"
* item[=].type = #string

* item[+].linkId = "familyName"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].text = "Name"
* item[=].type = #string

* item[+].linkId = "givenName"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].text = "Vorname"
* item[=].type = #string

* item[+].linkId = "phone"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].text = "Telefon"
* item[=].type = #string

// Name of organization is included here in case Name and Givennname of Practioner are left empty
* item[=].item[+].linkId = "familyDocotor.practitionerRole.organization.name"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].text = "Name der Organisation"
* item[=].item[=].type = #string

* item[+].linkId = "email"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].text = "E-Mail"
* item[=].type = #string

/*--------- Inititaor
Person or body who initiated the service request; particularly in the context of spitex*/

Instance: ch-orf-module-initiator
InstanceOf: Questionnaire
Title: "Module Questionnaire Initiator"
Description: "Subquestionnaire initiator"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator"
* name = "ModuleQuestionnaireOrderInitiator"
* title = "Module Questionnaire Order Initiator"
* status = #active
* date = "2022-06-01"
* publisher = "HL7 Switzerland"

* item[+].linkId = "initiator.practitionerRole.class.legalguardian"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.class#legal"
* item[=].text = "Gesetzlicher Vertreter?"
* item[=].type = #choice
* item[=].answerOption[+].valueCoding = SCT#58626002  "Legal guardian (person)"

* item[=].item[+].linkId = "initiator.practitionerRole.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.practitioner.'"

* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].linkId = "initiator.practitionerRole.practitioner.1"
* item[=].item[=].text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "initiator.practitionerRole.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.organization.'"

* item[=].item[=].item[+].linkId = "initiator.practitionerRole.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

* item[+].linkId = "initiator.relatedPerson"
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].text = "Andere Person"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'initiator.relatedPerson.'"

* item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].text = "Vorame"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "initiator.relatedPerson.phone"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "initiator.relatedPerson.email"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].linkId = "initiator.relatedPerson.1"
* item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].type = #display


/*------ Address ------------------------------ */
Instance: ch-orf-module-address
InstanceOf: Questionnaire
Title: "Module Questionnaire Address"
Description: "Subquestionnaire Practitioner Address"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* extension[1].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
* extension[=].valueString = "linkIdPrefix"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address"
* name = "ModuleQuestionnaireAddress"
* title = "Module Questionnaire Address"
* status = #active
* date = "2022-05-09"
* publisher = "HL7 Switzerland"

* item[+].linkId = "streetAddressLine"
* item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].type = #string
* item[=].repeats = true

* item[+].linkId = "postalCode"
* item[=].text = "PLZ"
* item[=].type = #string

* item[+].linkId = "city"
* item[=].text = "Ort"
* item[=].type = #string

* item[+].linkId = "country"
* item[=].text = "Land"
* item[=].type = #string

/*------ Patient Consent ------------------------------ */
Instance: ch-orf-module-Consent
InstanceOf: Questionnaire
Title: "Module Questionnaire Patient Consent"
Description: "Subquestionnaire Patient Consent"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* extension[1].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
* extension[=].valueString = "linkIdPrefix"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent"
* name = "ModuleQuestionnaiConsent"
* title = "Module Questionnaire Patient Consent"
* status = #active
* date = "2022-05-09"
* publisher = "HL7 Switzerland"

* item[+].linkId = "consent.statement"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition//ch-orf-servicerequest#ServiceRequest."
* item[=].text = "Ist der Patient über die Anmeldung informiert und explizit einverstanden?"
* item[=].type = #choice
* item[=].answerValueSet = "http://fhir.ch/ig/ch-orf/ValueSet/ch-orf-vs-consentstatus"
* item[=].initial.valueCoding = SCT#373068000
* item[=].required = true


* item[=].item[+].linkId = "consent.statement.note"
* item[=].item[=].definition = ""
* item[=].item[=].text = "Anmerkung"
* item[=].item[=].type = #string
* item[=].item[=].required = true
