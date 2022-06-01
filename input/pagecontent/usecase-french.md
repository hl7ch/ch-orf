### Ordre de radiologie

* **Patiente:** Mme. S. Ufferer
* **Placer d'ordre:** 
   * **Personne responsable:** Dr O. Rderplacer, médecin généraliste dans le cabinet de groupe 'Happy Doctors'
   * **Personne chargée de la saisie des informations:** D. Ataenterer, assistante médicale dans le cabinet de groupe 'Happy Doctors'
* **Remplisseur d'ordre:** Dr O. Rderfiller, radiologue à l'institut de radiologie de l'hôpital 'Happy Hospital'

Madame S. Ufferer a rendez-vous le 15 mars 2021 chez son médecin généraliste, le Dr O. Rderplacer, au cabinet de groupe 'Happy Doctors'. La patiente se plaint de douleurs récurrentes au genou. Sur la base de l'anamnèse et de l'examen physique, le médecin décide de prescrire une radiographie qui sera réalisée à l'institut de radiologie de l'hôpital 'Happy Hospital' du Dr O. Rderfiller. L'assistante médicale D. Ataenterer saisit l'ordre de radiologie et l'envoie à l'institut de radiologie. Il est également indiqué dans le mandat que la copie de ce mandat (ainsi que tous les résultats qui en découlent) doit être envoyée à la patiente.

* **Ordre de radiologie:** [XML](Bundle-radiology-order.xml.html), [JSON](Bundle-radiology-order.json.html)

{% include img.html img="radiology-order.png" width="90%" %}

*************************************************************************
### Ordre de diagnostic externe

* **Patiente:** Mme. S. Ufferer
* **Placer d'ordre:** 
   * **Personne responsable:** Dr P. Lacer, médecin de garde à l'Hôpital Ragional
* **Remplisseur d'ordre:** Dr F. Iller, radiologue à l'hôpital universitaire

Madame S. Ufferer ressent une douleur lancinante dans le bas-ventre tard dans la soirée du 30 mars 2021. Son médecin de famille du cabinet de groupe 'Happy Doctors', qui est de garde, adresse la patiente à l'hôpital régional. Le médecin de garde de l'hôpital régional, le Dr P. Lacer, lui prescrit un scanner thoracique. Sur la base du scanner thoracique, il soupçonne un anévrisme de l'aorte. Comme aucun radiologue n'est de garde à l'hôpital régional pendant ce quart de nuit, le Dr P. Lacer téléphone à la radiologue Dr F. Iller de l'hôpital universitaire et lui envoie la demande de diagnostic externe. En raison du diagnostic de suspicion, le temps presse et la radiologue veut être contactée d'urgence après réception de la commande avec les images du scanner. La suspicion d'un anévrisme de l'aorte abdominale se confirme et le Dr F. Iller le signale immédiatement par téléphone au Dr P. Lacer. Mme S. Ufferer est donc transférée en urgence en chirurgie thoracique et opérée immédiatement.

* **Ordre de diagnostic externe:** [XML](Bundle-external-diagnostics-order.xml.html), [JSON](Bundle-external-diagnostics-order.json.html)

{% include img.html img="external-diagnostics-order.png" width="90%" %}

*************************************************************************
### Appointments
La planification des rendez-vous n'est pas simple pour diverses raisons:
* La patiente S. Ufferer ne connaît peut-être pas les rendez-vous possibles, car elle dépend par exemple de sa fille qui l'emmènera en voiture au rendez-vous.
* Ni le médecin ni la patiente ne savent quels rendez-vous sont disponibles en radiologie.
* Les rendez-vous disponibles, les possibilités de transport, etc. peuvent changer au fil du temps.
* Il se peut que la patiente ait d'autres rendez-vous, ce qui peut à son tour entraîner des collisions de dates.
* Certains prestataires de soins de santé proposent un outil en ligne pour la prise de rendez-vous, d'autres non.
* Certains professionnels de la santé préfèrent se renseigner par téléphone et prendre des rendez-vous pour des transferts pendant que la patiente est dans leurs locaux.
* Etc.

Il n'est pas facile de couvrir toutes ces éventualités avec une simple application. C'est pourquoi il n'est pas prévu de planifier de manière exhaustive les rendez-vous pour les transferts dans le cadre de ce guide. Il est toutefois possible d'indiquer la date et l'heure, et de préciser si le rendez-vous a été confirmé ou simplement proposé. Il est également possible d'indiquer les dates/heures préférées.

Certains prestataires de soins de santé proposent leurs services sur plusieurs sites, de sorte qu'il peut arriver qu'une commande/prescription donne lieu à plusieurs consultations (par exemple, un holter ECG avec un rendez-vous pour la pose de l'appareil au début et un rendez-vous pour le retour à la fin). En CH ORF, plusieurs rendez-vous (n appointments) sont donc prévus par ordre de prestation (ServiceRequest).
