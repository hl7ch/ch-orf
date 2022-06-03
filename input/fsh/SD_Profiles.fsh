Profile: ChOrfQuestionnaire
Parent: SdcBaseQuestionnaire
Id: ch-orf-questionnaire
Title: "CH ORF Questionnaire"
Description: "Profile to define how a CH ORF-conformant Questionnaire resource must be structured. 
This is independent of the content and content structure of the questionnaire instance itself."
* . ^short = "CH ORF Questionnaire"
//* extension[targetStructureMap] 1..1 MS
//* extension contains SdcQuestionnaireSourceStructureMap named sdcQuestionnaireSourceStructureMap 1..1 MS
//* extension contains SdcQuestionnaireLaunchContext named sdcQuestionnaireLaunchContext 1..1 MS



Profile: ChOrfQuestionnaireResponse
Parent: QuestionnaireResponse
Id: ch-orf-questionnaireresponse
Title: "CH ORF QuestionnaireResponse"
Description: "Profile to define how a CH ORF-conformant QuestionnaireResponse resource must be structured. 
This is independent of the content and content structure of the response items to a specific questionnaire."
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
Description: "Profile to define how the record of a request for service to be performed is represented in the context of an order.
This resource is used to share relevant information required to support an CH ORF request from the order placer to the order filler."
* . ^short = "CH ORF ServiceRequest"
* extension contains ChOrfLocationAndTime named locationAndTime 0..* MS
* extension contains ChOrfRequestedEncounterDetails named requestedEncounterDetails 0..1 MS
//* extension contains ChOrfRequestedEncounterDetails named requestedEncounterClass 0..1 MS
//* extension contains ChOrfRequestedEncounterDetails named desiredAccomodation 0..1 MS
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
* note and note.text MS
* patientInstruction ^short = "Use Appointment.patientInstruction (referenced via ServiceRequest.extension) for patient-oriented instructions"


Profile: ChOrfComposition
Parent: ChCoreComposition
Id: ch-orf-composition
Title: "CH ORF Composition"
Description: "Profile to specify how the generic elements (e.g. patient, author) and the healthcare domain specific elements 
must be structured in the Composition as the first entry of the document."
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
* extension[copyReceiver] ^short = "Person/organization who receives the copy of this order (shall receive also all results therefrom)"

* extension contains ChOrfInitiator named initiator 0..1 MS
* extension[initiator] ^short = "Person/organization who initated this order (may or may nor receive a copy)"

* status MS
* type MS
* type from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode (preferred)
* type ^short = "Precise type of clinical document"
* category 1..1 MS
* category from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode (preferred)
* category ^short = "High-level kind of a clinical document at a macro level"
* subject 1.. MS
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
// ---------- Composition.section.entry:Questionnaire - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry contains Questionnaire 0..1 MS
* section[orderReferral].entry[Questionnaire] only Reference(ChOrfQuestionnaire)
* section[orderReferral].entry[Questionnaire] ^short = "Questionnaire"
* section[orderReferral].entry[Questionnaire].reference 1.. MS
// ---------- Composition.section.entry:QuestionnaireResponse - - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry contains QuestionnaireResponse 0..1 MS
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
Description: "Profile to set constraints that specify the CH ORF-conformant presentation of a document. 
The CH ORF exchange format is defined as a document type corresponding to a Bundle resource."
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
* entry contains 
    Questionnaire 0..1 MS and
    QuestionnaireResponse 0..1 MS and 
    ServiceRequest 1..* MS and 
    DocumentReference 0..* MS and 
    Binary 0..* MS and
    Appointment 0..* MS and
    Coverage 0..* MS
// ---------- Bundle.entry:Composition ----------
* entry[Composition] MS
* entry[Composition].resource ^type.profile = Canonical(ChOrfComposition)
* entry[Composition].resource MS
// ---------- Bundle.entry:Questionnaire ----------
* entry[Questionnaire].resource ^type.profile = Canonical(ChOrfQuestionnaire)
* entry[Questionnaire].resource 1.. MS
// ---------- Bundle.entry:QuestionnaireResponse ----------
* entry[QuestionnaireResponse].resource ^type.profile = Canonical(ChOrfQuestionnaireResponse)
* entry[QuestionnaireResponse].resource 1.. MS
// ---------- Bundle.entry:ServiceRequest ----------
* entry[ServiceRequest].resource ^type.profile = Canonical(ChOrfServiceRequest)
* entry[ServiceRequest].resource 1.. MS
// ---------- Bundle.entry:DocumentReference ----------
* entry[DocumentReference].resource ^type.profile = Canonical(ChOrfDocumentReference)
* entry[DocumentReference].resource 1.. MS
// ---------- Bundle.entry:Binary ----------
* entry[Binary].resource ^type.profile = Canonical(Binary)
* entry[Binary].resource 1.. MS
// ---------- Bundle.entry:DocumentReference ----------
* entry[DocumentReference].resource ^type.profile = Canonical(ChOrfDocumentReference)
* entry[DocumentReference].resource 1.. MS
// ---------- Bundle.entry:Appointment ----------
* entry[Appointment].resource ^type.profile = Canonical(ChOrfAppointment)
* entry[Appointment].resource 1.. MS
// ---------- Bundle.entry:Coverage ----------
* entry[Coverage].resource ^type.profile = Canonical(ChOrfCoverage)
* entry[Coverage].resource 1.. MS



