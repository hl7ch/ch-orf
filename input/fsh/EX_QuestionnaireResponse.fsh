Instance: qr-order-referral-form
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse Order-Referral-Form"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form"
* status = #completed

// ---------- order (Auftrag) ----------
* item[0].linkId = "order"
* item[0].text = "Auftrag"

* item[0].item[0].linkId = "order.placerOrderIdentifier"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].answer.valueString = "123"

* item[0].item[1].linkId = "order.placerOrderIdentifierDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].answer.valueString = "urn:oid:1.3.4.5.6.7"

* item[0].item[2].linkId = "order.fillerOrderIdentifier"
* item[0].item[2].text = "Auftragsnummer des Auftragsempfängers"
* item[0].item[2].answer.valueString = "456"

* item[0].item[3].linkId = "order.fillerOrderIdentifierDomain"
* item[0].item[3].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[0].item[3].answer.valueString = "urn:oid:7.8.9.10.11"

* item[0].item[4].linkId = "order.precedentDocumentIdentifier"
* item[0].item[4].text = "Identifier des Vorgängerdokuments"
* item[0].item[4].answer.valueString = "1622f2fb-6ba3-4532-9aed-35b158def187"

// ---------- Urgent Notification Contact for this document ----------
* item[0].item[5].linkId = "order.notificationContactDocument"
* item[0].item[5].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[0].item[5].item[0].linkId = "order.notificationContactDocument.practitioner"
* item[0].item[5].item[0].text = "Zu benachrichtigende Person"

* item[0].item[5].item[0].item[0].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[0].item[5].item[0].item[0].text = "Name"
* item[0].item[5].item[0].item[0].answer.valueString = "Röntgen"

* item[0].item[5].item[0].item[1].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[0].item[5].item[0].item[1].text = "Vorname"
* item[0].item[5].item[0].item[1].answer.valueString = "Hans"

* item[0].item[5].item[0].item[2].linkId = "order.notificationContactDocument.practitioner.title"
* item[0].item[5].item[0].item[2].text = "Titel"
* item[0].item[5].item[0].item[2].answer.valueString = "Dr. med."

* item[0].item[5].item[0].item[3].linkId = "order.notificationContactDocument.practitioner.phone"
* item[0].item[5].item[0].item[3].text = "Telefon"
* item[0].item[5].item[0].item[3].answer.valueString = "044 412 00 99"

* item[0].item[5].item[0].item[4].linkId = "order.notificationContactDocument.practitioner.email"
* item[0].item[5].item[0].item[4].text = "E-Mail"
* item[0].item[5].item[0].item[4].answer.valueString = "hans.roentgen@kantonsspital.ch"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[0].item[6].linkId = "order.notificationContactDocumentResponse"
* item[0].item[6].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"

* item[0].item[6].item[0].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[0].item[6].item[0].text = "Zu benachrichtigende Person"

* item[0].item[6].item[0].item[0].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[0].item[6].item[0].item[0].text = "Name"
* item[0].item[6].item[0].item[0].answer.valueString = "Meier"

* item[0].item[6].item[0].item[1].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[0].item[6].item[0].item[1].text = "Vorname"
* item[0].item[6].item[0].item[1].answer.valueString = "Sabine"

* item[0].item[6].item[0].item[2].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[0].item[6].item[0].item[2].text = "Titel"
* item[0].item[6].item[0].item[2].answer.valueString = "Dr. med."

* item[0].item[6].item[0].item[3].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[0].item[6].item[0].item[3].text = "Telefon"
* item[0].item[6].item[0].item[3].answer.valueString = "044 333 22 11"

* item[0].item[6].item[0].item[4].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[0].item[6].item[0].item[4].text = "E-Mail"
* item[0].item[6].item[0].item[4].answer.valueString = "sabine.meier@praxisseeblick.ch"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[0].item[7].linkId = "order.priority"
* item[0].item[7].text = "Auftragspriorität"
* item[0].item[7].answer.valueCoding = RequestPriority#routine

// ---------- Request Receiver: Person/organization who receives the request ----------
* item[1].linkId = "receiverRequest"
* item[1].text = "Auftragsempfänger"

* item[1].item[0].linkId = "receiverRequest.practitioner"
* item[1].item[0].text = "Auftragsempfangende Person"

* item[1].item[0].item[0].linkId = "receiverRequest.practitioner.familyName"
* item[1].item[0].item[0].text = "Name"
* item[1].item[0].item[0].answer.valueString = "Röntgen"

