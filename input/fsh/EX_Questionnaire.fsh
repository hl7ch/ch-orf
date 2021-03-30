Instance: order-referral-form
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Order-Referral-Form"
Description: "Example for Questionnaire"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[1] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[2] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension[targetStructureMap].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[targetStructureMap].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* extension[1].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[1].extension[0].url = "name"
* extension[1].extension[0].valueId = "Bundle"
* extension[1].extension[1].url = "type"
* extension[1].extension[1].valueCode = #Bundle
* extension[1].extension[2].url = "description"
* extension[1].extension[2].valueString = "The Bundle that is to be used to pre-populate the form"
* extension[2].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[2].valueExpression.name = "Patient"
* extension[2].valueExpression.language = #text/fhirpath
* extension[2].valueExpression.expression = "%Bundle.entry[0].resource.subject.resolve()"
* extension[3].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[3].valueExpression.name = "Orderer"
* extension[3].valueExpression.language = #text/fhirpath
* extension[3].valueExpression.expression = "%Bundle.entry[0].resource.author.resolve().ofType(Practitioner)"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form"
* name = "OrderReferralForm"
* title = "Order-Referral-Form"
* status = #active
* subjectType = #Patient
* date = "2021-03-26"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[0].linkId = "order"
* item[0].text = "Auftrag"
* item[0].type = #group
* item[0].required = true

* item[0].item[0].linkId = "order.placerOrderIdentifier"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].type = #string

* item[0].item[1].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[1].extension.valueBoolean = true
* item[0].item[1].linkId = "order.placerOrderIdentifierDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].type = #string

* item[0].item[2].linkId = "order.fillerOrderIdentifier"
* item[0].item[2].text = "Auftragsnummer des Auftragsempfängers"
* item[0].item[2].type = #string

* item[0].item[3].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[3].extension.valueBoolean = true
* item[0].item[3].linkId = "order.fillerOrderIdentifierDomain"
* item[0].item[3].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[0].item[3].type = #string

* item[0].item[4].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[4].extension.valueBoolean = true
* item[0].item[4].linkId = "order.precedentDocumentIdentifier"
* item[0].item[4].text = "Identifier des Vorgängerdokuments"
* item[0].item[4].type = #string

// ---------- Urgent Notification Contact for this document ----------
* item[0].item[5].linkId = "order.notificationContactDocument"
* item[0].item[5].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[0].item[5].type = #group

* item[0].item[5].item[0].linkId = "order.notificationContactDocument.practitioner"
* item[0].item[5].item[0].text = "Zu benachrichtigende Person"
* item[0].item[5].item[0].type = #group

* item[0].item[5].item[0].item[0].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[0].item[5].item[0].item[0].text = "Name"
* item[0].item[5].item[0].item[0].type = #string

* item[0].item[5].item[0].item[1].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[0].item[5].item[0].item[1].text = "Vorname"
* item[0].item[5].item[0].item[1].type = #string

* item[0].item[5].item[0].item[2].linkId = "order.notificationContactDocument.practitioner.title"
* item[0].item[5].item[0].item[2].text = "Titel"
* item[0].item[5].item[0].item[2].type = #string

* item[0].item[5].item[0].item[3].linkId = "order.notificationContactDocument.practitioner.phone"
* item[0].item[5].item[0].item[3].text = "Telefon"
* item[0].item[5].item[0].item[3].type = #string

* item[0].item[5].item[0].item[4].linkId = "order.notificationContactDocument.practitioner.email"
* item[0].item[5].item[0].item[4].text = "E-Mail"
* item[0].item[5].item[0].item[4].type = #string

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[0].item[6].linkId = "order.notificationContactDocumentResponse"
* item[0].item[6].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[0].item[6].type = #group

* item[0].item[6].item[0].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[0].item[6].item[0].text = "Zu benachrichtigende Person"
* item[0].item[6].item[0].type = #group

* item[0].item[6].item[0].item[0].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[0].item[6].item[0].item[0].text = "Name"
* item[0].item[6].item[0].item[0].type = #string

