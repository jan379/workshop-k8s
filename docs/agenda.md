

# Workshop iNNOVO Cloud Services

## Vogelperspektive: 

* Überblick aus Providersicht: Von der Physik bis zum orchestrierten Container: Grundlegende Orientierung der iNNOVO Cloud Plattformen
  * Hypervisor 
  * Availability Zones
  * OpenStack
  * Kubernetes

* Einführung aus Kundenperspektive
  * Was sind die Vorteile und Anwendungsszenarien, wenn Kubernetes in einer mandantenfähigen Cloud-Plattform liegt?
  * Bedeutung SoftwareDefinedNetworking
  * Bedeutung SoftwareDefinedStorage
  * Geführte Tour Cloud-Dashboard
  * Geführte Tour Kubernetes-Dashboard

## Praktischer Einstieg
* Kickstart: 
  * Einrichten der Arbeitsumgebung
  * Erstes Pod-basiertes Deployment in Kubernetes
  * Aufbau der deklarativen YAML-Dateien
    * specs
    * metadata
    * kind
  * Hands-On: 
    * kubectl get ...
    * kubectl apply (vs. create)
    * kubectl describe
    * kubectl explain

## Tiefer gehende Theorie

* ### Deep-Dive:
  * #### Deployments
    * Replica Sets
    * Pods
    * Container
    * Deployment kontrollieren: Rollout- und Rollback
  * #### Kubernetes Services
    * Dynamic backend handling
      * livenessProbe
      * readinessProbe
    * Choose your backend:
      * Using Selectors
      * Without selector
    * Choose your type:
      * NodePorts
      * ClusterIP
      * Loadbalancer
  * #### Persistent Volume Storage
    * Persistent Volumes
    * Persisten Volume Claims
  * #### Multi-Container Pods
    * Init Container
    * Sidecar Container
  * #### information injection into containers
    * configmaps
    * secrets
  * #### Stateful Sets
  * #### Architektur-Analyse und Überlegungen am praktischen Beispiel des Kunden.

## Hands-On
* Analyse, Planung und Aufbau der Kunden-Applikation
  

