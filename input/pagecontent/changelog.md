
All significant changes to this FHIR implementation guide will be documented on this page.   

### v3.0.2 - HL7 Switzerland STU 3 Technical Correction (2025-12)
* Update dependency: CH Core 6.0.0-ballot -> 6.0.0 (TODO)

### v3.0.1 - HL7 Switzerland STU 3 Technical Correction (2025-05-22)
* [#195](https://github.com/hl7ch/ch-orf/issues/195): Updated **dependencies** to align with the latest versions of CH Core and CH Term to support CH LAB-Order's 2025 ballot submission; applied **technical corrections** required by the updated IG Publisher.
   * Update dependencies: CH Core 5.0.0 -> 6.0.0-ballot, HL7 Terminology (R4) 6.1.0 -> 6.3.0
   * [#194](https://github.com/hl7ch/ch-orf/issues/194): Add [expansion-parameter](https://build.fhir.org/codesystem-guide-parameter-code.html#:~:text=expansion%2Dparameter,as%20SNOMED%20CT) for the usage of SNOMED CT Swiss Extension
   * Add [pin-canonicals](http://build.fhir.org/ig/FHIR/fhir-tools-ig/branches/master/CodeSystem-ig-parameters.html#:~:text=for%20further%20information-,pin%2Dcanonicals,-Pin%20Canonical%20Versions) parameter to define the handling of unversioned canonical references
   * Change references from RelatedPerson to new introduced CH Core RelatedPerson

### v3.0.0 - HL7 Switzerland STU 3 (2024-12-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [#176](https://github.com/hl7ch/ch-orf/issues/176): Revision (harmonization, usage SCT) of code system and value set ServiceRequest Category

See also open issues on [GitHub](https://github.com/hl7ch/ch-orf/issues).

#### Changed / Updated
* [#185](https://github.com/hl7ch/ch-orf/issues/185): Add dates to the published versions in the changelog
* [#182](https://github.com/hl7ch/ch-orf/issues/182): Translations optimized in the French use case
* [#179](https://github.com/hl7ch/ch-orf/issues/179): Unify spelling
* [#177](https://github.com/hl7ch/ch-orf/issues/177): Update to the CH Core Coverage (parent) -> usage of the revised CS/VS in CH Core for Coverage.type (remove the CH ORF own CS/VS)
* [#183](https://github.com/hl7ch/ch-orf/issues/183): Add acronyms (fr, it) for ZSR/AHV/KVG/UVG/VVG/IV/MV (de) to the questionnaire

#### Fixed
* [#191](https://github.com/hl7ch/ch-orf/issues/191): Replace deprecated discriminator (`pattern` -> `value`) resp. removal of the redundant slice definition (inherited from parent profile)

### v3.0.0-ballot - HL7 Switzerland STU 3 Ballot (2024-05-17)

#### Changed / Updated
* [#172](https://github.com/hl7ch/ch-orf/issues/172)
   * Adapt the URL to the renaming of CH Term: ch-epr-term to ch-term
* [#174](https://github.com/hl7ch/ch-orf/issues/174): Not requiring the display value 'Clinical presentation Document' (Composition.section:originalRepresentation.code)

#### Fixed
* [#170](https://github.com/hl7ch/ch-orf/issues/170): Typos
* [#171](https://github.com/hl7ch/ch-orf/issues/171): Fix the extension type: element not fhirpath

### v2.0.1 - HL7 Switzerland STU 2 (2023-12-28)

* [#270](https://github.com/hl7ch/ch-core/issues/270): Technical correction for invalid package

#### Changed / Updated
* [#151](https://github.com/hl7ch/ch-orf/issues/151): Clarify/update Consent.policyRule
* [#154](https://github.com/hl7ch/ch-orf/issues/154): Explanation of what MustSupport means in this IG

#### Fixed
* [#152](https://github.com/hl7ch/ch-orf/issues/152): Fix formatting and update style that it is clear that the text comes from SDC
* [#153](https://github.com/hl7ch/ch-orf/issues/153): Remove duplicated terms and unify spelling of CH eTOC

#### Open
* [#156](https://github.com/hl7ch/ch-orf/issues/156): Support Definition-based extraction 

#### Issues resolved without amendment
* [#155](https://github.com/hl7ch/ch-orf/issues/155): Terminology binding in service request

### v2.0.0-ballot - HL7 Switzerland STU 2 Ballot (2022-06-29)

#### Open Issues

See also open issues on [GitHub](https://github.com/hl7ch/ch-orf/issues).

#### Added
* [#61](https://github.com/hl7ch/ch-orf/issues/61): Family doctor
* [#71](https://github.com/hl7ch/ch-orf/issues/71): Initiator and his relationship to to the patient
* [#72](https://github.com/hl7ch/ch-orf/issues/72): Patient consent
* [#73](https://github.com/hl7ch/ch-orf/issues/73): Entry date, discharge Date and Organization of stationary episode antecedent to requested service (e.g spitex)
* [#102](https://github.com/hl7ch/ch-orf/issues/102): Translation of use cases in FR and DE
* Add documentation in tab 'Questionnaire' about
   * [Modular Form](modular-form.html)
   * [Form Population](form-population.html)
   * [Form Data Extraction](form-data-extraction.html)

#### Changed / Updated
* Update the dependencies to the current published versions
   * IG [CH Core](http://fhir.ch/ig/ch-core/history.html): v2.0.0 -> v2.1.0 -> v3.1.0 (current), see [#125](https://github.com/hl7ch/ch-orf/issues/125)
      * Update the GLN (Practitioner.identifier) in the examples because of the modulus 10 check 
      * Added Appendix in index with Safety Considerations, IP Statements, Cross Version Analysis and Global, Dependency Table
   * IG [SDC](http://hl7.org/fhir/uv/sdc/history.html): v2.7.0 -> v3.0.0
      * Adaptation of the parent profile of the CH ORF Questionnaire
         * `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract` -> `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire`
      * Adaptation of the Questionnaire profiles to the new SDC profiles ([CH ORF Questionnaire](Questionnaire-order-referral-form.json.html): `Questionnaire.meta.profile`)
         * `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract` -> `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap`
         * `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-populate` -> `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp`
      * Update [Home](index.html) 
* Change Cardinality of Contact Person from 0..1 to 0..* [Issue #106](https://github.com/hl7ch/ch-orf/issues/106)
  
* Improve slicing: [Issue #108](https://github.com/hl7ch/ch-orf/issues/108): Improve slicing that info entry[x] warnings are not shown.
* Update home: [#119](https://github.com/hl7ch/ch-orf/issues/119)
* Update of QuestionnaireResponse Medical Referral with new items [#138](https://github.com/hl7ch/ch-orf/issues/138)


#### Fixed
* Typo: [#105](https://github.com/hl7ch/ch-orf/issues/105)
* Link id's: [Issue #113](https://github.com/hl7ch/ch-orf/issues/113)
* Required elements from Consent resource specified: [Issue #115](https://github.com/hl7ch/ch-orf/issues/115)
* Typo: [#124](https://github.com/hl7ch/ch-orf/issues/124)
* Cardinality of Appointment.actor set to 0..1: [#132](https://github.com/hl7ch/ch-orf/issues/132)
* Erroneous entry in ch.fhir.ig.ch-orf.xml: [#140](https://github.com/hl7ch/ch-orf/issues/140)eroneuous entry in ch.fhir.ig.ch-orf.xml


### v1.0.0 - HL7 Switzerland STU 1 (2022-02-22)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:
* [Issue #82](https://github.com/hl7ch/ch-orf/issues/82): Questionnaire support for expression based population and advanced behavior 
* [Issue #70](https://github.com/hl7ch/ch-orf/issues/70): Questionnaire Order-Referral-Form adaption for eToc needs
* [Feature requests](https://github.com/hl7ch/ch-orf/issues?q=is%3Aissue+is%3Aopen+label%3A%22feature+request%22) for additions to the CH ORF Questionnaire
   * Issues: [#74](https://github.com/hl7ch/ch-orf/issues/74), [#73](https://github.com/hl7ch/ch-orf/issues/73), [#72](https://github.com/hl7ch/ch-orf/issues/72), [#71](https://github.com/hl7ch/ch-orf/issues/71), [#66](https://github.com/hl7ch/ch-orf/issues/66), [#61](https://github.com/hl7ch/ch-orf/issues/61), [#59](https://github.com/hl7ch/ch-orf/issues/59)

#### Added
* [Description](index.html#composition-resource) of the handling of general information about the document in derived questionnaires (title, type and category).
   * [Issue #31](https://github.com/hl7ch/ch-orf/issues/31) 
* Add patients marital status to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
   * [Issue #60](https://github.com/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7ch/ch-orf/issues/63)    
* Add patients language of correspondence to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
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
* Added explanation in [questionnaire](Questionnaire-order-referral-form.html): "Copy receiver is ment to receive a copy from the order and all evolving results".
   * [Issue #84](https://github.com/hl7ch/ch-orf/issues/84) 
* Change source of the codes for [desired accommodation](ValueSet-ch-orf-vs-desiredaccommodation.html).
   * [Issue #91](https://github.com/hl7ch/ch-orf/issues/91)
* Cardinality for Questionnaire and QR in [Composition](StructureDefinition-ch-orf-composition.html) set to 0..1. --> Exchange format can be used without questionnaire.
    * [Issue #101](https://github.com/hl7ch/ch-orf/issues/101) 

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