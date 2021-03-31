### Röntgenauftrag mit Befundbericht
#### Akteure
* **Patient:** Frau S. Ufferer
* **Auftraggeber:** 
   * **Verantwortlicher:** Dr. O. Rderplacer, Hausarzt in der Gemeinschaftspraxis Happy Doctors
   * **Erfasser:** D. Ataenterer, Medizinische Praxisassistentin in der Gemeinschaftspraxis Happy Doctors
* **Auftragsempfänger:** Dr. O. Rderfiller, Radiologe am Institut für Radiologie des Happy Hospital
* **Rückmeldungsempfänger:**
   * Gemeinschaftspraxis Happy Doctors
   * Frau S. Ufferer

#### Röntgenauftrag
Frau S. Ufferer hat am 15. März 2021 einen Termin in der Gemeinschaftspraxis Happy Doctors bei ihrem Hausarzt Dr. O. Rderplacer. Die Patientin klagt über rezidivierende Knieschmerzen. Aufgrund der Anamnese und der Untersuchung entscheidet sich der Arzt ein Röntgen anzuordnen, welches im Institut für Radiologie des Happy Hospitals durch Dr. O. Rderfiller durchgeführt werden soll.

Die medizinische Praxisassistentin D. Ataenterer erfasst den Röntgenauftrag und sendet ihn an das Institut für Radiologie. Im Auftrag wird ebenfalls angegeben, dass der Bericht der Gemeinschaftspraxis und eine Kopie davon der Patientin gesendet werden soll.

* **Röntgenauftrag:** [XML](Bundle-bundle-usecase-simple.xml.html), [JSON](Bundle-bundle-usecase-simple.json.html)

#### Befundbericht Röntgen
Am 22. März 2021 wird das Knie von Frau S. Ufferer im Institut für Radiologie des Happy Hospitals geröntgt. Der Radiologe schreibt seinen Bericht am 23. März 2021 dazu und sendet ihn wie gewünscht an die Gemeinschaftspraxis Happy Doctors und die Patientin S. Ufferer.

* **Befundbericht:** [XML], [JSON]

{% include img.html img="usecase-simple.png" caption="Fig.: Röntgenauftrag mit Befundbericht" width="90%" %}

### Auftrag für eine externe Befundung mit Befundbericht

#### Akteure
* **Patient:** Frau S. Ufferer
* **Auftraggeber:** 
   * **Verantwortlicher:** Dr. P. Lacer, Dienstarzt am Regionalspital
* **Auftragsempfänger:** Dr. F. Iller, Radiologe am Universitätsspital
* **Rückmeldungsempfänger:**
   * Regionalspital

#### Auftrag externe Befundung
Fr. S. Ufferer verspürt am späten Abend des 30. März 2021 stechende Schmerzen im Unterbauch. Ihr Hausarzt in der Gemeinschaftspraxis Happy Doctors, der Notfalldienst hat, weist die Patientin in das Regionalspital ein.   
Der diensthabende Arzt im Regionalspital Dr. P. Lacer ordnet ein Thorax-CT an. Aufgrund des Thorax-CTs hat er den Verdacht auf ein Aortenaneurysma. Da es im Regionalspital in dieser Nachtschicht keinen Diensradiologen gibt, telefoniert Dr. P. Lacer mit dem Radiologen Dr. F. Iller im Universitätsspital und sendet ihm den Auftrag für die externe Befundung. Aufgrund der Verdachtsdiagnose drängt die Zeit und der Radiologe will nach dem Erhalt des Auftrags mit den CT-Bildern sofort kontaktiert werden.

* **Auftrag externe Befundung:** [XML](Bundle-bundle-usecase-complex.xml.html), [JSON](Bundle-bundle-usecase-complex.json.html)

#### Befundbericht CT
Der Verdacht des Aortenaneurysmas erhärtet sich und Dr. F. Iller meldet dies umgehend an Dr. P. Lacer zurück. Fr. S. Ufferer wird deshalb notfallmässig auf die Thoraxchirurgie verlegt und umgehend operiert. Dr. F. Iller sendet den schriftlichen Befundbericht anschliessend an das Regionalspital. 

* **Befundbericht:** [XML], [JSON]

{% include img.html img="usecase-complex.png" caption="Fig.: Auftrag externe Befundung mit Befundbericht" width="90%" %}
