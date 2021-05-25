Extension: ChOrfCopyReceiver
Id: ch-orf-copyreceiver
Title: "CH ORF Copy Receiver"
Description: "Receiver of the copy of this document."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCoreOrganization or ChCorePatient)
* valueReference ^short = "valueReference"


Extension: ChOrfReceiver
Id: ch-orf-receiver
Title: "CH ORF Receiver"
Description: "Person/organization who receives the document"
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueReference 1..1
* valueReference only Reference(ChCorePractitionerRole)
* valueReference ^short = "valueReference"


Extension: ChOrfPrecedentDocument
Id: ch-orf-precedentdocument
Title: "CH ORF Precedent Document"
Description: "Identifier of the document which precedes this document in a thread."
* ^context[0].type = #fhirpath
* ^context[0].expression = "Composition"
* valueIdentifier 1..1
* valueIdentifier only Identifier
* valueIdentifier ^short = "valueIdentifier"


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


Extension: ChOrfLocationAndTime
Id: ch-orf-locationandtime
Title: "CH ORF Location and Time"
Description: "Location and Time of ServiceRequest Fulfillment."
* valueReference 1..1
* valueReference only Reference(ChOrfAppointment) 
* valueReference ^short = "Location and Time for ServiceRequest Fulfillment"
