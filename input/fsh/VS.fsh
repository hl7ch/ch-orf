// Probably better in CH Core -> next release
ValueSet: ChOrfCoverageType
Id: ch-orf-vs-coveragetype
Title: "Coverage Type"
Description: "Value Set for CH ORF Coverage Type"
* include codes from system ChOrfCoverageType


ValueSet: ChOrfCoverageIdentifierType
Id: ch-orf-vs-coverageidentifiertype
Title: "Coverage Identifier Type"
Description: "Value Set for CH ORF Coverage Identifier Type"
* include codes from system ChOrfCoverageIdentifierType


ValueSet: ChOrfAppointmentStatus
Id: ch-orf-vs-appointmentstatus
Title: "Appointment Status"
Description: "Value Set for CH ORF Appointment Status"
* AppointmentStatus#proposed
* AppointmentStatus#pending
* AppointmentStatus#booked

ValueSet: ChOrfEncounterClass
Id: ch-orf-vs-encounterclass
Title: "Encounter Class"
Description: "Value Set for CH ORF Encounter Class"
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
* V3ActCode#P // Private: Accommodations in which there is only 1 bed.
* V3ActCode#SP // Semi-private: Accommodations in which there are 2 beds.
* V3ActCode#W // Ward: Accommodations in which there are 3 or more beds.


