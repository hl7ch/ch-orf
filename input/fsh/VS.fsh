// Probably better in CH Core -> next release
ValueSet: ChOrfCoverageType
Id: ch-orf-vs-coveragetype
Title: "Coverage Type"
Description: "Value Set for CH ORF Coverage Type"
* include codes from system ChOrfCoverageType

ValueSet: ChOrfAppointmentStatus
Id: ch-orf-vs-appointmentstatus
Title: "Appointment Status"
Description: "Value Set for CH ORF Appointment Status"
* AppointmentStatus#proposed
* AppointmentStatus#pending
* AppointmentStatus#booked

ValueSet: ChOrfYesNo
Id: ch-orf-vs-descriptorqualifiervalue
Title: "Descriptor (qualifier value)"
Description: "Value Set for CH ORF Descriptor (qualifier value)"
* include codes from system SCT where concept is-a #272099008 "Descriptor (qualifier value)"
* SCT#373066001 "Yes"
* SCT#373067005 "No"