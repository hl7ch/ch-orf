### Radiologie-Auftrag

* **Patientin:** Frau S. Ufferer
* **Auftraggeber:** 
   * **Verantwortliche Person:** Dr. O. Rderplacer, Hausärztin in der Gruppenpraxis 'Happy Doctors' 
   * **Erfassende Person:** D. Ataenterer, medizinische Praxisassistentin in der Gruppenpraxis 'Happy Doctors' 
* **Auftragsempfänger:** Dr. O. Rderfiller, Radiologe am Institut für Radiologie des Spitals 'Happy Hospital'

Frau S. Ufferer hat am 15. März 2021 einen Termin bei ihrer Hausärztin Dr. O. Rderplacer in der Gruppenpraxis 'Happy Doctors'. Die Patientin klagt über wiederkehrende Knieschmerzen. Aufgrund der Anamnese und der körperlichen Untersuchung beschliesst die Ärztin, eine Röntgenaufnahme anzuordnen, die im Institut für Radiologie des Spitals 'Happy Hospital' von Dr. O. Rderfiller durchgeführt werden soll.
Die medizinische Praxisassistentin D. Ataenterer erfasst den Radiologie-Auftrag und schickt ihn an das Institut für Radiologie. Im Auftrag ist auch vermerkt, dass die Kopie dieses Auftrags (sowie alle daraus resultierenden Ergebnisse) der Patientin zugesandt werden soll.

* **Radiologie-Auftrag:** [XML](Bundle-radiology-order.xml.html), [JSON](Bundle-radiology-order.json.html)

{% include img.html img="radiology-order.png" width="90%" %}

*************************************************************************
### Auftrag für externe Diagnostik

* **Patientin:** Frau S. Ufferer
* **Auftraggeber:** 
   * **Verantwortliche Person:** Dr. P. Lacer, diensthabendern Arzt im Ragionalspital
* **Auftragsempfänger:** Dr. F. Iller, Radiologin am Universitätsspital

Frau S. Ufferer verspürt am späten Abend des 30. März 2021 einen stechenden Schmerz im Unterbauch. Ihre Hausärztin der Gruppenpraxis 'Happy Doctors', welche Notdienst hat, überweist die Patientin an das Regionalspital.
Der diensthabende Arzt im Regionalspital Dr. P. Lacer ordnet ein Thorax-CT an. Anhand des Thorax-CTs hat er den Verdacht auf ein Aortenaneurysma. Da in dieser Nachschicht kein Radiologie im Regionalspital Dienst hat, telefoniert Dr. P. Lacer mit der Radiologin Dr. F. Iller im Universitätsspital und schickt ihr den Auftrag für die externe Diagnostik. Wegen der Verdachtsdiagnose drängt die Zeit und die Radiologin will nach Erhalt des Auftrags mit den CT-Bildern dringend kontaktiert werden.
Der Verdacht auf ein Aortenauneurysma bestätigt sich und Dr. F. Iller meldet dies sofort telefonisch an Dr. P. Lacer. Frau S. Ufferer wird deshalb als Notfall in die Thoraxchirurgie verlegt und sofort operiert.

* **Auftrag für externe Diagnostik:** [XML](Bundle-external-diagnostics-order.xml.html), [JSON](Bundle-external-diagnostics-order.json.html)

{% include img.html img="external-diagnostics-order.png" width="90%" %}

*************************************************************************
### Anmeldung Heimpflege (z.B. Spitex)

* **Patientin:** Frau S. Ufferer
* **Auftraggeber:** 
   * **Verantwortliche Person:** Dr. F. Amily, Hausärztin
* **Auftragsempfänger:** Spitex

Eine Anmeldung für die Heimpflege (od. auch einen anderen ambulanten Service, z.B. Mahlzeitendienst) kann in unterschiedlichen Situationen erfolgen:

* Patient ist zuhause

* Patient ist aktuell in einer stationären Einrichtung und wird bald nach Hause entlassen

