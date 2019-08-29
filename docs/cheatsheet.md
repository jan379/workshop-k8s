# kubectl cheatsheet

A non-complete set of useful kubectl sub commands

### list available resources (and short cuts!):

``` kubectl api-resources ``` 

### kubectl get <something>

The number one command to see what you have. 

``` kubectl get pods ``` is always a good starting point. 

But there are useful and not so well known options available:
```kubectl get <something> -o yaml ``` will print out a far more detailed view on your resources. It is also useful to generate declarative descriptions (a.k.a. YAML-Files). 
The switch "--show-labels" might also be very helpful get an understanding why a certain pod might be part of a replica set/ deployment/ service/ or not.

### kubectl describe <something> 

If you are curious, start debugging some objet or just want to know which backends are used by a certain service this one is for you.

### get information about allowed values and possible fields

``` kubectl explain <...> ```

This command is really useful when you start to write declarations to 
describe your service. You know there was something with "pv" and 
you know that you have to describe it. But don't know actually how.

Then just start typing: ``` kubectl explain pv ```. You can then 
dig deeper: ``` kubectl explain pv.spec ```. This way you can
find out allowed keys, values and types (list, map, string, boolean, Object) 

### inspect something in your environment, start a container for that:

``` kubectl run --generator=run-pod/v1 -i --tty inspector --image=busybox -- sh ``` 

You can change the image (for example to "debian" to get a more complete linux userland.

### switch namespaces
kubectl config set-context --current --namespace=ingress-nginx

