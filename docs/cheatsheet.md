# kubectl cheatsheet

A non-complete set of useful sub commands

### list available resources (and short cuts!):

``` kubectl api-resources ``` 

### get information about allowed values and possible fields

``` kubectl explain <...> ```

This command is really useful when you start to write YAML files to 
describe your service. You know there was something with "pv" and 
you know that you have to describe it. But don't know actually how.

Then just start typing: ``` kubectl explain pv ```. You can then 
dig deeper: ``` kubectl explain pv.spec ```. This way you can
find out allowed keys, values and types (list, map, string, boolean, Object) 

### inspect something in your environment, start a container for that:

``` kubectl run -i -t busybox --image=busybox --restart=Never ``` 


