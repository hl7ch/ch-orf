
Instance: spitex-order
InstanceOf: Composition
// Usage: #inline
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-precedentdocument"
* extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].valueIdentifier.value = "urn:uuid:1622f2fb-6ba3-4532-9aed-35b158def187"
//* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
//* extension[=].extension.url = "enterer"
//* extension[=].extension.valueReference = Reference(PractitionerRole/StabiloBossPraxisSeeblick)
//* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
//* extension[=].valueReference = Reference(PractitionerRole/NotificationContactHansRoentgen)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(PractitionerRole/NotificationContactSabineMeier)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(ChOrfPractitionerRoleSPitex)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PractitionerRole/CopyReceiverSabineMeierPraxisSeeblick)
=======
Instance: comp-order-referral-form-1-1-0
InstanceOf: Composition
Usage: #inline
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-precedentdocument"
* extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].valueIdentifier.value = "urn:uuid:1622f2fb-6ba3-4532-9aed-35b158def187"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[=].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PractitionerRole/StabiloBossPraxisSeeblick)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(PractitionerRole/NotificationContactHansRoentgen)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(PractitionerRole/NotificationContactSabineMeier)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(HansRoentgenKantonsspital)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(CopyReceiverSabineMeierPraxisSeeblick)


* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patientconsent"
* extension[=].valueReference = Reference(ChOrfConsentSUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator"
* extension[=].extension[+].url = "ch-orf-personalrelation"
* extension[=].extension[=].valueCodeableConcept = SCT#127849001 "Husband (person)"
* extension[=].extension[+].url = "ch-orf-legalrelation"
* extension[=].extension[=].valueCodeableConcept = SCT#58626002  "Legal guardian (person)"
* extension[=].extension[+].url = "ch-orf-personOrganization"
* extension[=].extension[=].valueReference = Reference(RelatedPerson/ChOrfRelatedPersonMUfferer)


//* extension[=].extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator-person-organization"
//* extension[=].extension[=].valueReference = Reference(RelatedPerson/ChOrfRelatedPersonMUfferer)

=======
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-consent"
* extension[=].valueReference = Reference(ChOrfConsentSUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator"
* extension[=].valueReference = Reference(ChOrfRelatedPersonMUfferer)
* extension[=].extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-legalguardian"
* extension[=].valueCode =  SCT#58626002  "Legal guardian (person)"


* subject = Reference(SUfferer)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(PractitionerRole/StabiloBossPraxisSeeblick)
=======
* subject = Reference(ErikaMusterfrau)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(SabineMeierPraxisSeeblick)


* section[=].entry[0] = Reference(Questionnaire/order-referral-form)
* section[=].entry[+] = Reference(QuestionnaireResponse/qr-order-referral-form)
* section[=].entry[+] = Reference(ServiceRequest/sr-order-referral-form)
/* section[+].title = "Original representation"
=======
* section[=].entry[0] = Reference(order-referral-form)
* section[=].entry[+] = Reference(qr-order-referral-form)
* section[=].entry[+] = Reference(sr-order-referral-form)
* section[+].title = "Original representation"

*/

=======
/*Instance: ChOrfConsentCodeSUfferer
InstanceOf:  ChOrfConsentCode
Title: "Consent Note"
Description: "Example forChOrfConsentCode Extension"
* valueCodeableConcept = SCT#373068000 "Undetermined (qualifier value)"

Instance: ChOrfConsentNoteSUfferer
InstanceOf:  ChOrfConsentNote
Title: "Consent Note"
Description: "Example forChOrfConsentNote Extension"
Usage: #inline
* valueString = "Tochter wird die Spitexunterstützung beim nächsten Besuch thematisieren"

Instance:  MUfferer
InstanceOf: ChOrfInitiator
Title: "Initiator ist Ehemann"
Description: "Example for ChOrfInitiator Extension"
Usage: #inline
* extension[nameAdress].valueReference = Reference (ChOrfRelatedPersonMUfferer)
*/ 

