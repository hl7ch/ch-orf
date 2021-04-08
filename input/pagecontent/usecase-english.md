### Radiology order with report on diagnostic findings

#### Radiology order

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. O. Rderplacer, general practitioner in the Happy Doctors group practice
   * **Data enterer:** D. Ataenterer, medical practice assistant in the Happy Doctors group practice
* **Order filler:** Dr. O. Rderfiller, radiologist at the Institute of Radiology of the Happy Hospital

Mrs. S. Ufferer has an appointment with her general practitioner, Dr. O. Rderplacer, at the Happy Doctors group practice on 15 March 2021. The patient complains of recurrent knee pain. Based on the medical anamnesis and the physical examination, the doctor decides to order an X-ray, which is to be performed at the Institute for Radiology of the Happy Hospital by Dr. O. Rderfiller.   
The medical practice assistant D. Ataenterer enters the **radiology order** and sends it to the Institute of Radiology. The order also indicates that the copy of this order should be sent to the patient.

* **Radiology order:** [XML](Bundle-radiology-order.xml.html), [JSON](Bundle-radiology-order.json.html)

{% include img.html img="radiology-order.png" width="90%" %}

#### X-ray report

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. O. Rderfiller, radiologist at the Institute of Radiology of the Happy Hospital
* **Order filler:** Dr. O. Rderplacer, general practitioner in the Happy Doctors group practice

On 22 March 2021, Mrs. S. Ufferer's knee is x-rayed at the Institute of Radiology of the Happy Hospital. The radiologist writes his **x-ray report** on 23 March 2021 and sends it to the Happy Doctors group practice. A copy of the report is sent to the patient.

* **X-ray report:** [XML](Bundle-xray-report.xml.html), [JSON](Bundle-xray-report.json.html)

{% include img.html img="xray-report.png" width="90%" %}

*************************************************************************

### Order external diagnostics with report on diagnostic findings

#### Order external diagnostics

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. P. Lacer, doctor on duty at the Regional Hospital
* **Order filler:** Dr. F. Iller, radiologist at the University Hospital

Mrs. S. Ufferer feels a stabbing pain in her lower abdomen in the late evening of 30 March 2021. Her general practitioner at the Happy Doctors group practice, who is on emergency duty, refers the patient to the Regional Hospital.   
The doctor on duty at the Regional Hospital, Dr. P. Lacer, orders a thorax CT. Based on the thorax CT, he suspects an aortic aneurysm. As there is no radiologist on duty at the Regional Hospital during this night shift, Dr. P. Lacer telephones the radiologist Dr. F. Iller at the University Hospital and sends her the **order for the external diagnostics**. Because of the suspected diagnosis, time is pressing and the radiologist wants to be contacted urgently after receiving the order with the CT images.

* **Order external diagnostics:** [XML](Bundle-external-diagnostics-order.xml.html), [JSON](Bundle-external-diagnostics-order.json.html)

{% include img.html img="external-diagnostics-order.png" width="90%" %}

#### Findings report

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. F. Iller, radiologist at the University Hospital
* **Order filler:** Dr. P. Lacer, doctor on duty at the Regional Hospital

The suspicion of an aortic aneurysm is confirmed and Dr. F. Iller immediately reports this by telephone to Dr. P. Lacer. Mrs. S. Ufferer is therefore moved to the thoracic surgery unit as an emergency and is operated on immediately. Dr. F. Iller then sends the written **findings report** to the regional hospital. 

* **Findings report:** [XML](Bundle-findings-report.xml.html), [JSON](Bundle-findings-report.json.html)

{% include img.html img="findings-report.png" width="90%" %}