* item[1].item[0].item[1].linkId = "receiverRequest.practitioner.givenName"
* item[1].item[0].item[1].text = "Vorname"
* item[1].item[0].item[1].answer.valueString = "Hans"

* item[1].item[0].item[2].linkId = "receiverRequest.practitioner.title"
* item[1].item[0].item[2].text = "Titel"
* item[1].item[0].item[2].answer.valueString = "Dr. med."

* item[1].item[0].item[3].linkId = "receiverRequest.practitioner.gln"
* item[1].item[0].item[3].text = "GLN"
* item[1].item[0].item[3].answer.valueString = "7601000066878"

* item[1].item[0].item[4].linkId = "receiverRequest.practitioner.phone"
* item[1].item[0].item[4].text = "Telefon"
* item[1].item[0].item[4].answer.valueString = "044 412 00 99"

* item[1].item[0].item[5].linkId = "receiverRequest.practitioner.email"
* item[1].item[0].item[5].text = "E-Mail"
* item[1].item[0].item[5].answer.valueString = "hans.roentgen@kantonsspital.ch"

* item[1].item[1].linkId = "receiverRequest.organization"
* item[1].item[1].text = "Auftragsempfangende Organisation"

* item[1].item[1].item[0].linkId = "receiverRequest.organization.name"
* item[1].item[1].item[0].text = "Name der Organisation"
* item[1].item[1].item[0].answer.valueString = "Kantonsspital"

* item[1].item[1].item[1].linkId = "receiverRequest.organization.streetAddressLine"
* item[1].item[1].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[1].item[1].answer[0].valueString = "Kantonsstrasse 14"
* item[1].item[1].item[1].answer[1].valueString = "Postfach 14"

* item[1].item[1].item[2].linkId = "receiverRequest.organization.postalCode"
* item[1].item[1].item[2].text = "PLZ"
* item[1].item[1].item[2].answer.valueString = "8000"

* item[1].item[1].item[3].linkId = "receiverRequest.organization.city"
* item[1].item[1].item[3].text = "Ort"
* item[1].item[1].item[3].answer.valueString = "Zürich"

* item[1].item[1].item[4].linkId = "receiverRequest.organization.country"
* item[1].item[1].item[4].text = "Land"
* item[1].item[1].item[4].answer.valueString = "Schweiz"

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[2].linkId = "patient"
* item[2].text = "Patient"

* item[2].item[0].linkId = "patient.familyName"
* item[2].item[0].text = "Name"
* item[2].item[0].answer.valueString = "Musterfrau"

* item[2].item[1].linkId = "patient.givenName"
* item[2].item[1].text = "Vorname"
* item[2].item[1].answer.valueString = "Erika"

* item[2].item[2].linkId = "patient.localPid"
* item[2].item[2].text = "Lokale Patienten-ID"
* item[2].item[2].answer.valueString = "11.22.33.4567"

* item[2].item[3].linkId = "patient.birthDate"
* item[2].item[3].text = "Geburtsdatum"
* item[2].item[3].answer.valueDate = "1970-03-14"

* item[2].item[4].linkId = "patient.gender"
* item[2].item[4].text = "Geschlecht"
* item[2].item[4].answer.valueCoding = AdministrativeGender#female

* item[2].item[5].linkId = "patient.phone"
* item[2].item[5].text = "Telefon"
* item[2].item[5].answer.valueString = "079 979 79 79"

* item[2].item[6].linkId = "patient.email"
* item[2].item[6].text = "E-Mail"
* item[2].item[6].answer.valueString = "erika@musterfrau.ch"

* item[2].item[7].linkId = "patient.streetAddressLine"
* item[2].item[7].text = "Strasse, Hausnummer, Postfach etc."
* item[2].item[7].answer[0].valueString = "Musterweg"
* item[2].item[7].answer[1].valueString = "6a"

* item[2].item[8].linkId = "patient.postalCode"
* item[2].item[8].text = "PLZ"
* item[2].item[8].answer.valueString = "8000"

* item[2].item[9].linkId = "patient.city"
* item[2].item[9].text = "Ort"
* item[2].item[9].answer.valueString = "Zürich"

* item[2].item[10].linkId = "patient.country"
* item[2].item[10].text = "Land"
* item[2].item[10].answer.valueString = "Schweiz"

// ---------- orderer (Auftraggeber) ----------
* item[3].linkId = "orderer"
* item[3].text = "Auftraggeber"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[3].item[0].linkId = "orderer.author"
* item[3].item[0].text = "Verantwortlicher"

