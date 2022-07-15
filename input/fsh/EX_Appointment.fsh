Instance: AppointmentPending
InstanceOf: ChOrfAppointment
Usage: #example
Title: "Appointment Pending"
Description: "Example for Appointment with status=\"pending\""
* status = #pending
* start = "2019-04-01T12:00:00.000+00:00"
* end = "2019-04-01T12:30:00.000+00:00"
* patientInstruction = "Patient-oriented instructions"
* participant[+].actor = Reference(LocationOfAppointment)
* participant[=].status = #tentative

Instance: AppointmentBooked
InstanceOf: ChOrfAppointment
Usage: #example
Title: "Appointment Booked"
Description: "Example for Appointment with status=\"booked\""
* status = #booked
* start = "2019-04-01T12:00:00.000+00:00"
* end = "2019-04-01T12:30:00.000+00:00"
* patientInstruction = "Patient-oriented instructions"
* participant[+].actor = Reference(LocationOfAppointment)
* participant[=].status = #tentative

Instance: AppointmentProposed
InstanceOf: ChOrfAppointment
Usage: #example
Title: "Appointment Proposed"
Description: "Example for Appointment with status=\"proposed\""
* status = #proposed
* patientInstruction = "Patient-oriented instructions"
* participant[+].actor = Reference(LocationOfAppointment)
* participant[=].status = #tentative
* requestedPeriod[+].start = "2019-04-01T15:00:00.000+00:00"
* requestedPeriod[=].end = "2019-04-01T15:30:00.000+00:00"