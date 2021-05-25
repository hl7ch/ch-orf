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
* extension contains ChOrfTimeAndLocation named timeAndLocation 0..* MS
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
* section 1.. MS
* section.entry MS
* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
// ---------- Composition.section.entry:Questionnaire ----------
* section.entry contains Questionnaire 1..1 MS
* section.entry[Questionnaire] only Reference(ChOrfQuestionnaire)
* section.entry[Questionnaire] ^short = "Questionnaire"
* section.entry[Questionnaire].reference 1.. MS
// ---------- Composition.section.entry:QuestionnaireResponse ----------
* section.entry contains QuestionnaireResponse 1..1 MS
* section.entry[QuestionnaireResponse] only Reference(ChOrfQuestionnaireResponse)
* section.entry[QuestionnaireResponse] ^short = "QuestionnaireResponse"
* section.entry[QuestionnaireResponse].reference 1.. MS
// ---------- Composition.section.entry:ServiceRequest ----------
* section.entry contains ServiceRequest 1..* MS
* section.entry[ServiceRequest] only Reference(ChOrfServiceRequest)
* section.entry[ServiceRequest] ^short = "ServiceRequest"
* section.entry[ServiceRequest].reference 1.. MS
// ---------- Composition.section.entry:DocumentReference ----------
* section.entry contains DocumentReference 0..* MS
* section.entry[DocumentReference] only Reference(ChOrfDocumentReference)
* section.entry[DocumentReference] ^short = "DocumentReference"
* section.entry[DocumentReference].reference 1.. MS


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
Profile: ChOrfCoverage
Parent: ChCoreCoverage
Id: ch-orf-coverage
Title: "CH ORF Coverage"
Description: "Profile on Coverage for CH ORF"
* . ^short = "CH ORF Coverage"
// Preliminary design: Answer of BAG still pending: 23.05.2021
* contained MS
* identifier and identifier[insurancecardnumber] MS
* identifier.system MS
* identifier.value MS
* beneficiary MS
* payor MS
* type MS
* type from ChOrfCoverageType (required)

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
* identifier 1..1 MS 
* identifier ^short = "External Id for this item: May be used for referencing to a record in a scheduling application. Status in the scheduling application may 
  change in time whereas appointmen.status reflects the status at the time the appointment is initiated"
* status MS
* status from ChOrfAppointmentStatus (required)
* status ^short = "Used to express if time and date are the preference of the patient (=\"proposed\"), confirmed by the patient but not yet by the service provider 
  (=\"pending\") or confirmed by the patient and the service provider (=\"booked\")"
* patientInstruction MS
* patientInstruction ^short = "Patient-oriented instructions SHALL be here and NOT in ServiceRequest.patientInstruction"
* participant MS
* participant.actor MS
* participant.actor only Reference(ChOrfLocation)
* participant.actor ^short = "Address and telecom of the appointment location"
* participant.status MS
* participant.status = #tentative         //fixed to "tentative" because the actor is the location
* requestedPeriod 0..1 MS
* requestedPeriod ^short =  "Single Date/time or Date/time interval indication for the appointment. A single Date/time indication MUST have 
 the same value for start and end."
   