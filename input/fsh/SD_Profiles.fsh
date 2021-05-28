Profile: ChOrfQuestionnaire
Parent: SdcQuestionnaireExtract
Id: ch-orf-questionnaire
Title: "CH ORF Questionnaire"
Description: "Profile on Questionnaire for CH ORF"
* . ^short = "CH ORF Questionnaire"
* extension[targetStructureMap] 1..1 MS
* extension contains SdcQuestionnaireSourceStructureMap named sdcQuestionnaireSourceStructureMap 1..1 MS
* extension contains SdcQuestionnaireLaunchContext named sdcQuestionnaireLaunchContext 1..1 MS
* item MS


Profile: ChOrfQuestionnaireResponse
Parent: QuestionnaireResponse
Id: ch-orf-questionnaireresponse
Title: "CH ORF QuestionnaireResponse"
Description: "Profile on QuestionnaireResponse for CH ORF"
* . ^short = "CH ORF QuestionnaireResponse"
* identifier MS
* basedOn MS
* basedOn only Reference(ChOrfServiceRequest)
* partOf MS
* questionnaire MS
* status MS
* subject MS
* subject only Reference(ChCorePatient)
* encounter MS
* encounter only Reference(ChCoreEncounter)
* authored MS
* author MS
* author only Reference(Device or ChCorePractitioner or ChCorePractitionerRole or ChCorePatient or RelatedPerson or ChCoreOrganization)
* source MS
* source only Reference(ChCorePatient or ChCorePractitioner or ChCorePractitionerRole or RelatedPerson)
* item MS
* item.linkId MS
* item.definition MS
* item.text MS
* item.answer MS
* item.answer.value[x] MS
* item.answer.item MS
* item.item MS


Profile: ChOrfServiceRequest
Parent: ServiceRequest
Id: ch-orf-servicerequest
Title: "CH ORF ServiceRequest"
Description: "Profile on ServiceRequest for CH ORF"
* . ^short = "CH ORF ServiceRequest"
* extension contains ChOrfLocationAndTime named locationAndTime 0..* MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains placerOrderIdentifier 1..1 MS
* identifier[placerOrderIdentifier] ^short = "Placer Order Identifier"
* identifier[placerOrderIdentifier] ^patternIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[placerOrderIdentifier] ^patternIdentifier.type.coding.code = #PLAC
* identifier[placerOrderIdentifier].system MS
* identifier[placerOrderIdentifier].value 1.. MS
* identifier contains fillerOrderIdentifier ..1 MS
* identifier[fillerOrderIdentifier] ^short = "Filler Order Identifier"
* identifier[fillerOrderIdentifier] ^patternIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[fillerOrderIdentifier] ^patternIdentifier.type.coding.code = #FILL
* identifier[fillerOrderIdentifier].system MS
* identifier[fillerOrderIdentifier].value 1.. MS
* status MS
* intent MS
* priority MS
* priority ^short = "Order priority"
* subject MS
* subject only Reference(ChCorePatient)
* subject ^short = "Patient"
* subject ^definition = "The principle target of a particular form content is one patient (for obstetrical and neonatal use cases see...)."
* requester MS
* requester only Reference(ChCorePractitionerRole)
* requester ^short = "The person/organization responsible for the form content"
* insurance MS
* insurance only Reference(ChOrfCoverage)
* patientInstruction ^short = "Use Appointment.patientInstruction (referenced via ServiceRequest.extension) for patient-oriented instructions"


