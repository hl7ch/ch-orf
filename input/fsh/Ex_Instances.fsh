Instance: spitex-order
InstanceOf: Composition
// Usage: #inline
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
* extension[=].valueReference = Reference(ChCorePractitionerRoleSpitex)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PractitionerRole/CopyReceiverSabineMeierPraxisSeeblick)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(SUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-antecedentepisodeofcare"
* extension[=].valueReference = Reference(ChOrfEpisodeOfCareSUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-patientconsent"
* extension[=].valueReference = Reference(ChOrfConsentSUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator"
//* extension[=].valueReference = Reference(ChOrfConsentSUfferer)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-relationinitiatorpatient"
* extension[=].valueCodeableConcept = SCT#127849001 "Husband (person)"

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-legalguardian"
* extension[=].valueCodeableConcept =  SCT#58626002  "Legal guardian (person)"

//* extension[=].extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator-person-organization"
//* extension[=].extension[=].valueReference = Reference(RelatedPerson/ChOrfRelatedPersonMUfferer)



* status = #final
* type = http://snomed.info/sct#419891008 "Record artifact (record artifact)"
* category = http://snomed.info/sct#721963009 "Order (record artifact)"
* subject = Reference(SUfferer)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(PractitionerRole/StabiloBossPraxisSeeblick)
* title = "Order-Referral-Form"
* section[0].title = "Order-Referral"
* section[=].code = http://loinc.org#93037-0 "Portable medical order form"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Order-Referral-Form </div>"
* section[=].entry[0] = Reference(Questionnaire/order-referral-form)
* section[=].entry[+] = Reference(QuestionnaireResponse/qr-order-referral-form)
* section[=].entry[+] = Reference(ServiceRequest/sr-order-referral-form)
/* section[+].title = "Original representation"
* section[=].code = http://loinc.org#55108-5 "Clinical presentation"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t    Representation of the original view:\n                            <img src=\"pdf1\"/>\n                        </div>"
* section[=].entry = Reference(pdf)
*/

Instance: ChOrfConsentSUfferer
InstanceOf: ChOrfConsent
Title: "Susanna Ufferer is not yet informed"
Description: "Example for ChOrfConsent Resource"
* status = ConsentState#active
* scope = ConsentScopeCodes#patient-privacy
* category = LNC#59284-0
// provision.type is left empty, because patient is not yet informed
* policyRule.coding = SCT#385432009 //not applicable
* extension[consentCode].valueCodeableConcept = SCT#373068000 "Undetermined (qualifier value)"
* extension[consentNote].valueString = "Tochter wird die Spitexunterstützung beim nächsten Besuch thematisieren"

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

Instance: ChOrfInitiatorMUfferer
InstanceOf: ChOrfInitiator
Title: "Initiator ist Ehemann"
Description: "Example for ChOrfInitiator Extension"
Usage: #inline
* extension[nameAdress].valueReference = Reference (RelatedPerson/ChOrfRelatedPersonMUfferer)
*/

Instance: ChOrfEpisodeOfCareSUfferer
InstanceOf: ChOrfEpisodeOfCare
Title: "Entlassung aus der Klinik 15.07.22"
Description: "Example for Discharge Date in ChOrfEpisodeOfCare Resource"
* status = EpisodeOfCareStatus#active
* patient = Reference (SUfferer)
* statusHistory.status = EpisodeOfCareStatus#active
* statusHistory.period.start = 2022-06-30
* statusHistory.period.end = 2022-07-28
* managingOrganization = Reference (OrganizationSpitalTrubschachen)

Instance: OrganizationSpitalTrubschachen
InstanceOf: ChCoreOrganization
Title: "Spital Trubschachen"
Description: "Example for ChCoreOrganization Resource"
* name = "Spital Trubschachen"

Instance: SUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example for Patient Resource"
* name[+].use = #official
* name[=].family[+] = "Ufferer"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #officialName

* name[=].given[+] = "Susanna"
* name[=].given[=].extension[ech11firstname].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given[=].extension[ech11firstname].valueCode = #officialFirstName

* name[+].use = #maiden
* name[=].family[+] = "Leidend"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #originalName

* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email
* telecom[1].value = "susanna@ufferer.ch"
* gender = #female 
* birthDate = "1970-03-14"
* address.use = #home
* address.line[0] = "Musterweg"
* address.line[1] = "6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"
* generalPractitioner = Reference(ChCorePractitionerRoleFAmily)

Instance: ChOrfRelatedPersonMUfferer
InstanceOf: RelatedPerson
Title: "Initiator ist Ehemann"
Description: "Example for OrfRelatedPersonMUfferer Resource"
* name.family = "Sufferer"
* name.given = "Max"
* patient = Reference (SUfferer)
* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"

Instance: ChCorePractitionerRoleFAmily
InstanceOf: ChCorePractitionerRole
Title: "Practioner Role Family Doctor"
Description: "Example for ChCorePractitionerRole Resource"
* practitioner = Reference (ChCorePractitionerFAmily)

Instance: ChCorePractitionerFAmily
InstanceOf: ChCorePractitioner
Title: "Florence Amily"
Description: "Example for Practioner Resource"
* name.family = "Amily"
* name.given = "Florence"

Instance: ChCorePractitionerRoleSpitex
InstanceOf: ChCorePractitionerRole
Title: "Practioner Role Spitex"
Description: "Example for ChCorePractitionerRole Resource"
* practitioner = Reference (ChCorePractitionerSPitex)

Instance: ChCorePractitionerSPitex
InstanceOf: ChCorePractitioner
Title: "Samuel Itex"
Description: "Example for Practioner Resource"
* name.family = "Itex"
* name.given = "Samuel"

Instance: ChCorePractitionerTRub
InstanceOf: ChCorePractitioner
Title: "Thomas Rub"
Description: "Example for Practioner Resource"
* name.family = "Thomas"
* name.given = "Rub"

