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

For various reasons, scheduling of the appointment is tricky:
* Patient S. Ufferer does probably not know the possible dates, e.g. because he is dependent of his daughter who will bring him by car.
* Neither the patient nor the doctor knows which slots are available in the radiology department.
* Availability of slots and availability of transport etc. may change in time.
* Eventually, the patient may need other appointments that in turn cause collisions.
* Some services provide an online tool for scheduling appointments, others do not.
* Some health professionals prefer to inquire and fix appointments for referrals by phone at the time the patient is while the patient is with them.
* Etc.

It is not easy to cover all this in a slim application. For this reason, comprehensive scheduling of appointments for referrals is out of scope. It is however possibel to specify date and time with a note of whether it is agreed or proposed. Furthermore it is possible to indicate preferred date/time intervals.  

Some service providers offer their services at more than one location; it may also be possible that an assignment/prescription results in more than one consultation (e.g. Holter ECG with appointment for the installation of the device at the beginning and return at the end). ORF therefore provides n appointments per service request. 

