# Use an existing OpenStack/ Cinder Volume in Kubernetes

This example shows how to use an existing volume in Kubernetes.

This procedure will only work if the volume exists in the same
availability zone where the kubernetes worker nodes are located.

To do so you usually need the follwong information:

1. Volume size
2. Volume ID

from the existing volume. 

You can get these information with a simple 

```
openstack volume list
```

After that you can modify the template pv.yaml to fill in these values.
Then simply apply this declaration: 


```
kubectl apply -f pv.yaml 
persistentvolume/debugvolume created
```

After that you should be able to apply the corresponding pvc:

```
kubectl apply -f pvc.yaml 
persistentvolumeclaim/debugclaim created
```

Finally you can controll that the PVC has satisfied requirements 
fullfilled by the OpenStack volume:

```
kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                                     STORAGECLASS   REASON   AGE
debugvolume                                10Gi       RWO            Retain           Bound    default/debugclaim                        standard                3m23s
```