* item[0].item[6].item[0].item[1].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[0].item[6].item[0].item[1].text = "Vorname"
* item[0].item[6].item[0].item[1].type = #string

* item[0].item[6].item[0].item[2].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[0].item[6].item[0].item[2].text = "Titel"
* item[0].item[6].item[0].item[2].type = #string

* item[0].item[6].item[0].item[3].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[0].item[6].item[0].item[3].text = "Telefon"
* item[0].item[6].item[0].item[3].type = #string

* item[0].item[6].item[0].item[4].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[0].item[6].item[0].item[4].text = "E-Mail"
* item[0].item[6].item[0].item[4].type = #string

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[0].item[7].linkId = "order.priority"
* item[0].item[7].text = "Auftragspriorität"
* item[0].item[7].type = #choice
* item[0].item[7].answerOption[0].valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[0].item[7].answerOption[0].initialSelected = true
* item[0].item[7].answerOption[1].valueCoding = RequestPriority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[0].item[7].answerOption[2].valueCoding = RequestPriority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[0].item[7].answerOption[3].valueCoding = RequestPriority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."

// ---------- Request Receiver: Person/organization who receives the request ----------
* item[1].linkId = "receiverRequest"
* item[1].text = "Auftragsempfänger"
* item[1].type = #group

* item[1].item[0].linkId = "receiverRequest.practitioner"
* item[1].item[0].text = "Auftragsempfangende Person"
* item[1].item[0].type = #group

* item[1].item[0].item[0].linkId = "receiverRequest.practitioner.familyName"
* item[1].item[0].item[0].text = "Name"
* item[1].item[0].item[0].type = #string

* item[1].item[0].item[1].linkId = "receiverRequest.practitioner.givenName"
* item[1].item[0].item[1].text = "Vorname"
* item[1].item[0].item[1].type = #string

* item[1].item[0].item[2].linkId = "receiverRequest.practitioner.title"
* item[1].item[0].item[2].text = "Titel"
* item[1].item[0].item[2].type = #string

* item[1].item[0].item[3].linkId = "receiverRequest.practitioner.gln"
* item[1].item[0].item[3].text = "GLN"
* item[1].item[0].item[3].type = #string

* item[1].item[0].item[4].linkId = "receiverRequest.practitioner.phone"
* item[1].item[0].item[4].text = "Telefon"
* item[1].item[0].item[4].type = #string

* item[1].item[0].item[5].linkId = "receiverRequest.practitioner.email"
* item[1].item[0].item[5].text = "E-Mail"
* item[1].item[0].item[5].type = #string

* item[1].item[1].linkId = "receiverRequest.organization"
* item[1].item[1].text = "Auftragsempfangende Organisation"
* item[1].item[1].type = #group

* item[1].item[1].item[0].linkId = "receiverRequest.organization.name"
* item[1].item[1].item[0].text = "Name der Organisation"
* item[1].item[1].item[0].type = #string

* item[1].item[1].item[1].linkId = "receiverRequest.organization.streetAddressLine"
* item[1].item[1].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[1].item[1].type = #string
* item[1].item[1].item[1].repeats = true

* item[1].item[1].item[2].linkId = "receiverRequest.organization.postalCode"
* item[1].item[1].item[2].text = "PLZ"
* item[1].item[1].item[2].type = #string

* item[1].item[1].item[3].linkId = "receiverRequest.organization.city"
* item[1].item[1].item[3].text = "Ort"
* item[1].item[1].item[3].type = #string

* item[1].item[1].item[4].linkId = "receiverRequest.organization.country"
* item[1].item[1].item[4].text = "Land"
* item[1].item[1].item[4].type = #string

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[2].linkId = "patient"
* item[2].text = "Patient"
* item[2].type = #group

* item[2].item[0].linkId = "patient.familyName"
* item[2].item[0].text = "Name"
* item[2].item[0].type = #string

* item[2].item[1].linkId = "patient.givenName"
* item[2].item[1].text = "Vorname"
* item[2].item[1].type = #string