* Patient ist zuhause, wir jedoch in eine stationäre Einrichtung (z.B. Spital) eintreten und anschliessend von dieser (oder einem nachfolgenden stationären Aufenthalt (z. B. Rehab) nach Hause entlassen.

Im Fall eines stationären Aufenthaltes vor der Heimpflege ist für die Planung der Heimpflege das Entlassungsdatum und ev. auch das Entrittsdatum wichtig; für ev. Nachfragen soll auch die Institution des stationären Aufenthaltes bekannt sein. 

Die Anmeldung für eine Heimpflege erfolgt oft auf Initiative dritter. Wesentlich ist auch, ob es sich beim Initianten um den gesetzlichen Vertreter handelt.

Die Anmeldung für die Heimpflege geht oft - gerade bei stationären Patienten - nicht vom Hausarzt aus; dieser muss der Heimpflege jedoch bekannt sein.

In der Praxis kann eine (provisorische) Anmeldung für eine Heimpflege notwendig werden, bevor das formale Einverständnis des Patienten vorliegt. Dies muss aus der Anmeldung hervorgehen 

Die obigen Angaben sind administrativer Art; CH ORF sieht dafür mit der Version 1.1 entsprechende Attribute vor. Betreffend Einverständnis des Patienten erlaubt das Formular eine differenzierte Darstellung der Situation als Freitext.

Für die Erfassung weiterer medizinischen und pflegerischen Angaben wird auf [CH eTOC](http://fhir.ch/ig/ch-etoc/index.html) verweisen.

*************************************************************************
### Entlassung aus stationärer Behandlung

Die Möglichkeit zusätzlicher Angaben für die Anmeldung zur Heimpflege (s. o.) deckt auch die administrativen Anforderungen an ein Entlassungsschreiben ab. Zusätzlich sind bei diesem Anwendungsfall weitere medizinische und pflegerische Angaben erforderlich. Dafür wird auf [CH eTOC](http://fhir.ch/ig/ch-etoc/index.html)verweisen.

*************************************************************************
### Appointments

Die Terminplanung ist aus verschiedenen Gründen nicht ganz einfach:
* Die Patienten S. Ufferer kennt vielleicht die möglichen Termine nicht, weil sie beispielsweise auf ihre Tochter, die sie mit dem Auto zum Termin bringen wird, angewiesen ist. 
* Weder der Arzt noch die Patientin wissen, welche Termine in der Radiologie verfügbar sind.
* Die verfügbaren Termine, die Transportmöglichkeiten etc. können sich im Laufe der Zeit ändern.
* Eventuell hat die Patientin noch weitere Termine, die wiederum zu Terminkollisionen führen können.
* Einige Gesundheitsdienstleister bieten ein Onlinetool für die Terminvergabe an, andere nicht.
* Manche Gesundheitsfachpersonen bevorzugen es, sich telefonisch zu erkundigen und Termine für Überweisungen zu vereinbaren, während dem die Patienten bei ihnen vor Ort ist.
* etc.

Es ist nicht leicht, all diese Eventualitäten mit einer einfachen Applikation abzudecken. Daher ist eine umfassende Terminplanung für Überweisungen im Rahmen dieses Leitfadens nicht vorgesehen. Es ist jedoch möglich, Datum und Uhrzeit anzugeben und zu vermerken, ob der Termin fest zugesagt oder lediglich vorgeschlagen wurde. Des Weiteren besteht die Möglichkeit, bevorzugte Datums-/Zeitintervalle anzugeben.

Einige Gesundheitsdienstleister bieten ihre Leistungen an mehr als einem Standort an, so kann es auch passieren, dass ein Auftrag/Verordnung zu mehr als einer Konsultation führt (z.B. Holter-EKG mit einem Termin für die Anbringung des Geräts zu Beginn und einem Termin für die Rückgabe am Ende). In CH ORF sind daher mehrere Termine (n Appointments) pro Leistungsauftrag (ServiceRequest) vorgesehen.
