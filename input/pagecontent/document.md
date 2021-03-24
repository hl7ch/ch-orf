### FHIR document (Bundle)
This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a Bundle as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="document.png" caption="Fig.: Document (Referral minimal)" width="50%" %}

* Profile: [CH ORF Document](StructureDefinition-ch-orf-document.html)
* Example: Referral minimal ([XML](Bundle-referral-min.xml.html), [JSON](Bundle-referral-min.json.html))
