
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:
* [Issue #82](https://github.com/hl7ch/ch-orf/issues/82): Questionnaire support for expression based population and advanced behavior 
* [Issue #70](https://github.com/hl7ch/ch-orf/issues/70): Questionnaire Order-Referral-Form adaption for eToc needs
* [Feature requests](https://github.com/hl7ch/ch-orf/issues?q=is%3Aissue+is%3Aopen+label%3A%22feature+request%22) for additions to the CH ORF Questionnaire
   * Issues: [#74](https://github.com/hl7ch/ch-orf/issues/74), [#73](https://github.com/hl7ch/ch-orf/issues/73), [#72](https://github.com/hl7ch/ch-orf/issues/72), [#71](https://github.com/hl7ch/ch-orf/issues/71), [#66](https://github.com/hl7ch/ch-orf/issues/66), [#61](https://github.com/hl7ch/ch-orf/issues/61), [#59](https://github.com/hl7ch/ch-orf/issues/59)

See also open issues on [GitHub](https://github.com/hl7ch/ch-orf/issues).

#### Added
* [Description](index.html#composition-resource) of the handling of general information about the document in derived questionnaires (title, type and category).
   * [Issue #31](https://github.com/hl7ch/ch-orf/issues/31) 
* Add patients marital status to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
   * [Issue #60](https://github.com/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7ch/ch-orf/issues/63)    
* Add patients language of correspondance to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
   * [Issue #64](https://github.com/hl7ch/ch-orf/issues/64) 
* Add 'ZSR' as Practitioner.identifier to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
   * [Issue #65](https://github.com/hl7ch/ch-orf/issues/65) 
* Add 'GLN' to organization ([Questionnaire](Questionnaire-order-referral-form.html)).
   * [Issue #57](https://github.com/hl7ch/ch-orf/issues/57)

#### Changed / Updated
* Improvement/updating of the documentation.
   * [Issue #44](https://github.com/hl7ch/ch-orf/issues/44): Description in the [FHIR Representation](index.html#fhir-representation) section adapted, i.e. 'XML' removed, as FHIR can also be serialised for exchange in formats other than XML.
   * [Issue #42](https://github.com/hl7ch/ch-orf/issues/42): Instead of the redundantly embedded differential tables of the profiles on the 'Home' page ([Volume 3 - Content Modules](index.html#volume-3-%E2%80%93-content-modules)), links to the profiles are provided at the relevant places.
   * [Issue #43](https://github.com/hl7ch/ch-orf/issues/43): Add meaningful descriptions to the [profiles](profiles.html).
   * [Issue #51](https://github.com/hl7ch/ch-orf/issues/51): Add a [description](index.html#generic-elements-of-a-questionnaire) of the use of the PractitionerRole resource.
* The patient in the order defined as required ([Questionnaire](Questionnaire-order-referral-form.html), [CH ORF Composition Profile](StructureDefinition-ch-orf-composition.html))
   * [Issue #53](https://github.com/hl7ch/ch-orf/issues/53) (Feedback 1)
* Update the suppressed messages (QA), mainly because of display values.
   * [Issue #30](https://github.com/hl7ch/ch-orf/issues/30)
* Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
   * [Issue #50](https://github.com/hl7ch/ch-orf/issues/50)
* Expansion of the [questionnaire](Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](Coverage-CoverageSelfPatient.html) or [related person](Coverage-CoverageSelfRelatedPerson.html) as self-payer.
   * [Issue #80](https://github.com/hl7ch/ch-orf/issues/80)
* Change source of the codes for [desired accommodation](ValueSet-ch-orf-vs-desiredaccommodation.html).
   * [Issue #91](https://github.com/hl7ch/ch-orf/issues/91)

#### Fixed
* Set values for IV and MV (Coverage.payor) in the mapping.
   * [Issue #52](https://github.com/hl7ch/ch-orf/issues/52)
* Different elements for start and end time of an Appointment, according to the status. Add examples of Appointments with the different status.
   * [Issue #48](https://github.com/hl7ch/ch-orf/issues/48)  
* Links to SDC FHIR IG: Some links were broken and other links led to wrong versions. For this publication, the IG CH ORF is derived from [SDC v2.7.0](http://hl7.org/fhir/uv/sdc/2019May/). The links were fixed so that they link to this version.
   * Issues: [#32](https://github.com/hl7ch/ch-orf/issues/32), [#34](https://github.com/hl7ch/ch-orf/issues/34), [#35](https://github.com/hl7ch/ch-orf/issues/35), [#36](https://github.com/hl7ch/ch-orf/issues/36), [#49](https://github.com/hl7ch/ch-orf/issues/49), [#45](https://github.com/hl7ch/ch-orf/issues/45)
* Fixed typos
   * Issues: [#45](https://github.com/hl7ch/ch-orf/issues/45), [#41](https://github.com/hl7ch/ch-orf/issues/41), [#37](https://github.com/hl7ch/ch-orf/issues/37), [#38](https://github.com/hl7ch/ch-orf/issues/38), [#39](https://github.com/hl7ch/ch-orf/issues/39), [#40](https://github.com/hl7ch/ch-orf/issues/40)
* Mapping refinements
   * Issues: [#46](https://github.com/hl7ch/ch-orf/issues/46), [#47](https://github.com/hl7ch/ch-orf/issues/47), [#28](https://github.com/hl7ch/ch-orf/issues/28)
* Fixed by IG Publisher update
   * [Issue #69](https://github.com/hl7ch/ch-orf/issues/69)

#### Issues resolved without amendment
* [Issue #55](https://github.com/hl7ch/ch-orf/issues/55): Coverage.type
* [Issue #56](https://github.com/hl7ch/ch-orf/issues/56): Coverage.class.type
* [Issue #62](https://github.com/hl7ch/ch-orf/issues/62): Various identifiers
* [Issue #54](https://github.com/hl7ch/ch-orf/issues/54): Further development form, OID sender/receiver
* [Issue #58](https://github.com/hl7ch/ch-orf/issues/58): Multiple endpoints for one receiver 