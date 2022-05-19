### Radiology order

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. O. Rderplacer, general practitioner in the Happy Doctors group practice
   * **Data enterer:** D. Ataenterer, medical practice assistant in the Happy Doctors group practice
* **Order filler:** Dr. O. Rderfiller, radiologist at the Institute of Radiology of the Happy Hospital

Mrs. S. Ufferer has an appointment with her general practitioner, Dr. O. Rderplacer, at the Happy Doctors group practice on 15 March 2021. The patient complains of recurrent knee pain. Based on the medical anamnesis and the physical examination, the doctor decides to order an X-ray, which is to be performed at the Institute for Radiology of the Happy Hospital by Dr. O. Rderfiller.   
The medical practice assistant D. Ataenterer enters the radiology order and sends it to the Institute of Radiology. The order also indicates that the copy of this order shall be sent to the patient (as well as all results therefrom).

* **Radiology order:** [XML](Bundle-radiology-order.xml.html), [JSON](Bundle-radiology-order.json.html)

{% include img.html img="radiology-order.png" width="90%" %}

*************************************************************************
### Order external diagnostics

* **Patient:** Mrs. S. Ufferer
* **Order placer:** 
   * **Responsible person:** Dr. P. Lacer, doctor on duty at the Regional Hospital
* **Order filler:** Dr. F. Iller, radiologist at the University Hospital

Mrs. S. Ufferer feels a stabbing pain in her lower abdomen in the late evening of 30 March 2021. Her general practitioner at the Happy Doctors group practice, who is on emergency duty, refers the patient to the Regional Hospital.   
The doctor on duty at the Regional Hospital, Dr. P. Lacer, orders a thorax CT. Based on the thorax CT, he suspects an aortic aneurysm. As there is no radiologist on duty at the Regional Hospital during this night shift, Dr. P. Lacer telephones the radiologist Dr. F. Iller at the University Hospital and sends her the order for the external diagnostics. Because of the suspected diagnosis, time is pressing and the radiologist wants to be contacted urgently after receiving the order with the CT images.   
The suspicion of an aortic aneurysm is confirmed and Dr. F. Iller immediately reports this by telephone to Dr. P. Lacer. Mrs. S. Ufferer is therefore moved to the thoracic surgery unit as an emergency and is operated on immediately. 

* **Order external diagnostics:** [XML](Bundle-external-diagnostics-order.xml.html), [JSON](Bundle-external-diagnostics-order.json.html)

{% include img.html img="external-diagnostics-order.png" width="90%" %}

*************************************************************************
### Appointments

For various reasons, scheduling appointments is tricky:
* Patient S. Ufferer may not know the possible dates because, for example, she depends of her daughter, who will take her to the appointment by car.
* Neither the doctor nor the patient knows what slots are available in the radiology department.
* Available slots, availability of transportation etc. may change over time.
* The patient may have other appointments, which in turn may cause scheduling conflicts.
* Some healthcare providers offer an online tool for scheduling appointments, others do not.
* Some healthcare professionals prefer to call and make appointments for referrals while the patient is onsite with them.
* Etc.

It is not easy to cover all these contingencies with a simple application. Therefore, comprehensive scheduling of appointments for referrals is out of scope in this implementation guide. However, it is possible to specify the date and time and to note whether the appointment is firmly agreed or merely proposed. Furthermore, it is possible to indicate preferred date/time intervals.  

Some service providers offer their services at more than one location, so it can also happen that one assignment/prescription leads to more than one consultation (e.g. Holter ECG with an appointment for installation of the device at the beginning and an appointment for return at the end). In CH ORF, therefore, several appointments (n Appointments) are provided per service order (ServiceRequest). 
