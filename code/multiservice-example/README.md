

# Suggested layout for using kubernetes to deploy 

* A stateless frontend service

* A stateful mysql service

This rough outline shows how to do a working upgrade path can be achieved. 

## Stateless frontend component

The deployment of this component can be done using a kubernetes *deployment*. This deployment should be exposed as a kubernetes *service* which also provides loadbalancing capabilities. With these two building blocks the service can exist as a long lasting object with the possibility to change loadbalancer upstreams (a.k.a the frontend software) rapidly and with no downtime.

## Stateful mysql component

To deploy components that handle state (in this case database data that should survive a re-deployment) we suggest to use *stateful sets* in kubernetes.
Additionally we strongly suggest to store persistent data (/var/lib/mysql in this case) in a *persistent volume*. 
This persistent volume can be accessed using *persistent volume claims*.
The mysql-service should also be announced/ exposed as a kubernetes *service*

## Connecting stateful and stateless environments
To connect both components we recommend to use kubernetes secrets to be injected into server and client. This ensures that clients can connect to services using environment variables that are strongly bound to the specified scope.

The single steps neccessary are demonstrated using code snippets in a numbered order. 