Profile: ChOrfComposition
Parent: ChCoreComposition
Id: ch-orf-composition
Title: "CH ORF Composition"
Description: "Profile on Composition for CH ORF"
* . ^short = "CH ORF Composition"
* text 1.. MS
* text ^short = "Narrative text of the composition"
* extension contains ChOrfPrecedentDocument named precedentDocument 0..1 MS
* extension[precedentDocument] ^short = "Identifier of the document which precedes this document in a thread"
* extension contains ChExtEprDataEnterer named dataEnterer 0..1 MS
* extension[dataEnterer] ^short = "The person/organization who has typed/filled in the form content"
* extension contains ChOrfUrgentNotificiationContactForThisDocument named urgentNoficationContactForThisDocument 0..1 MS
* extension[urgentNoficationContactForThisDocument] ^short = "An information recipient to notify for urgent matters"
* extension contains ChOrfUrgentNotificiationContactForTheResponseToThisDocument named urgentNoficationContactForTheResponseToThisDocument 0..1 MS
* extension[urgentNoficationContactForTheResponseToThisDocument] ^short = "An information recipient to notify for urgent matters about the response"
* extension contains ChOrfReceiver named receiver 0..1 MS
* extension[receiver] ^short = "Person/organization who receives the document"
* extension contains ChOrfCopyReceiver named copyReceiver 0..* MS
* extension[copyReceiver] ^short = "Person/organization who receives the copy of this document"
* status MS
* type MS
* type from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode (preferred)
* type ^short = "Precise type of clinical document"
* category 1..1 MS
* category from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode (preferred)
* category ^short = "High-level kind of a clinical document at a macro level"
* subject MS
* subject ^short = "Patient as the principle target of a particular form content"
* author ..1 MS
* author only Reference(ChCorePractitionerRole)
* author ^short = "The person/organization responsible for the form content"
* title MS
* title ^short = "Meaningful title"

* section MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// ---------- Composition.section:orderReferral ----------
* section contains orderReferral 1..1 MS
* section[orderReferral] ^short = "Contains the data that supports the order and referral by form."
* section[orderReferral].title 1..1 MS
* section[orderReferral].title ^short = "Order-Referral"
* section[orderReferral].code 1..1 MS
* section[orderReferral].code = LNC#93037-0 "Portable medical order form"
* section[orderReferral].text MS
* section[orderReferral].section 0..0

* section[orderReferral].entry MS
* section[orderReferral].entry ^slicing.discriminator.type = #profile
* section[orderReferral].entry ^slicing.discriminator.path = "resolve()"
* section[orderReferral].entry ^slicing.rules = #open
// ---------- Composition.section.entry:Questionnaire ----------
* section[orderReferral].entry contains Questionnaire 1..1 MS
* section[orderReferral].entry[Questionnaire] only Reference(ChOrfQuestionnaire)
* section[orderReferral].entry[Questionnaire] ^short = "Questionnaire"
* section[orderReferral].entry[Questionnaire].reference 1.. MS
// ---------- Composition.section.entry:QuestionnaireResponse ----------
* section[orderReferral].entry contains QuestionnaireResponse 1..1 MS
* section[orderReferral].entry[QuestionnaireResponse] only Reference(ChOrfQuestionnaireResponse)
* section[orderReferral].entry[QuestionnaireResponse] ^short = "QuestionnaireResponse"
* section[orderReferral].entry[QuestionnaireResponse].reference 1.. MS
// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry contains ServiceRequest 1..* MS
* section[orderReferral].entry[ServiceRequest] only Reference(ChOrfServiceRequest)
* section[orderReferral].entry[ServiceRequest] ^short = "ServiceRequest"
* section[orderReferral].entry[ServiceRequest].reference 1.. MS
// ---------- Composition.section.entry:DocumentReference ----------
* section[orderReferral].entry contains DocumentReference 0..* MS
* section[orderReferral].entry[DocumentReference] only Reference(ChOrfDocumentReference)
* section[orderReferral].entry[DocumentReference] ^short = "DocumentReference"
* section[orderReferral].entry[DocumentReference].reference 1.. MS

// ---------- Composition.section:originalRepresentation ----------
* section contains originalRepresentation 0..1 MS
* section[originalRepresentation] ^short = "Contains the original representation as a PDF of the current document."
* section[originalRepresentation].title 1..1 MS
* section[originalRepresentation].title ^short = "Original representation"
* section[originalRepresentation].code 1..1 MS
* section[originalRepresentation].code = LNC#55108-5 "Clinical presentation"
* section[originalRepresentation].text 1.. MS
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry 1..1 MS
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "According to the EPR ordonnance the PDF has to be in PDF/A-1 or PDF/A-2 format."
* section[originalRepresentation].section 0..0


Profile: ChOrfDocument
Parent: ChCoreDocument
Id: ch-orf-document
Title: "CH ORF Document"
Description: "Profile on Document for CH ORF"
* . ^short = "CH ORF Bundle"
* identifier MS
* identifier ^short = "Document Identifier"
* identifier.system MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value MS
* identifier.value ^short = "UUID as Document Identifier"
* type MS
* timestamp MS
* timestamp ^short = "Date, the document was created"
* total 0..0
* link 0..0
* entry MS
// ---------- Bundle.entry:Composition ----------
* entry[Composition] MS
* entry[Composition].resource ^type.profile = Canonical(ChOrfComposition)
* entry[Composition].resource MS