* item[2].item[2].linkId = "patient.localPid"
* item[2].item[2].text = "Lokale Patienten-ID"
* item[2].item[2].type = #string

* item[2].item[3].linkId = "patient.birthDate"
* item[2].item[3].text = "Geburtsdatum"
* item[2].item[3].type = #date

* item[2].item[4].linkId = "patient.gender"
* item[2].item[4].text = "Geschlecht"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueCoding = AdministrativeGender#male "Männlich"
* item[2].item[4].answerOption[0].initialSelected = true
* item[2].item[4].answerOption[1].valueCoding = AdministrativeGender#female "Weiblich"
* item[2].item[4].answerOption[2].valueCoding = AdministrativeGender#other "Anderes"

* item[2].item[5].linkId = "patient.phone"
* item[2].item[5].text = "Telefon"
* item[2].item[5].type = #string

* item[2].item[6].linkId = "patient.email"
* item[2].item[6].text = "E-Mail"
* item[2].item[6].type = #string

* item[2].item[7].linkId = "patient.streetAddressLine"
* item[2].item[7].text = "Strasse, Hausnummer, Postfach etc."
* item[2].item[7].type = #string
* item[2].item[7].repeats = true

* item[2].item[8].linkId = "patient.postalCode"
* item[2].item[8].text = "PLZ"
* item[2].item[8].type = #string

* item[2].item[9].linkId = "patient.city"
* item[2].item[9].text = "Ort"
* item[2].item[9].type = #string

* item[2].item[10].linkId = "patient.country"
* item[2].item[10].text = "Land"
* item[2].item[10].type = #string

// ---------- orderer (Auftraggeber) ----------
* item[3].linkId = "orderer"
* item[3].text = "Auftraggeber"
* item[3].type = #group
* item[3].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[3].item[0].linkId = "orderer.author"
* item[3].item[0].text = "Verantwortlicher"
* item[3].item[0].type = #group
* item[3].item[0].required = true

* item[3].item[0].item[0].linkId = "orderer.author.practitioner"
* item[3].item[0].item[0].text = "Verantwortliche Person"
* item[3].item[0].item[0].type = #group

* item[3].item[0].item[0].item[0].linkId = "orderer.author.practitioner.familyName"
* item[3].item[0].item[0].item[0].text = "Name"
* item[3].item[0].item[0].item[0].type = #string

* item[3].item[0].item[0].item[1].linkId = "orderer.author.practitioner.givenName"
* item[3].item[0].item[0].item[1].text = "Vorname"
* item[3].item[0].item[0].item[1].type = #string

* item[3].item[0].item[0].item[2].linkId = "orderer.author.practitioner.title"
* item[3].item[0].item[0].item[2].text = "Titel"
* item[3].item[0].item[0].item[2].type = #string

* item[3].item[0].item[0].item[3].linkId = "orderer.author.practitioner.gln"
* item[3].item[0].item[0].item[3].text = "GLN"
* item[3].item[0].item[0].item[3].type = #string

* item[3].item[0].item[0].item[4].linkId = "orderer.author.practitioner.phone"
* item[3].item[0].item[0].item[4].text = "Telefon"
* item[3].item[0].item[0].item[4].type = #string

* item[3].item[0].item[0].item[5].linkId = "orderer.author.practitioner.email"
* item[3].item[0].item[0].item[5].text = "E-Mail"
* item[3].item[0].item[0].item[5].type = #string

* item[3].item[0].item[1].linkId = "orderer.author.organization"
* item[3].item[0].item[1].text = "Verantwortliche Organisation"
* item[3].item[0].item[1].type = #group

* item[3].item[0].item[1].item[0].linkId = "orderer.author.organization.name"
* item[3].item[0].item[1].item[0].text = "Name der Organisation"
* item[3].item[0].item[1].item[0].type = #string

* item[3].item[0].item[1].item[1].linkId = "orderer.author.organization.streetAddressLine"
* item[3].item[0].item[1].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[3].item[0].item[1].item[1].type = #string
* item[3].item[0].item[1].item[1].repeats = true

