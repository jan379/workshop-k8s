# Prerequisites:

Before using an ingress resource a corresponding controller has to be installed. We recommend using ingress-nginx since this is one of the CNCF supported ingress controller. 

The official documentation:

Concepts: https://kubernetes.io/docs/concepts/services-networking/ingress/
How to install: https://kubernetes.github.io/ingress-nginx/deploy/

Easiest install method from our experience is using helm.

# Usage:

## Using ingress to terminate TLS

> **_Note_** Please note that the ingress resource should be placed inside the same namespace of the backend resource.

If you want to terminate TLS using your ingress create a secret first holding certificate and key (see below how to create that secret).

You can then use these secret data (see ingress_tls.yaml as an example).

### Using a dummy certificate

#### set some names
KEY_FILE=dummycert.key
CERT_FILE=dummycert.crt
HOST=dummydomain.de
CERT_NAME=dummycert

#### generate a dummy cert

< **_NOTE_** This step can be skipped if there is already a certificate available

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${KEY_FILE} -out ${CERT_FILE} -subj "/CN=${HOST}/O=${HOST}"

#### make it available as a secret
kubectl create secret tls ${CERT_NAME} --key ${KEY_FILE} --cert ${CERT_FILE}

# This secret can now be consumed in ingress that provide tls termination