* item[3].item[0].item[0].linkId = "orderer.author.practitioner"
* item[3].item[0].item[0].text = "Verantwortliche Person"

* item[3].item[0].item[0].item[0].linkId = "orderer.author.practitioner.familyName"
* item[3].item[0].item[0].item[0].text = "Name"
* item[3].item[0].item[0].item[0].answer.valueString = "Meier"

* item[3].item[0].item[0].item[1].linkId = "orderer.author.practitioner.givenName"
* item[3].item[0].item[0].item[1].text = "Vorname"
* item[3].item[0].item[0].item[1].answer.valueString = "Sabine"

* item[3].item[0].item[0].item[2].linkId = "orderer.author.practitioner.title"
* item[3].item[0].item[0].item[2].text = "Titel"
* item[3].item[0].item[0].item[2].answer.valueString = "Dr. med."

* item[3].item[0].item[0].item[3].linkId = "orderer.author.practitioner.gln"
* item[3].item[0].item[0].item[3].text = "GLN"
* item[3].item[0].item[0].item[3].answer.valueString = "7601000034321"

* item[3].item[0].item[0].item[4].linkId = "orderer.author.practitioner.phone"
* item[3].item[0].item[0].item[4].text = "Telefon"
* item[3].item[0].item[0].item[4].answer.valueString = "044 333 22 11"

* item[3].item[0].item[0].item[5].linkId = "orderer.author.practitioner.email"
* item[3].item[0].item[0].item[5].text = "E-Mail"
* item[3].item[0].item[0].item[5].answer.valueString = "sabine.meier@praxisseeblick.ch"

* item[3].item[0].item[1].linkId = "orderer.author.organization"
* item[3].item[0].item[1].text = "Verantwortliche Organisation"

* item[3].item[0].item[1].item[0].linkId = "orderer.author.organization.name"
* item[3].item[0].item[1].item[0].text = "Name der Organisation"
* item[3].item[0].item[1].item[0].answer.valueString = "Praxis Seeblick"

* item[3].item[0].item[1].item[1].linkId = "orderer.author.organization.streetAddressLine"
* item[3].item[0].item[1].item[1].text = "Strasse, Hausnummer, Postfach etc."
* item[3].item[0].item[1].item[1].answer[0].valueString = "Seestrasse 133"
* item[3].item[0].item[1].item[1].answer[1].valueString = "Haus C"

* item[3].item[0].item[1].item[2].linkId = "orderer.author.organization.postalCode"
* item[3].item[0].item[1].item[2].text = "PLZ"
* item[3].item[0].item[1].item[2].answer.valueString = "8000"

* item[3].item[0].item[1].item[3].linkId = "orderer.author.organization.city"
* item[3].item[0].item[1].item[3].text = "Ort"
* item[3].item[0].item[1].item[3].answer.valueString = "Zürich"

* item[3].item[0].item[1].item[4].linkId = "orderer.author.organization.country"
* item[3].item[0].item[1].item[4].text = "Land"
* item[3].item[0].item[1].item[4].answer.valueString = "Schweiz"

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[3].item[1].linkId = "orderer.dataenterer"
* item[3].item[1].text = "Erfasser"

* item[3].item[1].item[0].linkId = "orderer.dataenterer.practitioner"
* item[3].item[1].item[0].text = "Erfassende Person"

* item[3].item[1].item[0].item[0].linkId = "orderer.dataenterer.practitioner.familyName"
* item[3].item[1].item[0].item[0].text = "Name"
* item[3].item[1].item[0].item[0].answer.valueString = "Boss"

* item[3].item[1].item[0].item[1].linkId = "orderer.dataenterer.practitioner.givenName"
* item[3].item[1].item[0].item[1].text = "Vorname"
* item[3].item[1].item[0].item[1].answer.valueString = "Stabilo"

* item[3].item[1].item[0].item[2].linkId = "orderer.dataenterer.practitioner.phone"
* item[3].item[1].item[0].item[2].text = "Telefon"
* item[3].item[1].item[0].item[2].answer.valueString = "044 333 22 12"

* item[3].item[1].item[0].item[3].linkId = "orderer.dataenterer.practitioner.email"
* item[3].item[1].item[0].item[3].text = "E-Mail"
* item[3].item[1].item[0].item[3].answer.valueString = "stabilo.boss@praxisseeblick.ch"

// ---------- Response Receiver ----------
* item[4].linkId = "receiverResponses"
* item[4].text = "Rückmeldungsempfänger"