Profile: ChOrfDocumentReference
Parent: ChCoreDocumentReference
Id: ch-orf-documentreference
Title: "CH ORF DocumentReference"
Description: "Profile to describe how to provide a reference to a document to make it available to a healthcare system."
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
Parent: Coverage          // not ChCoreCoverage because of different identifier profiling
Id: ch-orf-coverage
Title: "CH ORF Coverage"
Description: "Profile to specify how the coverage is represented. 
This provides an organization or the individual, which will pay for services requested."
* . ^short = "CH ORF Coverage"
* contained MS
* identifier MS
* identifier.type 1.. MS
* identifier.type from ChOrfCoverageIdentifierType
* identifier.type.coding 1.. MS
* identifier.type.coding.system 1.. MS
* identifier.type.coding.code 1.. MS
* identifier.type.text MS
* identifier.value 1.. MS
* status MS
* type MS
* type from ChOrfCoverageType (required)
* beneficiary MS
* beneficiary only Reference(ChCorePatient)
* payor MS
* payor only Reference(ChCoreOrganization or ChCorePatient or RelatedPerson)


Profile: ChOrfLocation
Parent: ChCoreLocation
Id: ch-orf-location
Title: "CH ORF Location"
Description: "Profile to define the details of the location of the appointment."
* . ^short = "CH ORF Location"
* name MS
* telecom MS
* address MS

Profile: ChOrfAppointment
Parent: Appointment
Id: ch-orf-appointment
Title: "CH ORF Appointment"
Description: "Profile to describe the location and time for the fulfillment of the service request.
In this resource, the status of the appointment is defined, patient-oriented instructions are listed here 
and where and when the service request is to be fulfilled."
* . ^short = "CH ORF Appointment"
* identifier MS 
* identifier ^short = "External identifier for this item: May be used for referencing to a record in a scheduling application. Status in the scheduling application may 
  change in time whereas Appointment.status reflects the status at the time the appointment is initiated."
* status MS
* status from ChOrfAppointmentStatus (required)
* status ^short = "Used to express if time and date are the preference of the patient (=\"proposed\"), confirmed by the patient but not yet by the service provider 
  (=\"pending\") or confirmed by the patient and the service provider (=\"booked\")"
* start MS
* start ^short = "When appointment is to take place (required if status=\"pending\" or \"booked\")"
* end MS  
* end ^short = "When appointment is to conclude (required if status=\"pending\" or \"booked\")"
* patientInstruction MS
* patientInstruction ^short = "Patient-oriented instructions SHALL be here and NOT in ServiceRequest.patientInstruction"
* participant ..1 MS
* participant.actor 1.. MS
* participant.actor only Reference(ChOrfLocation)
* participant.actor ^short = "Name, address and telecom of the appointment location"
* participant.status MS
* participant.status = #tentative         //fixed to "tentative" because the actor is the location
* requestedPeriod 0..1 MS
* requestedPeriod ^short = "Single Date/time or Date/time-interval indication for the appointment with the status=\"proposed\". A single Date/time indication MUST have 
 the same value for start and end."
* requestedPeriod.start MS
* requestedPeriod.end MS
   

Profile: ChOrfRequestedEncounter
Parent: ChCoreEncounter
Id: ch-orf-encounter
Title: "CH ORF Requested Encounter"
Description: "Profile to describe which details are represented at the requested encounter for the fulfillment of the service request. 
These are, for example, the status of the encounter or the class and the desired accomodation during the encounter."
* . ^short = "CH ORF Requested Encounter"
* extension contains ChOrfDesiredAccommodation named desiredAccomodation 0..1 MS
* status MS
* class MS
* class ^short = "AMB | IMP | EMER"
* class from ChOrfEncounterClass
* subject MS

/*Profile: Initiator
Parent:  
Id: ch-orf-initiator
Title: "CH ORF Initiator"
Description: "Supports coding of relation of initator to patient)"
* . ^short = "CH ORF Intiator"
*/



