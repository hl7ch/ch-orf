The CH **O**rder & **R**eferral by **F**orm (CH ORF) implementation guide and its derivatives describe how forms for eReferrals, requests for information (such as diagnostic imaging results, lab results, discharge reports etc.) can be defined, deployed and used in order to achieve a syntactical and semantically consistent cross enterprise information exchange. 

Whereas CH ORF is the "mother"-implementation guide defining attributes and value sets necessary in all sorts of order and referrals (such as patient name, order placer and order filler, insurance data etc.), derivatives cover specific use cases thus defining dedicated attributes and value sets needed there. Currently under development are CH eTOC for electronic transition of care, CH RAD Order for imaging services and CH LAB Order for laboratory orders. 

All support creation and domain wide deployment of forms for structured and coded information exchange. Because the implementation guide relies heavily on the FHIR resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.

All IG derived from CH Orf use FHIR defined resources – Composition, Questionnaire, QuestionnaireResponse, Patient, PractitionerRole, Practitioner, Organization, ServiceRequest and Bundle from FHIR R4. For details on HL7 FHIR R4 see [http://hl7.org/fhir/r4](http://hl7.org/fhir/r4).

CH ORF and its derivatives are derived from the implementation guides [HL7 Structured Data Capture - STU 3](http://hl7.org/fhir/uv/sdc/STU3/index.html) and [CH Core](https://fhir.ch/ig/ch-core/index.html).

<div markdown="1" class="stu-note">
[Significant changes, open and closed issues](changelog.html)
</div>

**Download:** 
You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### MustSupport
In this implementation guide “MustSupport” (MS) denotes elements of the questionnaire that are mapped to corresponding resource items. 

### Volume 1 – Implementation Guide
The CH ORF implementation guide addresses three issues:
1. It supports a scenario where an authority (e.g., health authority, expert panel) defines a set of forms (here called questionnaires) for well-defined use cases which then are deployed in a specific enterprise, domain etc. or even nationwide.
2. New use cases or changes in use cases can easily be handled either by modification of existing questionnaires or new ones. 
3. It assures that the representation of an order at filler's site is consistent to the placer site. CH ORF addresses this by supplying a questionnaire which defines sequence and grouping of items in a form. Authors of CH ORF derivatives are advised to do the same. 

When writing the CH ORF implementation guide, the authors had the following use case in mind: A human fills in a questionnaire for a particular request and sends this questionnaire to a receiver. There, a human reads the questionnaire with its content. A corresponding response will work in the same way. There is possibly some payload coming with the questionnaire: A request may be accompanied by results of preceding exams (e.g. images, reports); the response may be a diagnostic result. Workflow is therefore not a particular issue because directional information exchange is based on a request and response mechanism.

There may be good reasons to implement user interfaces by other technical means than questionnaires. Therefore CH ORF sets the cardinality for the questionnaire / questionnaireResponse to 0.. thus  allowing authors of derivatives to decide if applications following their IG must implement a questionnaire / questionnaireResponse or not. In any case, the questionnaire will give guidance for sequence and grouping of items in the user interface.

A major challenge is the need for further machine processing: at filler site in terms of prepopulating attributes with content from other applications (e.g. demographic data of a patient) whereas the receiver may want to have the content of the form ready for further processing in his applications. Obviously the two aims – semantic interoperability and flexibility in the definition of questionnaires – are contradictory. CH ORF addresses this problem by defining the mandatory set of generic elements and codes with defined being part of every CH ORF derived IG. Derivatives will then only define additional case specific elements.

Vendors implementing the CH ORF implementation guide (or one of its derivatives) therefore benefit of a high re-use potential.

There has been a discussion whether population of the resources such as Patient, ServiceRequest etc. with the content of the QuestionnaireResponse should be done by the order placer application or rather by the order filler application. The argument for assigning the task to the order placer is a result of not making the implementation of a questionnaire / questionnaireResponse mandatory: For the sake of keeping all CH ORF derived exchange formats equal (as far as sensible), the authors decided to mandate the order placer application with the task.

Applications claiming for conformance with an CH ORF derived implementation guide shall:
* Render (and in case of the Questionnaire Filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print). Grouping of items and the order of items within shall be adequately reproduced according to the questionnaire.
* In case of an implementation without the resources Questionnaire and QuestionnaireResponse, the content of otherwise implemented user interfaces shall be in accordance to the questionnaire definition.

Vendors of applications with Questionnaire Filler/Questionnaire Receiver actors are strongly recommended to implement interfaces to other applications (such as HIS and PACS) at least for all data in the generics elements of questionnaires.

Nothing speaks against interfaces for data in the use case specific part of a particular questionnaire. One has however to keep in mind, that such interfaces are tied to a specific questionnaire. Ownership or other means, which prevent changes of the questionnaire by third parties, are therefore advisable.

The ORF implementation guide deals with transport, workflow and content. It is based on FHIR resources and in particular the FHIR Questionnaire resource. FHIR specifies RESTful web services as a mean for transport. An implementation based on RESTful web services is strongly recommended however not mandatory to comply with the CH ORF implementation guide or its derivatives unless the authors of a derivate insist on it. Content is defined by a set of generic given elements and codes and the possibility to extend both as required by the use cases addressed

#### ORF Actors, Transactions and Content Modules
This implementation guide depends on the implementation guide [Structured Data Capture](http://hl7.org/fhir/uv/sdc/STU3/index.html):   
*Questionnaires and forms are found everywhere in healthcare. They are used to capture administrative data, claims data, clinical information, research information, for public health reporting - every type of data that is manipulated by healthcare systems. They provide a user-friendly mechanism for capturing data in a consistent way. In FHIR, forms are represented using the Questionnaire resource and completed forms are represented using the QuestionnaireResponse resource. The base FHIR specification defines these resources but does not provide much guidance around how they should be used, nor does it set minimal expectations for interoperation. The SDC implementation guide provides a set of guidance around the use of Questionnaire and QuestionnaireResponse.*

##### SDC Specification relevant to CH ORF
These sections define the different use cases supported by SDC, specify the profile(s) needed to meet the use cases.
1. [Finding a questionnaire](http://hl7.org/fhir/uv/sdc/STU3/search.html) describes expectations for systems serving as form repositories as well as clients who will need to search for forms.
2. [Advanced form rendering](http://hl7.org/fhir/uv/sdc/STU3/rendering.html) describes how to use various questions and the base capabilities of questionnaire to render different types of form elements.
3. [Form behavior and calculation](http://hl7.org/fhir/uv/sdc/STU3/behavior.html) describes how to design 'active' forms that adjust what information is displayed and/or that perform calculations based on user input.
4. [Form population](http://hl7.org/fhir/uv/sdc/STU3/populate.html) describes how to design questionnaires to support pre-population of answers and how to use services that support pre-populating forms.
5. [Form data extraction](http://hl7.org/fhir/uv/sdc/STU3/extraction.html) describes how to design questionnaires to support converting completed forms into a FHIR resource or a bundle of FHIR resources for subsequent analysis.
6. [Modular forms](http://hl7.org/fhir/uv/sdc/STU3/modular.html) simplify the questionnaire maintenance process by allowing questions or sections of a questionnaire to be shared across multiple forms. This also increases the consistency of questions and allows data to be more comparable.
7. [Adaptive forms](http://hl7.org/fhir/uv/sdc/STU3/adaptive.html) describes an architecture to support completing forms where the questionnaire is not pre-defined and instead is dynamically developed based on the user's answers.

##### SDC Actors and Workflow relevant to CH ORF
To be considered SDC-conformant, a system must adhere to the requirements defined by at least one of these statements. Some systems might choose to comply with more than one.
* [SDC Form Designer](http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-designer.html) - System responsible for creating and editing form designs.
* [SDC Form Filler](http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-filler.html) - System responsible for capturing user form input to produce partially or fully completed forms.
* [SDC Form Manager](http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-manager.html) - Repository for form definitions. May also perform pre-population.
* [SDC Form Response Manager](http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-response-manager.html) - Searchable repository for storage and retrieval of completed and partially completed forms.
* [SDC Form Receiver](http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-receiver.html) - Write-only destination to which forms are sent for processing.

The relationship between these roles and a summary of how they can interact is shown in <sup>&#91;Figure 1&#93;</sup>.

<div style="max-width:40%;">
    <img src="sdc-form-operations.png" width="472" height="354" />
</div>
<sup>&#91;Figure 1&#93;</sup> *SDC role operations*

##### CH ORF
This section defines the actors, transactions and/or content modules specific to this implementation guide.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>Actor</th>
            <th>Definition</th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>A system that renders Questionnaires and allows for filling in. The Questionnaire Filler is also responsible for filling in the corresponding resources in the Bundle, corresponds to the <a href="http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-filler.html">SDC Form Filler</a>.</td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>A system that receives a Bundle (according to the Questionnaire) from a Questionnaire Filler and renders it, corresponds to the <a href="http://hl7.org/fhir/uv/sdc/STU3/CapabilityStatement-sdc-form-receiver.html">SDC Form Receiver</a>.</td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 1&#93;</sup> *ORF actors* 

<div style="max-width:40%;">
    <img src="ChOrfQuestionnaireHandlingActorDiagram.svg" width="700" height="220"/>
</div>
<sup>&#91;Figure 2&#93;</sup> *Questionnaire handling actor diagram*

<sup>&#91;Figure 2&#93;</sup> shows the actors directly involved in the ORF implementation guide and the relevant transactions between them. Actors which have a mandatory grouping are shown in conjoined boxes.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>Actor</th>
            <th>Transaction</th>
            <th>Optionality</th>
            <th>Reference</th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>Submit Bundle [CH ORF-1]</td>
            <td>O</td>
            <td><a href="index.html#volume-2--transactions">Volume 2 – Transactions</a></td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>Submit Bundle [CH ORF-1]</td>
            <td>O</td>
            <td><a href="index.html#volume-2--transactions">Volume 2 – Transactions</a></td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 2&#93;</sup> *ORF actors and transactions*

<sup>&#91;Table 2&#93;</sup> lists the transactions for each actor directly involved in the Order & Referral by Form (ORF) implementation guide. To claim compliance with this implementation guide, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”).

The Submit Bundle transaction is marked as optional to allow solutions which choose a different communication transaction method like IHE XDS, XDR, XMD to be conform with this implementation guide.

A product implementation using the group actors from this implementation guide with actors from a workflow or transport implementation guide to be functional. The grouping of the content module described in this implementation guide to specific actors is described in more detail in the [Required Actor Groupings](index.html#orf-required-actor-groupings) section below.

<sup>&#91;Table 3&#93;</sup> lists the content module defined in the Order & Referral by Form (ORF) implementation guide. To claim support with this implementation guide, an actor shall support all required content modules (labeled “R”) and may support optional content modules (labeled “O”). The content module is based on the CH Core profiles.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>Actor</th>
            <th>Content Module</th>
            <th>Optionality</th>
            <th>Reference</th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>ORF Content Module <sup>&#91;Note 1&#93;</sup></td>
            <td>R</td>
            <td><a href="index.html#volume-3--content-modules">Volume 3 – Content Modules</a></td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>ORF Content Module <sup>&#91;Note 1&#93;</sup></td>
            <td>R <sup>&#91;Note 1&#93;</sup></td>
            <td><a href="index.html#volume-3--content-modules">Volume 3 – Content Modules</a></td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 3&#93;</sup> *ORF actors and content modules*

<sup>&#91;Note 1&#93;</sup> *The content of the form depends on the form which itself is defined by the FHIR Questionnaire. The Questionnaire defines elements and structure of the form. Codes for coded attributes are provided with corresponding value sets (for details see [Content Modules (Volume 3)](index.html#volume-3--content-modules)).*

##### ORF Actor Descriptions and Actor Requirements
Most requirements are documented in [Transactions (Volume 2)](index.html#volume-2--transactions) and [Content Modules (Volume 3)](index.html#volume-3--content-modules). This section documents any additional requirements on implementation guide's actors.

Questionnaire Filler and Questionnaire Receiver actors may be implemented on a mobile device, although this is not the primary setting in mind. All other actors will rather be implemented in a stationary setting because the use case addressed involve mostly stationary applications.

#### ORF Actor Options
Options that may be selected for each actor in this profile, if any, are listed in <sup>&#91;Table 4&#93;</sup>. Dependencies between options when applicable are specified in notes.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>Actor</th>
            <th>Option Name</th>
            <th>Reference</th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>No options defined</td>
            <td>--</td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>No options defined</td>
            <td>--</td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 4&#93;</sup> *ORF actors and options*

#### ORF Required Actor Groupings
An actor from this implementation guide (column 1) shall implement all of the required transactions and/or content modules in this profile **in addition to** all of the transactions required for the grouped actor (column 2).

If this is a content module, and actors from this implementation guide are grouped with actors from a workflow or transport profile, the content bindings reference column references any specifications for mapping data from the content module into data elements from the workflow or transport transactions.

In some cases, required groupings are defined as at least one of an enumerated set of possible actors; this is designated by merging column one into a single cell spanning multiple potential grouped actors. Notes are used to highlight this situation.

The [Security Considerations](index.html#orf-security-considerations) section describes some optional groupings that may be of interest for security considerations.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th>ORF Actor</th>
            <th>Actor to be grouped with</th>
            <th>Reference</th>
            <th>Content Bindings Reference</th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>Questionnaire Receiver</td>
            <td><a href="index.html#ch-orf">CH ORF</a> Actors/Transactions</td>
            <td><a href="index.html#volume-3--content-modules">Volume 3 – Content Modules</a></td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>Questionnaire Filler</td>
            <td><a href="index.html#ch-orf">CH ORF</a> Actors/Transactions</td>
            <td><a href="index.html#volume-3--content-modules">Volume 3 – Content Modules</a></td>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>CT Time Client</td>
            <td><a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a> CT Actors/Transactions</td>
            <td>na</td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>CT Time Client</td>
            <td><a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a> CT Actors/Transactions</td>
            <td>na</td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 5&#93;</sup> *ORF required actor groupings*

#### ORF Overview

##### Use Cases

###### Questionnaire Usage Process Flow
Dr. Miller has a new patient John Doe who has had an MRI at the radiology service “S-U-P-E-R-XR”. Dr. Miller retrieves a special order questionnaire from the SDC Form Manager at S-U-P-E-R-XR which allows ordering of images and reports of previous exams. Dr. Miller fills in this questionnaire and sends it back. At S-U-P-E-R-XR, a staff member will fill in another questionnaire with a reply, attaches images and reports an sends all to Dr. Miller.

#### ORF Security Considerations
A resource server should not return any patient information unless proper authentication and communications security have been proven.

There are many reasonable methods of securing interoperability transactions. These security models can be layered in without modifying the characteristics of the ORF profile transactions. The use of TLS is mandatory.

User authentication on mobile devices is encouraged using Internet User Authorization (IUA) profile. The network communication security and user authentication are layered in at the HTTP transport layer and do not modify the interoperability characteristics defined in the ORF profile.

The Security Audit logging (e.g. ATNA) is recommended. Support for ATNA-based audit logging on the mobile health device may be beyond the ability of this constrained environment.

In case vendors decide to include the Patient ID (patient.identifier) as a query parameter on the resource URL (what would be out of the scope of ORF implementation guide), this URL pattern would present a risk when using typical web server audit logging of URL requests, and browser history. In both of these cases the URL with the patient identity would be clearly visible. These risks should be mitigated in system or operational design.

### Volume 2 – Transactions

#### Submit Bundle [CH ORF-1]
This section corresponds to transaction [CH ORF-1]. This transaction is used by the Questionnaire Filler and Questionnaire Receiver. This is a combination of extracting resources outlined in the SDC workflow [10.1. OPTIONAL: EHR system extracts data from Questionnaire Response](http://hl7.org/fhir/uv/sdc/STU3/workflow.html) and sending a Bundle including the extracted information according to Volume 3 and QuestionnaireResponse to the Questionnaire Receiver.

##### Scope
This transaction is used to submit a filled in Questionnaire together with required additional resources and attachment in a Bundle from a Questionnaire Filler to a Questionnaire Receiver.

##### Actor Roles
<div style="max-width:40%;">
    <img src="ChOrfActorsRoleSubmitBundle.svg" width="620" height="300"/>
</div>
<sup>&#91;Figure 3&#93;</sup> *Use case diagram*

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th><b>Actor</b></th>
            <th><b>Role</b></th>
        </tr>
        <tr>
            <td>Questionnaire Filler</td>
            <td>A system that allows querying a SDC Form Manager in order to fill in the elements for a QuestionnaireResponse. Upon completion, a corresponding Bundle will be submitted to the Questionnaire Receiver.</td>
        </tr>
        <tr>
            <td>Questionnaire Receiver</td>
            <td>A system that receives Bundles and processes them compliant to the ORF profile.</td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 6&#93;</sup> *ORF actors and roles*

##### Referenced Standard
* [HL7 FHIR](http://hl7.org/fhir/r4/index.html) - Fast Healthcare Interoperability Resources
* [HL7 SDC IG](http://hl7.org/fhir/uv/sdc/STU3/index.html) - Structured Data Capture Implementation Guide
* IETF RFC 2616 - Hypertext Transfer Protocol – HTTP/1.1
* IETF RFC 7540 - Hypertext Transfer Protocol – HTTP/2
* IETF RFC 3986 - Uniform Resource Identifier (URI): Generic Syntax
* IETF RFC 4627 - The application/json Media Type for JavaScript Object Notation (JSON)
* IETF RFC 6585 - Additional HTTP Status Codes
* [IHE Appendix on HL7 FHIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf) - Appendix Z – FHIR Implementation Material (Trial Implementation)

##### Interaction Diagram
<div style="max-width:40%;">
    <img src="ChOrfInteractionDiagramSubmitBundle.svg" width="400" height="210"/>
</div>
<sup>&#91;Figure 4&#93;</sup> *Interaction diagram*

###### Submit Bundle
The transaction uses the HTTP POST method on the target Questionnaire Receiver endpoint to convey the Bundle with the questionnaire as a FHIR transaction.

**Trigger Events**   
After the questionnaire is completed by the Questionnaire Filler user, the Questionnaire Filler submits the corresponding Bundle to the Questionnaire Receiver.

**Message Semantics**   
The Questionnaire Filler shall initiate a FHIR “transaction” using a “create” action by sending an HTTP POST request method composed of a FHIR Bundle resource containing the Composition resource and all resources referenced in, in particular one Questionnaire resource, one QuestionnaireResponse resource and additional resources according to the Questionnaire profile.

The media type of the HTTP body shall be either `application/json+fhir` or `application/xml+fhir`.

See [http://hl7.org/fhir/http.html#transaction](http://hl7.org/fhir/http.html#transaction) for complete requirements of a transaction. See [http://hl7.org/fhir/bundle-transaction.html](http://hl7.org/fhir/bundle-transaction.html) for example of a transaction Bundle.

Submit Bundle is sent to the base URI as defined in FHIR. See [http://hl7.org/fhir/r4/http.html](http://hl7.org/fhir/r4/http.html) for the definition of “http” access methods and “base”.

For complete information on constructing a FHIR Bundle resource, see [http://hl7.org/fhir/r4/bundle.html](http://hl7.org/fhir/r4/bundle.html).   
The FHIR `Bundle.meta.profile` shall include the value `http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-document`.

**Expected Actions**   
The Questionnaire Receiver shall accept both media types `application/json+fhir` and `application/xml+fhir`.

On receipt of the submission, the Questionnaire Receiver shall validate the resources and respond with one of the HTTP codes defined in *Message Semantics* of section [Status Message](index.html#status-message).

###### Status Message
The Questionnaire Receiver returns a HTTP Status code appropriate to the processing, conforming to the transaction specification requirements as specified in [http://hl7.org/fhir/r4/http.html#transaction](http://hl7.org/fhir/r4/http.html#transaction).

**Trigger Events**   
This message shall be sent once the Bundle with the questionnaire is received and completely processed.

**Message Semantics**   
When the Questionnaire Receiver has successfully processed the POST transaction, then the Questionnaire Receiver shall return an HTTP response with an overall status code.

In order to allow the Questionnaire Filler to know the outcomes of processing the transaction, and the identities assigned to the resources by the Questionnaire Receiver, the Questionnaire Receiver shall return a Bundle, with type set to `transaction-response`, that contains one entry for each entry in the request, in the same order, with the outcome of processing the entry. See FHIR [http://hl7.org/fhir/r4/bundle.html#transaction-response](http://hl7.org/fhir/r4/bundle.html#transaction-response).

Each entry element shall contain a response element which details the outcome of processing the entry - the HTTP status code. All other elements are not required.

On success, the Questionnaire Receiver shall return the HTTP status code 200 – OK.

Guidance on handling *Access Denied* related to use of 403 and 404 can be found in IHE Appendix on HL7 FHIR Z.7.

On failure, the Questionnaire Receiver shall return the HTTP status codes as follows:
* 400 Bad Request - resource could not be parsed or failed basic FHIR validation rules like reference inconsistencies, schema violations, etc.
* 404 Not Found - resource type not supported.
* 422 Unprocessable Entity - one or more proposed resources violated applicable FHIR profiles or server business rules.

In addition, the Questionnaire Receiver may also send 5xx HTTP status codes to indicate non-transaction related failures. Note that the Questionnaire Filler may also encounter non-FHIR endpoints which will not return a Bundle in the response.

The Questionnaire Receiver may return HTTP redirect responses (responses with HTTP status codes 301, 302, 303 or 307) in response to a request.

**Expected Actions**
If the Questionnaire Receiver returns an HTTP redirect response (HTTP status codes 301, 302, 303, or 307), the Questionnaire Filler shall follow that redirection, although it may stop processing if it detects a loop.

The Questionnaire Receiver processes the results according to application-defined rules.

If a Questionnaire Receiver cannot automatically recover from an error condition, at a minimum, it should display the error to the user.

###### Conformance Resource
Questionnaire Receiver implementing this transaction should provide a conformance resource as described in IHE Appendix on HL7 FHIR Z.3 indicating the operation has been implemented.


### Volume 3 – Content Modules

#### Questionnaire Content
This section describes the content of a form. The following definitions apply:

Request and responses consist of filled in questionnaires. Some elements of the questionnaire are generic given elements (such as author, data entry person, receiver etc.) and are always present in a questionnaire compliant to the ORF implementation guide. In addition, a questionnaire will contain elements which are use case specific. The ORF implementation guide makes no assumptions about the nature of such elements: structure and content (including coding of codes elements) are in the responsibility of those creating a form for a particular use case.

As this implementation guide is based on FHIR, the following rules apply:

Items, grouping of items, order of groups and order of elements within groups of a questionnaire shall be defined in a Questionnaire resource. The Questionnaire resource is defined by means of the SDC From Designer and made available by the SDC Form Manager.

Based on the Questionnaire, a Questionnaire Filler defines a QuestionnaireResponse and appropriate additional resources aimed at transmitting the information provided by the Questionnaire Filler in a standardized structured form. Upon completion of the questionnaire, the Questionnaire Filler shall create a Bundle with all resources mentioned above.

Questionnaires may be accompanied by additional material which can be attached or sent by postal mail (e.g. xray-films or paper documents). The use case may require some references between attached objects (e.g. which pdf-reports belongs to which imaging study).

#### Generic Elements of a Questionnaire
A Questionnaire shall have a set of generic elements (e.g. author, data entry person, receiver etc.). 

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th><b>Name</b></th>
            <th><b>Comment</b></th>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.authoredOn">Date</a></td>
            <td>Date when the request transitioned to being actionable (e.g sent to the receiver).</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.identifier">Placer Order Identifier</a></td>
            <td>Placer Order Identifier</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.identifier">Placer Order Identifier Domain</a></td>
            <td>Placer Order Identifier Domain</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.identifier">Filler Order Identifier</a></td>
            <td>Filler Order Identifier</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.identifier">Filler Order Identifier Domain</a></td>
            <td>Filler Order Identifier Domain</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Precedent Document Identifier</a></td>
            <td>Precedent Document Identifier</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Urgent Notification Contact for this document</a></td>
            <td>An information recipient to notify for urgent matters (e.g. in a radiology service, the radiologist has to be called by phone right away at the time the document is received.)</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Urgent Notification Contact for the Response to this document</a></td>
            <td>
                <p>An information recipient to notify for urgent matters about the response (e.g. in a clinical setting, the referring doctor has to be called by phone right away at the time the images and reports arrive).
                </p>
                <p>The Urgent Notification Contact for the Response can be specified already in the request. At the time the response is written, this element shall be populated to the Urgent Notification Contact element in the response.
                </p>
            </td>
        </tr>
       <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest">Priority</a></td>
            <td>Order priority.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Receiver</a></td>
            <td>Person/organization who receives the document.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Initiator</a></td>
            <td>Person or organization who initiated the service request; particularly in the context of spitex or admission to a nursing/retirement home (e.g the husband
            asks for spitex support because he needs help for the care of his wife).</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.subject">Patient</a></td>
            <td>The principle target of a particular form content is one patient.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.subject">Patient Contact Person</a></td>
            <td>The principle target of a particular form content is one patient.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R4/patient.html#Patient.managingOrganization">Familydoctor</a></td>
            <td>Healthprofessional who takes the role of a familydoctor.</td>
        </tr>
       <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.extension">Requested Encounter</a></td>
            <td>Requested Encounter such as ambulatory/inpatient/emergency.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.insurance">Coverage</a></td>
            <td>Payor covering the costs.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.author">Sender/Author</a></td>
            <td>The person/organization responsible for the form content.</td>
        </tr>
       <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Data Entry Person</a></td>
            <td>The person/organization who has typed/filled in the form content.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Copy Receiver</a></td>
            <td>Person/organization who receives the copy of this order (shall receive also all results therefrom).</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Antecedent Episode of Care</a></td>
            <td>Documentation of the episode of care preceding this order (e.g in case of care transfer between institutions such as hospitals, rehab. clinics, retirement homes etc.)"</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.extension">Appointment</a></td>
            <td>Indication of date/time and location of the requested appointment(s)</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.extension">Patientconsent</a></td>
            <td>Indication of whether the patient has given informed consent to this order; in particular for Spitex and transfer to nursing/retirement home, etc.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-servicerequest.html#ServiceRequest.note.text">Note</a></td>
            <td>General remarks</td>
        </tr>        
    </tbody>
</table>

<sup>&#91;Table 7&#93;</sup> *Generic elements in questionnaires compliant to the ORF implementation guide*

<sup>&#91;Table 7&#93;</sup> shows that the FHIR representation of elements representing a person and/or an organization is defined by the **PractitionerRole** resource. The Practitioner and/or the Organization resource can then be referenced from the PractitionerRole resource.

#### Healthcare Domain specific Elements of a Questionnaire
     
##### ServiceRequest Resource
The CH ORF context specific requirements for this resource are shown in the profile [CH ORF ServiceRequest](StructureDefinition-ch-orf-servicerequest.html).

##### DocumentReference Resource
There may be the need to provide a linkage between particular files or between a particular file and an imaging study (e.g. a link between a PDF-File containing a report and a DICOM study). Such links shall be expressed with a DocumentReference resource.

The CH ORF context specific requirements for this resource are shown in the profile [CH ORF DocumentReference](StructureDefinition-ch-orf-documentreference.html).
        
#### FHIR Representation
FHIR depicts forms in a Questionnaire resource. A Questionnaire resource can be conceived as an empty Questionnaire where as the filled in Questionnaire refers to the QuestionnaireResponse resource. QuestionnaireResponse resources are certainly structured but due to their flexibility in design not in a standardized manner. FHIR addresses this issue by means of its standardized resources.

The Order & Referral by Form implementation guide is based on two FHIR resources profiles. For details on profiling FHIR see HL7 FHIR [http://www.hl7.org/fhir/profiling.html](http://www.hl7.org/fhir/profiling.html). For details on FHIR resources and data-types see HL7 FHIR [http://hl7.org/fhir/](http://hl7.org/fhir/).

1. The CH ORF Questionnaire profile defines the usage of the FHIR Questionnaire resource within the Order & Referral by Form implementation guide. The Questionnaire resource is an organized collection of questions intended to solicit information from patients, providers or other individuals involved in the healthcare domain. They may be simple flat lists of questions or can be hierarchically organized in groups and sub-groups, each containing questions. The Questionnaire defines the questions to be asked, how they are ordered and grouped and what the constraints are on the allowed answers. The results of a Questionnaire can be communicated using the QuestionnaireResponse resource (see [http://www.hl7.org/fhir/questionnaire.html](http://www.hl7.org/fhir/questionnaire.html)).
2. The CH ORF Document profile defines the usage of the FHIR Bundle resource within the Order & Referral by Form (ORF) implementation guide. The document consist of a FHIR document (Bundle) that contains the results of a filled in Questionnaire (QuestionnaireResponse resource) together with the structured resources which map all information filled in the Questionnaire. The [Bundle](http://hl7.org/fhir/bundle.html) is of [type](http://hl7.org/fhir/bundle-definitions.html#Bundle.type) `document` and has a [Composition](http://hl7.org/fhir/composition.html) as the first resource in the Bundle, followed by a series of other resources, referenced from the Composition resource. The Bundle gathers all the content of the document into a single document which may be signed and managed as required. The resources include both human readable and computer processable sections. In addition, a Bundle as defined in this profile shall include a CSS stylesheets and optionally it may include a signature.<br /><br />Any resource referenced directly in the Composition resource shall be included in the Bundle. Other resources that these referenced resources refer to shall also be included in the Bundle. Including these additional resources will make the document bigger, but will save applications from needing to retrieve the linked resources.

##### FHIR Resources Constraints
This section lists FHIR resources for which these [CH ORF profiles](profiles.html) provide additional information. Resources not listed here follow the specifications of FHIR. For details refer to [https://www.hl7.org/fhir/resourcelist.html](https://www.hl7.org/fhir/resourcelist.html).

###### Composition Resource
The CH ORF context specific requirements for this resource are shown in the profile [CH ORF Composition](StructureDefinition-ch-orf-composition.html).

In the Composition, general information about the document is defined, such as title, type and category. In the CH ORF exchange format, no fixed values are determined for these elements, only a preferred binding to specific value sets is made. These values are context-dependent and have to be specified in the corresponding derived exchange format. They must be defined as `fixedValues` or limited value set in the Composition profile.

{:class="table table-bordered"}
<table>
    <tbody>
        <tr>
            <th><b>Element</b></th>
            <th><b>Description</b></th>
            <th><b>DataType</b></th>
            <th><b>ValueSet</b></th>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.title">Composition.title</a></td>
            <td>Meaningful human-readable title of the document</td>
            <td><code>string</code></td>
            <td>-</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.type">Composition.type</a></td>
            <td>Precise type of the document</td>
            <td><code>CodeableConcept</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet-DocumentEntry.typeCode.html">DocumentEntry.typeCode</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-ch-orf-composition.html#Composition.category">Composition.category</a></td>
            <td>High-level kind of the document at a macro level</td>
            <td><code>CodeableConcept</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet-DocumentEntry.classCode.html">DocumentEntry.classCode</a></td>
        </tr>
    </tbody>
</table>
<sup>&#91;Table 8&#93;</sup> *General information about the document defined in Composition*

###### Questionnaire Resource
The intention of the ORF Implementation guide is to provide a standardized representation of forms at sender and receiver site as well. This is achieved with the Questionnaire resource, which defines representation of all elements for the user (with the help of a CSS) and user interaction as well (e.g. with drop down lists).

This approach requires two things:
1. Precise definition of all questions
2. Mapping between elements of the Questionnaire resource and the corresponding elements of the other resources in the Bundle

Both is achieved by assigning meaningful concepts to all elements concerned. For codes refer to Appendix A.

The CH ORF context specific requirements for this resource are shown in the profile [CH ORF Questionnaire](StructureDefinition-ch-orf-questionnaire.html).
     
###### QuestionnaireResponse Resource
The QuestionnaireResponse resource depends of the definition of the Questionnaire resource and is therefore use case specific. For deriving QuestionnaireResponse resources from the Questionnaire resources refer to [https://www.hl7.org/fhir/r4/questionnaireresponse.html](https://www.hl7.org/fhir/r4/questionnaireresponse.html).

The CH ORF context specific requirements for this resource are shown in the profile [CH ORF QuestionnaireResponse](StructureDefinition-ch-orf-questionnaireresponse.html). 

This Implementation Guide provides three examples of QuestionnaireResponse such as [QuestionnaireResponse Medical Referral](QuestionnaireResponse-qr-order-referral-form.html), [QuestionnaireResponse Radiology Order](QuestionnaireResponse-qr-radiology-order.html) and [QuestionnaireResponse External Diagnostics Order](QuestionnaireResponse-qr-external-diagnostics-order.html). Only [QuestionnaireResponse Medical Referral](QuestionnaireResponse-qr-order-referral-form.html) shows all items filled in.

### Appendix


#### Safety Considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard. 
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardization. It cannot influence organizational and contractual matters.

#### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}