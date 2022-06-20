Instance: ChOrfConsentSUfferer
InstanceOf: ChOrfConsent
Title: "Susanna Ufferer is not yet informde"
Description: "Example for ChOrfConsent"
* status = ConsentState#active
* scope = ConsentScopeCodes#patient-privacy
* category =  LNC#59284-0
// provision.type is left empty, because patient is not yet informed

Instance: ChOrfConsentNoteSUfferer
InstanceOf:  ChOrfConsentNote
Usage: #inline
* valueString = "Tochter wird die Spitexunterstützung beim nächsten Besuch thematisieren"

Instance:  ChOrfInitiatorMUfferer
InstanceOf: ChOrfInitiator
Title: "Initiator ist Ehemann"
Description: "Example for CH Orf Initiator"
Usage: #inline
* extension[detail].valueReference = Reference (ChOrfRelatedPersonMUfferer)
 
Instance: ChOrfEpisodeOfCareSUfferer
InstanceOf: ChOrfEpisodeOfCare
Title: "Entlassung aus der Klinik 15.07.22"
Description: "Example for Discharge DAte"
* status = EpisodeOfCareStatus#active
* patient = Reference (SUfferer)
* statusHistory.status = EpisodeOfCareStatus#active
* statusHistory.period.start = 2022-06-30
* statusHistory.period.end = 2022-07-28
* managingOrganization = Reference (OrganizationSpitalTrubschachen)


Instance: OrganizationSpitalTrubschachen
InstanceOf: ChCoreOrganization
* name = "Spital Trubschachen"

Instance: ChOrfRelationInitiatorPatientMUfferer
InstanceOf: ChOrfRelationInitiatorPatient
Title: "Beziehung Max und Susanna Sufferer"
Description: "Example for Initiator Relation"
Usage: #inline
* valueCodeableConcept = SCT#127849001 // Husband



Instance: SUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example for Patient"
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

*  generalPractitioner = Reference(PractionerRoleFAmily)



Instance: ChOrfRelatedPersonMUfferer
InstanceOf: RelatedPerson
Title: "Initiator ist Ehemann"
Description: "Example for OrfInitiator"
* name.family = "Sufferer"
* name.given = "Max"
* patient = Reference (SUfferer)
* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"

Instance: PractionerRoleFAmily
InstanceOf: ChCorePractitionerRole
* practitioner = Reference (FamilyDoctorFAmily)

Instance: FamilyDoctorFAmily
InstanceOf: ChCorePractitioner
* name.family = "Amily"
* name.given = "Flavia"

Instance: ChOrfAntecedentEpisodeOfCareSUfferer
InstanceOf: ChOrfAntecedentEpisodeOfCare
Usage: #inline
* valueReference = Reference(ChOrfEpisodeOfCareSUfferer)

Instance: ChOrfPatientConsentSUfferer
InstanceOf: ChOrfPatientConsent
Usage: #inline
* valueReference = Reference(ChOrfConsentSUfferer)





