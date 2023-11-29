
Extension: ChOrfPrecedentDocument
Id: ch-orf-precedentdocument
Title: "CH ORF Precedent Document"
Description: "Identifier of the document which precedes this document in a thread."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueIdentifier 1..1
* valueIdentifier only Identifier
* valueIdentifier ^short = "valueIdentifier"

Extension: ChOrfCopyReceiver
Id: ch-orf-copyreceiver
Title: "CH ORF Copy Receiver"
Description: "Receiver of the copy of this order and the results therefrom"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole or ChCorePatient or RelatedPerson)
* valueReference ^short = "valueReference"

//========================
Extension: ChOrfInitiator
Id: ch-orf-initiator
Title: "CH ORF Initiator"
Description: "Initiator and his realtion to the patient"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* . ^short = "Extension"
* . ^definition = "Extension to define person/organization who initated this order (may or may not receive a copy)"
* extension contains
    ch-orf-personalrelation 1..1 MS and 
    ch-orf-legalrelation 1..1 MS and
    ch-orf-personorganization 1..1 MS 

* extension[ch-orf-personalrelation] ^short = "Personal relation between initiator and patient"
* extension[ch-orf-personalrelation].value[x] only Coding
* extension[ch-orf-personalrelation].value[x] from ChOrfVsPersonalRelation (required)
* extension[ch-orf-personalrelation].value[x] 1..

* extension[ch-orf-legalrelation] ^short = "Legal relation between initator and patient"
* extension[ch-orf-legalrelation].value[x] only Coding
* extension[ch-orf-legalrelation].value[x] from ChOrfVSLegalRelation (required)
* extension[ch-orf-legalrelation].value[x] 1..

* extension[ch-orf-personorganization] ^short = "Initiator person or organization"
* extension[ch-orf-personorganization].value[x] only Reference
* extension[ch-orf-personorganization].value[x] only Reference(ChCorePractitionerRole or ChCorePatient or RelatedPerson)
* extension[ch-orf-personorganization].value[x] 1..


/*Extension: ChOrfRelationInitiatorPatient
Id: ch-orf-personalrelationinitiatorpatient
Title: "CH ORF Relation between Initator and Patient"
Description: "Relatioin between Initator and Patient"
* ^context[0].type = #element
* ^context[=].expression = "Composition.extension"
* . 0..1
* . ^short = "Extension"
* . ^definition = "Relation between intitator and patient"
* valueCodeableConcept 1..1
* valueCodeableConcept from ChOrfVsPersonalRelation (required)
* valueCodeableConcept ^short = "Value of extension"


Extension: ChOrfLegalGuardian
Id: ch-orf-legalrelationguardian
Title: "CH ORF Legal Guardian of the Patient"
Description: "Legal Guardian of the Patient"
* ^context[0].type = #element
* ^context[=].expression = "Composition.extension"
* . 0..1
* . ^short = "Extension"
* . ^definition = "Extension to define the legal relation between intitator and patient"
* valueCodeableConcept 1..1
//* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from ChOrfVSLegalRelation (required)
* valueCodeableConcept ^short = "Value of extension"
*/
/*Extension: ChOrfInitiatorPersonOrganization
Id: ch-orf-initiator-person-organization
Title: "CH ORF Initiator (Practioner or Related Person"
Description: "Person/organization who initated this order (may or may nor receive a copy)"
* extension ^short = "Information about the Initiator Person and Organization"
* extension.valueReference only Reference(ChCorePatient or ChCorePractitioner or ChCorePractitionerRole or RelatedPerson)
*/

Extension: ChOrfPatientConsent
Id: ch-orf-patientconsent
Title: "CH ORF Patient Consent"
Description: "Patient Consent to this Order"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChOrfConsent)
* valueReference ^short = "valueReference"

Extension: ChOrfConsentCode
Id: ch-orf-consentcode
Title: "CH ORF Consent Code"
Description: "Consent Code"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Consent"
* valueCoding 1..1
//* valueCodeableConcept only CodeableConcept
* valueCoding from  ChOrfConsentStatus (required)
* valueCoding ^short = "valuecoding"


Extension: ChOrfConsentNote
Id: ch-orf-consentnote
Title: "CH ORF Consent Note"
Description: "Consent Note "
* ^context[0].type = #fhirpath
* ^context[0].expression = "Consent"
* valueString 1..1
//* valueString only string
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
* ^context[0].type = #fhirpath
* ^context[0].expression = "ServiceRequest"
* valueReference 1..1
* valueReference only Reference(ChOrfRequestedEncounter) 
* valueReference ^short = "Requested Encounter Details for ServiceRequest Fulfillment"


Extension: ChOrfLocationAndTime
Id: ch-orf-locationandtime
Title: "CH ORF Location and Time"
Description: "Location and Time of ServiceRequest Fulfillment."
* ^context[0].type = #fhirpath
* ^context[0].expression = "ServiceRequest"
* valueReference 1..1
* valueReference only Reference(ChOrfAppointment) 
* valueReference ^short = "Location and Time for ServiceRequest Fulfillment"


Extension: ChOrfDesiredAccommodation
Id: ch-orf-desiredaccommodation
Title: "CH ORF Desired Accommodation"
Description: "Desired Accommodation during the Requested Encounter."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Encounter"
* valueCoding 1..1
* valueCoding ^short = "Desired Accommodation during the Requested Encounter"
* valueCoding from ChOrfVsDesiredAccommodation