Instance: qr-order-referral-form
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse Order-Referral-Form"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "123"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "456"

* item[=].item[+].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "urn:oid:7.8.9.10.11"

* item[=].item[+].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].answer.valueString = "1622f2fb-6ba3-4532-9aed-35b158def187"

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Röntgen"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Hans"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "hans.roentgen@kantonsspital.ch"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine

// ---------- Request Receiver: Person/organization who receives the request ----------
* item[+].linkId = "receiverRequest"
* item[=].text = "Auftragsempfänger"

* item[=].item[+].linkId = "receiverRequest.practitioner"
* item[=].item[=].text = "Auftragsempfangende Person"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Röntgen"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Hans"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000066878"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "hans.roentgen@kantonsspital.ch"

* item[=].item[+].linkId = "receiverRequest.organization"
* item[=].item[=].text = "Auftragsempfangende Organisation"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Kantonsspital"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].answer[1].valueString = "Postfach 14"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].text = "Patient"

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Musterfrau"

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = "Ledigname"

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Erika"

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "11.22.33.4567"

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1970-03-14"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "079 979 79 79"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "erika@musterfrau.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Musterweg"
* item[=].item[=].answer[+].valueString = "6a"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8000"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

// ---------- orderer (Auftraggeber) ----------
* item[+].linkId = "orderer"
* item[=].text = "Auftraggeber"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "orderer.author"
* item[=].item[=].text = "Verantwortlicher"

* item[=].item[=].item[+].linkId = "orderer.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000034321"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

* item[=].item[=].item[+].linkId = "orderer.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Seeblick"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Seestrasse 133"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Haus C"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "orderer.dataenterer"
* item[=].item[=].text = "Erfasser"

* item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Boss"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Stabilo"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 12"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "stabilo.boss@praxisseeblick.ch"

// ---------- Response Receiver ----------
* item[+].linkId = "receiverResponses"
* item[=].text = "Rückmeldungsempfänger"

* item[=].item[+].linkId = "receiverResponse"
* item[=].item[=].text = "Rückmeldungsempfangende Organisation oder Person"

* item[=].item[=].item[+].linkId = "receiverResponse.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Praxis Seeblick"

* item[=].item[=].item[+].linkId = "receiverResponse.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[+].linkId = "receiverResponse.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[+].linkId = "receiverResponse.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[+].linkId = "receiverResponse.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[+].linkId = "receiverResponse.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

/*
* item[=].item[=].item[+].linkId = "receiverResponse.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Seestrasse 133"
* item[=].item[=].item[=].answer[+].valueString = "Haus C"

* item[=].item[=].item[+].linkId = "receiverResponse.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiverResponse.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiverResponse.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"
*/

* item[=].item[+].linkId = "receiverResponse"
* item[=].item[=].text = "Rückmeldungsempfangende Organisation oder Person"

/* 
* item[=].item[=].item[+].linkId = "receiverResponse.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = ""
*/

* item[=].item[=].item[+].linkId = "receiverResponse.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Musterfrau"

* item[=].item[=].item[+].linkId = "receiverResponse.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Erika"

/* 
* item[=].item[=].item[+].linkId = "receiverResponse.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = ""
*/

* item[=].item[=].item[+].linkId = "receiverResponse.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "079 979 79 79"

* item[=].item[=].item[+].linkId = "receiverResponse.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "erika@musterfrau.ch"

* item[=].item[=].item[+].linkId = "receiverResponse.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Musterweg"
* item[=].item[=].item[=].answer[+].valueString = "6a"

* item[=].item[=].item[+].linkId = "receiverResponse.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiverResponse.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiverResponse.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"