
# How to make pods/container accessible

Kubernetes uses services to make things visible to the outer world.

The scope of "outer world" can be distinguished by specifying the "type" of service.

There exist three common types of service:

1. ClusterIP

2. NodePort

3. LoadBalancer

### ClusterIP

With type set to "ClusterIP" a service is only accessible within a given cluster.
This is a useful default: Frontends can talk to backend services etc. 

```
innovo@innovo-workstation:~/workshop-k8s/code/buildingblocks/01_services$ kubectl get svc customerdeployment-v1
#NAME                    TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)   AGE
customerdeployment-v1   ClusterIP   10.10.10.23   <none>        80/TCP    12m
```


### NodePort

This service type is built on top of a ClusterIP. It enables services to be queried
from outside the cluster, but within the (private) network scope of the kubernetes nodes.
This is achieved by exposing special ports on a NodeIP

```
innovo@innovo-workstation:~/workshop-k8s/code/buildingblocks/01_services$ kubectl get svc customerdeployment-v1
NAME                    TYPE       CLUSTER-IP    EXTERNAL-IP   PORT(S)        AGE
customerdeployment-v1   NodePort   10.10.10.53   <none>        80:32579/TCP   5s
```

### LoadBalancer

Loadbalancer is the third option. It assignes a floating/ public IP to a service.
Thus services are reachable from the internet.



