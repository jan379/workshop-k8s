# Learn to use different services

Aufgabe: bildet zwei Teams, in denen ihr die Rollen "Operations" und "Development" verteilt.

## Aufgabe Ops-Team:

Baut eine virtuelle Maschine im OpenStack-Teil, auf die ihr euch per SSH verbinden könnt.
Die virtuelle Maschine soll sich in einem Kubernetes-Cluster-Subnetz befinden.

Von dieser Maschine soll ein Kubernetes-Service konsumiert werden, den das Application-Team 
in der Kubernetes-Umgebung bereit stellt.

Hinweise:

* In der OpenStack-Umgebung sollte ein öffentlicher SSH-Schlüssel hinterlegt werden, bevor die Maschine angelegt wird.

## Aufgabe Application-Team

Macht euch mit den verschiedenen Arten vertraut, wie Container nach außen geöffnet werden können.
Orientiert euch dafür an den Beispielen in ../code/buildingblocks/01_services/

Geht davon aus, dass eine Applikation im geschützten privaten Netz abrufbar sein soll.

Übermittelt dem Operations-Team die Parameter (IP-Adresse(n) / Port(s), die notwendig sind um mit der Applikation 
zu kommunizieren.

Überprüft gemeinsam mit beiden Teams, ob der Dienst im privaten Netz erreichbar ist und debugged ggf. gemeinsam,
warum das nicht der Fall ist.
