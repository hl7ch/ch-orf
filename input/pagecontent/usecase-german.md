### Referral minimal

#### Akteure
* Patient: [Erika Musterfrau](Patient-ErikaMusterfrau.html)
* Auftraggeber: 
   * Verantwortlicher: [Sabine Meier @ Praxis Seeblick](PractitionerRole-SabineMeierPraxisSeeblick.html)
      * Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument: [Sabine Meier](PractitionerRole-NotificationContactSabineMeier.html)
   * Erfasser: [Stabilo Boss](PractitionerRole-StabiloBossPraxisSeeblick.html)
* Auftragsempfänger: [Hans Röntgen @ Kantonsspital](PractitionerRole-HansRoentgenKantonsspital.html)
   * Dringender Benachrichtigungskontakt für dieses Dokument: [Hans Röntgen](PractitionerRole-NotificationContactHansRoentgen.html)
* Rückmeldungsempfänger: 
   * [Praxis Seeblick (Organisation)](Organization-PraxisSeeblick.html)
   * [Erika Musterfrau (Patient)](Patient-ErikaMusterfrau.html)

#### Ablauf
Die Patientin Erika Musterfrau hat am 1. April 2019 einen Termin in der Praxis Seeblick bei ihrer Hausärztin Dr. med. Sabine Meier. Erika Musterfrau klagt über rezidivierende Knieschmerzen mit aktuell massiver Schwellung. Aufgrund der Anamnese und der Untersuchung entscheidet sich die Ärztin ein Röntgen anzuordnen, welches in der Radiologie des Kantonsspitals durchgeführt werden soll.

Der medizininsche Praxisassistent Stabilo Boss erfasst den Radiologie-Auftrag im Praxisinformationssystem. Dazu befüllt er das [Auftragsformular](Questionnaire-referral-min.html) mit den entsprechenden [Antworten](QuestionnaireResponse-referral-min.html).

Während dessen telefoniert Dr. med. Sabine Meier noch mit dem auftragsempfangenden Arzt Dr. med. Hans Röntgen vom Kantonsspital. Die Hausärztin hat den Verdacht einer Kniegelenksarthrose und möchte sich beim Radiologen absichern, dass das konventionelle Röntgen das optimale bildgebende Verfahren ist. Dr. med. Hans Röntgen möchte sich vor der radiologischen Untersuchung selbst einen Eindruck der aktuellen Knieschwellung machen. Er soll deshalb beim Eingang des Radiologie-Auftrags kontaktiert werden, dass er den Termin so legen kann, dass ihm das möglich ist.

Dr. med. Sabine Meier der Praxis Seeblick erstellt einen Radiologieauftrag an Dr. med. Röntgen vom Kantonsspital.
* Im Vorfeld telefoniert Dr. Meier mit Dr. Röntgen
* Dr. Röntgen soll beim Eingang des Radiologieauftrags dringend kontaktiert werden
* Dr. Meier soll sofort kontaktiert werden, wenn das Resultat der Untersuchung vorliegt.


{% include img.html img="use-case.png" caption="Fig.: Use Case" width="800%" %}




#### Vorschlag Juerg
Notfall in der Nacht von Samstag auf Sonntag. Hausarzt weist in peripheres Sptital ein, das aber keinen Dienstradiologen hat. Dienstarzt hat im Thorax-CT Verdacht auf ein Aortenaneurysma. Er telefoniert mit dem Radiologen im Unispital und schickt die Bilder. Die Zeit läuft: Der Radiologe will sich die Bilder sofoft nach Erhalt ansehen; der Vedacht erhärtet sich und er meldet das sofort zurück; anschliessend wird Patient notfallmässig verlegt auf die Thoraxchirurgie und umgehend operiert.

Kommentar MZ:   
* CT wird im peripheren Spital gemacht?
* Dann füllt der Dienstarzt aber keinen Radiologie-Auftrag für das Unispital aus oder? 


[Bundle](Bundle-referral-min.html)

[Service Request Referral minimal](ServiceRequest-referral-min.html)

