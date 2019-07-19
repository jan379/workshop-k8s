
# Preparations

Make sure that your working environment meets the following requirements:

1. kubectl installed and available 
2. SSH public key available in linux format
3. Credentials available to log in into https://imke.cloud

Detailed links and instructions see below.

First steps:

## Log in into imke.cloud

As an iNNOVO Cloud customer you have been provided with a pair of username/ password to use iNNOVO Cloud services.
These credentials are valid for both public cloud services iNNOVO provides:

https://dashboard.optimist.innovo.cloud (a.k.a. iNNOVO Public Cloud) and

https://imke.cloud (a.k.a iNNOVO managed kubernetes engine).

Background information: You as a customer profit from the fact, that the managed kubernetes service is built on top of our public cloud offering. 
With that you can 

- use one pair of credentials to access both services
- use the underliying multi tenancy from our public cloud even in a kubernetes environment
- see resource consumption from the managed kubernetes environment inside your public cloud project.
- seamless integrate both worlds (network wise, storrage wise).

Conclusion: Whatever payload you built in kubernetes, you can see it in our puublic cloud web interface. No magic at all, pure transparency :)
=========================

Steps to follow when logged in into https://imke.cloud

1. create a project
	A project has the goal of separating different workloads or aspects of your organisation (dev/ prod for example).
2. create a cluster
3. create a node deployment
4. download your environment file to work with
5. populate your envoronment file so that kubectl knows every important aspect.
6. Create your first deployment.

Your done :)


