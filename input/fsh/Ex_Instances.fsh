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
*/
Instance:  ChOrfInitiatorMUfferer
InstanceOf: ChOrfInitiator
Title: "Initiator ist Ehemann"
Description: "Example for ChOrfInitiator Extension"
Usage: #inline
* extension[nameAdress].valueReference = Reference (ChOrfRelatedPersonMUfferer)
 
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

Instance: ChOrfRelationInitiatorPatientMUfferer
InstanceOf: ChOrfRelationInitiatorPatient
Title: "Beziehung Max und Susanna Sufferer"
Description: "Example forChOrfRelationInitiatorPatient Extension"
Usage: #inline
* valueCodeableConcept = SCT#127849001 // Husband



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

*  generalPractitioner = Reference(ChCorePractitionerRoleFAmily)



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
Title: "Florance Amily"
Description: "Example for Practioner Resource"
* name.family = "Amily"
* name.given = "Florance"

Instance: ChOrfAntecedentEpisodeOfCareSUfferer
InstanceOf: ChOrfAntecedentEpisodeOfCare
Title: "AntecedentEpisodeOfCare Susanna Ufferer"
Description: "Example of AntecedentEpisodeOfCare Extension"
Usage: #inline
* valueReference = Reference(ChOrfEpisodeOfCareSUfferer)

Instance: ChOrfPatientConsentSUfferer
InstanceOf: ChOrfPatientConsent
Title: "Consent of Susanna Ufferer"
Description: "Example of Consent Extension"
Usage: #inline
* valueReference = Reference(ChOrfConsentSUfferer)





