# StatefulSets und PersistentVolumes

Nehmt euch das Beispiel aus ../code/buildingblocks/07_statefulSets/01_stateful_set.yaml
und startet es.

Untersucht den gestarteten Container:

 * Wo liegt der Mount-Point des Volumes?

Ändert Daten aus dem Container heraus:

 * Legt eine Dtaei mit beliebigem Inhalt in Volume an.

Löscht das Deployment und legt es neu an.

 * Schaut euch die Daten im Volume des Containers an.

Zusatzfrage:

Was passiert, wenn die Anzahl Replicas erhöht wird mit den Daten?
Was passiert, wenn die Anzahl Replicas verringert wird mit den Daten?
