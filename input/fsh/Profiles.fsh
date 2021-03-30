Profile: ChOrfQuestionnaire
Parent: SdcQuestionnaireExtract
Id: ch-orf-questionnaire
Title: "CH ORF Questionnaire"
Description: "Profile on Questionnaire for CH ORF"
* . ^short = "CH ORF Questionnaire"
* extension[targetStructureMap] 1..1 MS
* item MS
* item.linkId MS // SDC already defines it as MS
* item.definition MS
* item.code MS
* item.code from http://fhir.ch/ig/ch-orf/ValueSet/minimaldataset (extensible)
* item.code ^binding.description = "Codes for questionnaires, groups and individual questions."


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
* priority MS
* priority ^short = "Order priority"
* subject MS
* subject only Reference(ChCorePatient)
* subject ^short = "Patient"
* subject ^definition = "The principle target of a particular form content is one patient (for obstetrical and neonatal use cases see...)."
* requester MS
* requester only Reference(ChCorePractitionerRole)
* requester ^short = "The person/organization responsible for the form content"
* performer MS
* performer only Reference(ChCorePractitionerRole) 
* performer ^short = "Person/organization who receives the request"


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
* extension contains ChOrfResponseReceiver named responseReceiver 0..* MS
* extension[responseReceiver] ^short = "Person/organization who receives the response"
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
* section.title 1.. MS
* section.entry MS
* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
// ---------- Composition.section.entry:ChOrfQuestionnaire ----------
* section.entry contains ChOrfQuestionnaire 1..1 MS
* section.entry[ChOrfQuestionnaire] only Reference(ChOrfQuestionnaire)
* section.entry[ChOrfQuestionnaire] ^short = "Questionnaire"
* section.entry[ChOrfQuestionnaire].reference 1.. MS
// ---------- Composition.section.entry:ChOrfQuestionnaireResponse ----------
* section.entry contains ChOrfQuestionnaireResponse 1..1 MS
* section.entry[ChOrfQuestionnaireResponse] only Reference(ChOrfQuestionnaireResponse)
* section.entry[ChOrfQuestionnaireResponse] ^short = "QuestionnaireResponse"
* section.entry[ChOrfQuestionnaireResponse].reference 1.. MS
// ---------- Composition.section.entry:ChOrfServiceRequest ----------
* section.entry contains ChOrfServiceRequest 1..* MS
* section.entry[ChOrfServiceRequest] only Reference(ChOrfServiceRequest)
* section.entry[ChOrfServiceRequest] ^short = "ServiceRequest"
* section.entry[ChOrfServiceRequest].reference 1.. MS


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
// ---------- Bundle.entry:ChOrfQuestionnaire ----------
* entry contains ChOrfQuestionnaire 1..1 MS
* entry[ChOrfQuestionnaire] ^short = "Questionnaire"
* entry[ChOrfQuestionnaire].resource ^type.profile = Canonical(ChOrfQuestionnaire)
* entry[ChOrfQuestionnaire].resource 1.. MS
// ---------- Bundle.entry:ChOrfQuestionnaireResponse ----------
* entry contains ChOrfQuestionnaireResponse 1..1 MS
* entry[ChOrfQuestionnaireResponse] ^short = "QuestionnaireResponse"
* entry[ChOrfQuestionnaireResponse].resource ^type.profile = Canonical(ChOrfQuestionnaireResponse) 
* entry[ChOrfQuestionnaireResponse].resource 1.. MS
// ---------- Bundle.entry:ChOrfServiceRequest ----------
* entry contains ChOrfServiceRequest 1..* MS
* entry[ChOrfServiceRequest] ^short = "ServiceRequest"
* entry[ChOrfServiceRequest].resource ^type.profile = Canonical(ChOrfServiceRequest)
* entry[ChOrfServiceRequest].resource 1.. MS



Profile: CHORFConsent
Parent: Consent
Id: ch-orf-consent
Title: "CH ORF Consenst"
Description: "Profile on Consent for CH ORF"
* . ^short = "CH ORF Consent"
