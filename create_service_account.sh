#!/bin/bash

# Run this from the directory you want the user to be generated with the $KUBECONFIG rights of
# an account that is powerful enough to create new service accounts
#
# /repo/path/kube/create_service_account.sh my_user my_group
#
# In order for the user to be able to work it needs a `ClusterRole` and a `RoleBinding` or similar
# to be defined for that group.

USER=$1
GROUP=$2

openssl genrsa -out ${USER}.key 2048
openssl req -new -key ${USER}.key -out ${USER}.csr -subj "/CN=${USER}/O=${GROUP}"

cat <<EOF | kubectl create -f -
apiVersion: certificates.k8s.io/v1beta1
kind: CertificateSigningRequest
metadata:
  name: ${USER}_csr
spec:
  groups:
  - system:authenticated
  request: $(cat ${USER}.csr | base64 | tr -d '\n')
  usages:
  - digital signature
  - key encipherment
  - client auth
EOF

kubectl get csr
kubectl certificate approve ${USER}_csr
kubectl get csr ${USER}_csr -o jsonpath='{.status.certificate}' | base64 -D > ${USER}.crt

cat <<EOF > ${USER}.config

apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: $(kubectl config view --raw -o json | jq -r '.clusters[0].cluster."certificate-authority-data"')
    server: $(kubectl config view --raw -o json | jq -r '.clusters[0].cluster.server')
  name: $(kubectl config view --raw -o json | jq -r '.clusters[0].name')
contexts:
- context:
    cluster: $(kubectl config view --raw -o json | jq -r '.contexts[0].context.cluster')
    user: ${USER}
  name: $(kubectl config view -o json | jq -r '."current-context"')
current-context: $(kubectl config view -o json | jq -r '."current-context"')
kind: Config
preferences: {}
users:
- name: ${USER}
  user:
    client-certificate-data: $(cat ${USER}.crt | base64)
    client-key-data: $(cat ${USER}.key | base64)
EOF
