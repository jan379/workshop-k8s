
Please note that the ingress resource should be placed inside the same namespace of the backend resource.

If you want to terminate TLS using your ingress create a secret first holding certificate and key (see howto.md).

You can then use these data (see ingress_tls.yaml as an example).