Profile: ChOrfDocumentReference
Parent: ChCoreDocumentReference
Id: ch-orf-documentreference
Title: "CH ORF DocumentReference"
Description: "Profile on DocumentReference for CH ORF"
* . ^short = "CH ORF DocumentReference"
* status MS
* type MS
* type ^short = "Precise type of clinical document"
* category MS
* category ^short = "High-level kind of a clinical document at a macro level"
* subject MS
* subject only Reference(ChCorePatient)
* author MS
* author only Reference(ChCorePractitionerRole)
* content MS
* content.attachment MS
* content.attachment.contentType MS
* content.attachment.data MS
* context MS
* context.related MS


// Probably better in CH Core -> next release
// Preliminary design: Answer of BAG still pending: 23.05.2021
Profile: ChOrfCoverage
Parent: Coverage          // not ChCoreCoverage because of different identifier slicing
Id: ch-orf-coverage
Title: "CH ORF Coverage"
Description: "Profile on Coverage for CH ORF"
* . ^short = "CH ORF Coverage"
* contained MS
// identifier
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
// Kennnummer der Versichertenkarte
* identifier contains insurancecardnumber 0..* MS
* identifier[insurancecardnumber].use = #usual
* identifier[insurancecardnumber].use 1.. MS
* identifier[insurancecardnumber] ^short = "Insurance card number"
* identifier[insurancecardnumber].system 1.. MS
* identifier[insurancecardnumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insurancecardnumber].system ^short = "OID of the insurance card number"
* identifier[insurancecardnumber].value 1.. MS
* identifier[insurancecardnumber].value ^short = "Insurance card number of the patient (20 digits)"
// Versichertennummer
* identifier contains AHVN13 0..1 MS
* identifier[AHVN13].use = #official
* identifier[AHVN13].use 1.. MS
* identifier[AHVN13] ^short = "AHVN13 / NAVS13"
* identifier[AHVN13].system 1.. MS
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value 1.. MS
* identifier[AHVN13].value ^short = "AHVN13 / NAVS13 of the patient (13 digits starting ith 756)"
// Other ID
* identifier contains otherId 0..* MS
* identifier[otherId] ^short = "Other ID"
* identifier[otherId].use = #secondary
* identifier[otherId].use 1.. MS
* identifier[otherId].value 1.. MS
* status MS
* type MS
* type from ChOrfCoverageType (required)
* beneficiary MS
* beneficiary only Reference(ChCorePatient)
* payor MS
* payor only Reference(ChCoreOrganization or ChCorePatient)


Profile: ChOrfLocation
Parent: ChCoreLocation
Id: ch-orf-location
Title: "CH ORF Location"
Description: "Profile on Location for CH ORF"
* . ^short = "CH ORF Location"
* name MS
* telecom MS
* address MS

Profile: ChOrfAppointment
Parent: Appointment
Id: ch-orf-appointment
Title: "CH ORF Appointment"
Description: "Profile on Appointment for CH ORF"
* . ^short = "CH ORF Appointment"
* identifier MS 
* identifier ^short = "External identifier for this item: May be used for referencing to a record in a scheduling application. Status in the scheduling application may 
  change in time whereas Appointment.status reflects the status at the time the appointment is initiated."
* status MS
* status from ChOrfAppointmentStatus (required)
* status ^short = "Used to express if time and date are the preference of the patient (=\"proposed\"), confirmed by the patient but not yet by the service provider 
  (=\"pending\") or confirmed by the patient and the service provider (=\"booked\")"
* patientInstruction MS
* patientInstruction ^short = "Patient-oriented instructions SHALL be here and NOT in ServiceRequest.patientInstruction"
* participant ..1 MS
* participant.actor 1.. MS
* participant.actor only Reference(ChOrfLocation)
* participant.actor ^short = "Name, address and telecom of the appointment location"
* participant.status MS
* participant.status = #tentative         //fixed to "tentative" because the actor is the location
* requestedPeriod 0..1 MS
* requestedPeriod ^short = "Single Date/time or Date/time interval indication for the appointment. A single Date/time indication MUST have 
 the same value for start and end."
* requestedPeriod.start MS
* requestedPeriod.end MS
   