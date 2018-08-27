# ch-orf

The Order & Referral by Form (ORF) Profile describes how forms for eReferrals, requests for information (such as diagnostic imaging results, lab results, discharge reports etc.) can be defined, deployed and used in order to achieve a syntactical and semantically consistent cross enterprise information exchange.

The profile supports creation and domain wide deployment of forms for structured and coded information exchange as well as exchange of such forms for referral, orders etc. The profile relies on FHIR e.g. the questionnaire resource. Because the profile relies heavily on the FHIR Resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.

## building the implementation guide


```
wget http://build.fhir.org/org.hl7.fhir.igpublisher.jar -O org.hl7.fhir.igpublisher.jar
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.igpublisher.jar -ig ig.json
```