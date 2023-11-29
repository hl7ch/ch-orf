// Probably better in CH Core -> next release
ValueSet: ChOrfCoverageType
Id: ch-orf-vs-coveragetype
Title: "Coverage Type"
Description: "Value Set for CH ORF Coverage Type"
* ^experimental = false
* include codes from system ChOrfCoverageType


ValueSet: ChOrfCoverageIdentifierType
Id: ch-orf-vs-coverageidentifiertype
Title: "Coverage Identifier Type"
Description: "Value Set for CH ORF Coverage Identifier Type"
* ^experimental = false
* include codes from system ChOrfCoverageIdentifierType


ValueSet: ChOrfAppointmentStatus
Id: ch-orf-vs-appointmentstatus
Title: "Appointment Status"
Description: "Value Set for CH ORF Appointment Status"
* ^experimental = false
* AppointmentStatus#proposed
* AppointmentStatus#pending
* AppointmentStatus#booked


ValueSet: ChOrfConsentStatus
Id: ch-orf-vs-consentstatus
Title: "Consent Status"
Description: "Value Set for CH ORF Consent Status"
* ^experimental = false
* ChOrfConsentStatus#ExplicitAgreement "Patient is informed and has explicitly agreed"
* ChOrfConsentStatus#Other "Other situation such as 'implicit agreement', 'agreed by legal guardian' etc." 
* SCT#373068000 "Undetermined (qualifier value)" // --> entspricht leer



ValueSet: ChOrfEncounterClass
Id: ch-orf-vs-encounterclass
Title: "Encounter Class"
Description: "Value Set for CH ORF Encounter Class"
* ^experimental = false
* V3ActCode#AMB     /* Ambulatory: A comprehensive term for health care 
                    provided in a healthcare facility (e.g. a practitioneraTMs 
                    office, clinic setting, or hospital) on a nonresident basis. 
                    The term ambulatory usually implies that the patient has come 
                    to the location and is not assigned to a bed. 
                    Sometimes referred to as an outpatient encounter. */
* V3ActCode#IMP     /*	Inpatient encounter: A patient encounter where a patient is 
                    admitted by a hospital or equivalent facility, assigned to a 
                    location where patients generally stay at least overnight and 
                    provided with room, board, and continuous nursing service.*/
* V3ActCode#EMER    /* Emergency: A patient encounter that takes place at a dedicated 
                    healthcare service delivery location where the patient receives 
                    immediate evaluation and treatment, provided until the patient 
                    can be discharged or responsibility for the patient's care is transferred 
                    elsewhere (for example, the patient could be admitted as an inpatient or 
                    transferred to another facility.)*/                

ValueSet: ChOrfVsDesiredAccommodation
Id: ch-orf-vs-desiredaccommodation
Title: "Desired Accomodation"
Description: "Value Set for CH ORF Desired Accomodation"
* ^experimental = false
* ChCoreCSEncounterType#1 "allgemein"
* ChCoreCSEncounterType#2 "halbprivat"
* ChCoreCSEncounterType#3 "privat"


ValueSet: ChOrfVsPersonalRelation
Id: ch-orf-vs-personalrelation
Title: "Personal Relation"
Description: "Value Set for Personal Relation"
* ^experimental = false
* SCT#66089001 "Daughter (person)"
* SCT#65616008 "Son (person)"
//127848009 "Spouse (person)"
* SCT#127849001 "Husband (person)"
* SCT#127850001 "Wife (person)"
* SCT#394921008 "Cohabitee (person)"
* SCT#70924004  "Brother (person)"
* SCT#27733009  "Sister (person)"
* SCT#72705000  "Mother (person)"
* SCT#66839005  "Father (person)"
* SCT#48385004  "Acquaintance (person)"
// "Other" --> Empty

ValueSet: ChOrfVSLegalRelation
Id: ch-orf-vs-legalrelation
Title: "Legal Relation"
Description: "Value Set for Legal Relation"
* ^experimental = false
* SCT#373068000 "Undetermined (qualifier value)"
* SCT#58626002  "Legal guardian (person)"