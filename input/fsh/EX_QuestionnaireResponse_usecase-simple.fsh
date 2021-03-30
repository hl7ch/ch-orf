Instance: qr-usecase-simple
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse Use Case simple"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "2156286"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"

// ---------- Urgent Notification Contact for the Response to this document ----------
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
* item[=].item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Otto"

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
* item[=].item[=].item[=].answer.valueString = "o.rderfiller@happyhospital.ch"

* item[=].item[+].linkId = "receiverRequest.organization"
* item[=].item[=].text = "Auftragsempfangende Organisation"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Klinik Happy Hospital"

* item[=].item[=].item[+].linkId = "receiverRequest.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Seestrasse 133"
* item[=].item[=].item[=].answer[+].valueString = "Haus C"

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
* item[=].item[=].answer.valueString = "Ufferer Leidend"

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Susanna"

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
* item[=].item[=].answer.valueString = "susanna@ufferer.ch"

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
* item[=].item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Otile"

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
* item[=].item[=].item[=].item[=].answer.valueString = "o.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "orderer.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Happy Doctors"

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Postfach 14"

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
* item[=].item[=].item[=].item[=].answer.valueString = "Ataenterer"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Doris"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "d.ataenterer@happydoctors.ch"

// ---------- Response Receiver ----------
* item[+].linkId = "receiverResponses"
* item[=].text = "Rückmeldungsempfänger"

* item[=].item[+].linkId = "receiverResponse"
* item[=].item[=].text = "Rückmeldungsempfangende Organisation oder Person"

* item[=].item[=].item[+].linkId = "receiverResponse.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Praxis Happy Doctors"

* item[=].item[=].item[+].linkId = "receiverResponse.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[+].linkId = "receiverResponse.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Otile"

* item[=].item[=].item[+].linkId = "receiverResponse.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[+].linkId = "receiverResponse.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[+].linkId = "receiverResponse.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "o.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "receiverResponse.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].answer[+].valueString = "Postfach 14"

* item[=].item[=].item[+].linkId = "receiverResponse.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiverResponse.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiverResponse.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "receiverResponse"
* item[=].item[=].text = "Rückmeldungsempfangende Organisation oder Person"

* item[=].item[=].item[+].linkId = "receiverResponse.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Ufferer Leidend"

* item[=].item[=].item[+].linkId = "receiverResponse.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Susanna"

* item[=].item[=].item[+].linkId = "receiverResponse.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "079 979 79 79"

* item[=].item[=].item[+].linkId = "receiverResponse.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "susanna@ufferer.ch"

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