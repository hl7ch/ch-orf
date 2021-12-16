# Change Log for Implementation Guide CH ORF
All notable changes to this project will be documented in this file.   

## v1.0.0 - 2021-xx-xx
These changes were made based on the comments of the HL7 Switzerland STU 1 Ballot.

### Added
* [Description](index.html#composition-resource) of the handling of general information about the document in derived questionnaires (title, type and category).
   * [Issue #31](https://github.com/hl7ch/ch-orf/issues/31) 
   
### Changed / Updated
* Improvement/updating of the documentation.
   * [Issue #44](https://github.com/hl7ch/ch-orf/issues/44): Description in the [FHIR Representation](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/index.html#fhir-representation) section adapted, i.e. 'XML' removed, as FHIR can also be serialised for exchange in formats other than XML.
   * [Issue #42](https://github.com/hl7ch/ch-orf/issues/42): Instead of the redundantly embedded differential tables of the profiles on the 'Home' page ([Volume 3 - Content Modules](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/index.html#volume-3-%E2%80%93-content-modules)), links to the profiles are provided at the relevant places.
   * [Issue #43](https://github.com/hl7ch/ch-orf/issues/43): Add meaningful descriptions to the [profiles](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/profiles.html).
   * [Issue #51](https://github.com/hl7ch/ch-orf/issues/51): Add a [description](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/index.html#generic-elements-of-a-questionnaire) of the use of the PractitionerRole resource.
* The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/branches/master/StructureDefinition-ch-orf-composition.html))
   * [Issue #53](https://github.com/hl7ch/ch-orf/issues/53) (Feedback 1)
* Update the suppressed messages (QA), mainly because of display values.
   * [Issue #30](https://github.com/hl7ch/ch-orf/issues/30)
* Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
* [Issue #50](https://github.com/hl7ch/ch-orf/issues/50)
 
### Fixed
* Different elements for start and end time of an Appointment, according to the status. Add examples of Appointments with the different status.
   * [Issue #48](https://github.com/hl7ch/ch-orf/issues/48)  
* Links to SDC FHIR IG: Some links were broken and other links led to wrong versions. For this publication, the IG CH ORF is derived from [SDC v2.7.0](http://hl7.org/fhir/uv/sdc/2019May/). The links were fixed so that they link to this version.
   * Issues: [#32](https://github.com/hl7ch/ch-orf/issues/32), [#34](https://github.com/hl7ch/ch-orf/issues/34), [#35](https://github.com/hl7ch/ch-orf/issues/35), [#36](https://github.com/hl7ch/ch-orf/issues/36), [#49](https://github.com/hl7ch/ch-orf/issues/49), [#45](https://github.com/hl7ch/ch-orf/issues/45)
* Fixed typos
   * Issues: [#45](https://github.com/hl7ch/ch-orf/issues/45), [#41](https://github.com/hl7ch/ch-orf/issues/41), [#37](https://github.com/hl7ch/ch-orf/issues/37), [#38](https://github.com/hl7ch/ch-orf/issues/38), [#39](https://github.com/hl7ch/ch-orf/issues/39), [#40](https://github.com/hl7ch/ch-orf/issues/40)
* Fixed mapping
   * [Issue #46](https://github.com/hl7ch/ch-orf/issues/46)  
   * [Issue #47](https://github.com/hl7ch/ch-orf/issues/47) 