* item[3].item[0].item[1].item[2].linkId = "orderer.author.organization.postalCode"
* item[3].item[0].item[1].item[2].text = "PLZ"
* item[3].item[0].item[1].item[2].type = #string

* item[3].item[0].item[1].item[3].linkId = "orderer.author.organization.city"
* item[3].item[0].item[1].item[3].text = "Ort"
* item[3].item[0].item[1].item[3].type = #string

* item[3].item[0].item[1].item[4].linkId = "orderer.author.organization.country"
* item[3].item[0].item[1].item[4].text = "Land"
* item[3].item[0].item[1].item[4].type = #string

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[3].item[1].linkId = "orderer.dataenterer"
* item[3].item[1].text = "Erfasser"
* item[3].item[1].type = #group

* item[3].item[1].item[0].linkId = "orderer.dataenterer.practitioner"
* item[3].item[1].item[0].text = "Erfassende Person"
* item[3].item[1].item[0].type = #group

* item[3].item[1].item[0].item[0].linkId = "orderer.dataenterer.practitioner.familyName"
* item[3].item[1].item[0].item[0].text = "Name"
* item[3].item[1].item[0].item[0].type = #string

* item[3].item[1].item[0].item[1].linkId = "orderer.dataenterer.practitioner.givenName"
* item[3].item[1].item[0].item[1].text = "Vorname"
* item[3].item[1].item[0].item[1].type = #string

* item[3].item[1].item[0].item[2].linkId = "orderer.dataenterer.practitioner.phone"
* item[3].item[1].item[0].item[2].text = "Telefon"
* item[3].item[1].item[0].item[2].type = #string

* item[3].item[1].item[0].item[3].linkId = "orderer.dataenterer.practitioner.email"
* item[3].item[1].item[0].item[3].text = "E-Mail"
* item[3].item[1].item[0].item[3].type = #string

// ---------- Response Receiver ----------
* item[4].linkId = "receiverResponses"
* item[4].text = "Rückmeldungsempfänger"
* item[4].type = #group

* item[4].item[0].linkId = "receiverResponse"
* item[4].item[0].text = "Rückmeldungsempfangende Organisation oder Person"
* item[4].item[0].type = #group
* item[4].item[0].repeats = true

* item[4].item[0].item[0].linkId = "receiverResponse.organization.name"
* item[4].item[0].item[0].text = "Name der Organisation"
* item[4].item[0].item[0].type = #string

* item[4].item[0].item[1].linkId = "receiverResponse.familyName"
* item[4].item[0].item[1].text = "Name"
* item[4].item[0].item[1].type = #string

* item[4].item[0].item[2].linkId = "receiverResponse.givenName"
* item[4].item[0].item[2].text = "Vorname"
* item[4].item[0].item[2].type = #string

* item[4].item[0].item[3].linkId = "receiverResponse.title"
* item[4].item[0].item[3].text = "Titel"
* item[4].item[0].item[3].type = #string

* item[4].item[0].item[4].linkId = "receiverResponse.phone"
* item[4].item[0].item[4].text = "Telefon"
* item[4].item[0].item[4].type = #string

* item[4].item[0].item[5].linkId = "receiverResponse.email"
* item[4].item[0].item[5].text = "E-Mail"
* item[4].item[0].item[5].type = #string

* item[4].item[0].item[6].linkId = "receiverResponse.streetAddressLine"
* item[4].item[0].item[6].text = "Strasse, Hausnummer, Postfach etc."
* item[4].item[0].item[6].type = #string
* item[4].item[0].item[6].repeats = true

* item[4].item[0].item[7].linkId = "receiverResponse.postalCode"
* item[4].item[0].item[7].text = "PLZ"
* item[4].item[0].item[7].type = #string

* item[4].item[0].item[8].linkId = "receiverResponse.city"
* item[4].item[0].item[8].text = "Ort"
* item[4].item[0].item[8].type = #string

* item[4].item[0].item[9].linkId = "receiverResponse.country"
* item[4].item[0].item[9].text = "Land"
* item[4].item[0].item[9].type = #string