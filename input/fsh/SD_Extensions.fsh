


Extension: ChOrfCopyReceiver
Id: ch-orf-copyreceiver
Title: "CH ORF Copy Receiver"
Description: "Receiver of the copy of this order and the results therefrom"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole or ChCorePatient or http://hl7.org/fhir/StructureDefinition/RelatedPerson)
* valueReference ^short = "valueReference"

//========================
Extension: ChOrfInitiator
Id: ch-orf-initiator
Title: "CH ORF Initiator"
Description: "Person/organization who initated this order (may or may nor receive a copy)"
* ^version = "2.0.0"
* ^date = "2019-12-04"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^context.type = #element
* ^context.expression = "Composition"
* . ..1

* . ^short = "Extension"
* . ^definition = "Extension to define Person/organization who initated this order (may or may nor receive a copy)"
* extension contains
    ChOrfRelationInitiatorPatient named relation 0..1 MS and 
    ChOrfLegalGuardian named legal 0..1 MS and 
    detail 0..1 MS 
* extension[relation] ^short = "Relation between Initator and Patient" 
* extension[legal] ^short = "Initator ist  Vertreter des Patienten"    
* extension[detail] ^short = "Information about the person and organization that entered data"
//* extension[detail].url only uri
//* extension[detail].valueReference 1..
* extension[detail].valueReference only Reference(ChCorePatient or ChCorePractitioner or ChCorePractitionerRole or RelatedPerson)
* extension[detail].valueReference ^short = "Practioner or related Person who initated this order"
//* url only uri



Extension: ChOrfLegalGuardian
Id: ch-orf-legalguardian
Title: "CH ORF Legal Guardian of thePatient"
Description: "Legal Guardian of thePatient"
* ^context[0].type = #element
* ^context[=].expression = "Composition.extension"
* . 0..1
* . ^short = "Extension"
* . ^definition = "Extension to define the relation between intitator and patient"
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from ChOrfVSLegalGuardian (required)
* valueCodeableConcept ^short = "Value of extension"


Extension: ChOrfRelationInitiatorPatient
Id: ch-orf-relationinitiatorpatient
Title: "CH ORF Relation between Initator and Patient"
Description: "Relatioin between Initator and Patient"
* ^context[0].type = #element
* ^context[=].expression = "Composition.extension"
* . 0..1
* . ^short = "Extension"
* . ^definition = "Extension to define the relation between intitator and patient"
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from ChOrfVsInitiatorRelation (required)
* valueCodeableConcept ^short = "Value of extension"





Extension: ChOrfPatientConsent
Id: ch-orf-patientconsent
Title: "CH ORF Patient Consent"
Description: "Patient Consent to this Order"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChOrfConsent)
* valueReference ^short = "valueReference"


Extension: ChOrfConsentNote
Id: ch-orf-consentnote
Title: "CH ORF Note to Consent"
Description: "Note to Consent"

/* ^context[0].type = #fhirpath
* ^context[0].expression = "ChOrfConsent"
*/
* valueString 1..1
* valueString only string
* valueString ^short = "valueString"

Extension: ChOrfReceiver
Id: ch-orf-receiver
Title: "CH ORF Receiver"
Description: "Person/organization who receives the document"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole)
* valueReference ^short = "valueReference"

Extension: ChOrfAntecedentEpisodeOfCare
Id: ch-orf-antecedentepisodeofcare
Title: "CH ORF Episode of Care"
Description: "Documentation of the antecedent episode  of care e.g hospitalisation in case of care transfer between instituitons e.g. hospitals, rehab. clinics, retirement homes etc."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChOrfEpisodeOfCare)
* valueReference ^short = "valueReference"






Extension: ChOrfUrgentNotificiationContactForTheResponseToThisDocument
Id: ch-orf-urgentnoficationcontactfortheresponsetothisdocument
Title: "CH ORF Urgent Notification Contact For The Response To This Document"
Description: "An information recipient to notify for urgent matters about the response. (e.g. in a clinical setting, the referring doctor has to be called by phone right away at the time the images and reports arrive. The Urgent Notification Contact for the Response can be specified already in the request. At the time the response is written, this element shall be populated to the Urgent Notification Contact element in the response.)"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole)
* valueReference ^short = "valueReference"


Extension: ChOrfUrgentNotificiationContactForThisDocument
Id: ch-orf-urgentnoficationcontactforthisdocument
Title: "CH ORF Urgent Notification Contact For This Documet"
Description: "An information recipient to notify for urgent matters (e.g. in a radiology service, the radiologist has to be called by phone right away at the time the doucment is received)."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole)
* valueReference ^short = "valueReference"


Extension: ChOrfRequestedEncounterDetails
Id: ch-orf-requestedencounterdetails
Title: "CH ORF Requested Encounter Details"
Description: "Requested Encounter Details for ServiceRequest Fulfillment."
* valueReference 1..1
* valueReference only Reference(ChOrfRequestedEncounter) 
* valueReference ^short = "Requested Encounter Details for ServiceRequest Fulfillment"


Extension: ChOrfLocationAndTime
Id: ch-orf-locationandtime
Title: "CH ORF Location and Time"
Description: "Location and Time of ServiceRequest Fulfillment."
* valueReference 1..1
* valueReference only Reference(ChOrfAppointment) 
* valueReference ^short = "Location and Time for ServiceRequest Fulfillment"


Extension: ChOrfDesiredAccommodation
Id: ch-orf-desiredaccommodation
Title: "CH ORF Desired Accommodation"
Description: "Desired Accommodation during the Requested Encounter."
* valueCoding 1..1
* valueCoding ^short = "Desired Accommodation during the Requested Encounter"
* valueCoding from ChOrfVsDesiredAccommodation