* item[4].item[0].linkId = "receiverResponse"
* item[4].item[0].text = "Rückmeldungsempfangende Organisation oder Person"

* item[4].item[0].item[0].linkId = "receiverResponse.organization.name"
* item[4].item[0].item[0].text = "Name der Organisation"
* item[4].item[0].item[0].answer.valueString = "Praxis Seeblick"

* item[4].item[0].item[1].linkId = "receiverResponse.familyName"
* item[4].item[0].item[1].text = "Name"
* item[4].item[0].item[1].answer.valueString = "Meier"

* item[4].item[0].item[2].linkId = "receiverResponse.givenName"
* item[4].item[0].item[2].text = "Vorname"
* item[4].item[0].item[2].answer.valueString = "Sabine"

* item[4].item[0].item[3].linkId = "receiverResponse.title"
* item[4].item[0].item[3].text = "Titel"
* item[4].item[0].item[3].answer.valueString = "Dr. med."

* item[4].item[0].item[4].linkId = "receiverResponse.phone"
* item[4].item[0].item[4].text = "Telefon"
* item[4].item[0].item[4].answer.valueString = "044 333 22 11"

* item[4].item[0].item[5].linkId = "receiverResponse.email"
* item[4].item[0].item[5].text = "E-Mail"
* item[4].item[0].item[5].answer.valueString = "sabine.meier@praxisseeblick.ch"

/*
* item[4].item[0].item[6].linkId = "receiverResponse.streetAddressLine"
* item[4].item[0].item[6].text = "Strasse, Hausnummer, Postfach etc."
* item[4].item[0].item[6].answer[0].valueString = "Seestrasse 133"
* item[4].item[0].item[6].answer[1].valueString = "Haus C"

* item[4].item[0].item[7].linkId = "receiverResponse.postalCode"
* item[4].item[0].item[7].text = "PLZ"
* item[4].item[0].item[7].answer.valueString = "8000"

* item[4].item[0].item[8].linkId = "receiverResponse.city"
* item[4].item[0].item[8].text = "Ort"
* item[4].item[0].item[8].answer.valueString = "Zürich"

* item[4].item[0].item[9].linkId = "receiverResponse.country"
* item[4].item[0].item[9].text = "Land"
* item[4].item[0].item[9].answer.valueString = "Schweiz"
*/

* item[4].item[1].linkId = "receiverResponse"
* item[4].item[1].text = "Rückmeldungsempfangende Organisation oder Person"

/* 
* item[4].item[1].item[0].linkId = "receiverResponse.organization.name"
* item[4].item[1].item[0].text = "Name der Organisation"
* item[4].item[1].item[0].answer.valueString = ""
*/

* item[4].item[1].item[0].linkId = "receiverResponse.familyName"
* item[4].item[1].item[0].text = "Name"
* item[4].item[1].item[0].answer.valueString = "Musterfrau"

* item[4].item[1].item[1].linkId = "receiverResponse.givenName"
* item[4].item[1].item[1].text = "Vorname"
* item[4].item[1].item[1].answer.valueString = "Erika"

/* 
* item[4].item[1].item[3].linkId = "receiverResponse.title"
* item[4].item[1].item[3].text = "Titel"
* item[4].item[1].item[3].answer.valueString = ""
*/

* item[4].item[1].item[2].linkId = "receiverResponse.phone"
* item[4].item[1].item[2].text = "Telefon"
* item[4].item[1].item[2].answer.valueString = "079 979 79 79"

* item[4].item[1].item[3].linkId = "receiverResponse.email"
* item[4].item[1].item[3].text = "E-Mail"
* item[4].item[1].item[3].answer.valueString = "erika@musterfrau.chh"

* item[4].item[1].item[4].linkId = "receiverResponse.streetAddressLine"
* item[4].item[1].item[4].text = "Strasse, Hausnummer, Postfach etc."
* item[4].item[1].item[4].answer[0].valueString = "Musterweg"
* item[4].item[1].item[4].answer[1].valueString = "6a"

* item[4].item[1].item[5].linkId = "receiverResponse.postalCode"
* item[4].item[1].item[5].text = "PLZ"
* item[4].item[1].item[5].answer.valueString = "8000"

* item[4].item[1].item[6].linkId = "receiverResponse.city"
* item[4].item[1].item[6].text = "Ort"
* item[4].item[1].item[6].answer.valueString = "Zürich"

* item[4].item[1].item[7].linkId = "receiverResponse.country"
* item[4].item[1].item[7].text = "Land"
* item[4].item[1].item[7].answer.valueString = "Schweiz"