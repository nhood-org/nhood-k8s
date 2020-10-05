#!bin/bash

set -e

echo "${KUBERNETES_CLUSTER_CERTIFICATE}" | base64 --decode > cert.crt

K8S_NAMESPACE=nhood-prod

kubectl apply \
  --kubeconfig=/dev/null \
  --server=${KUBERNETES_SERVER} \
  --certificate-authority=cert.crt \
  --token=${KUBERNETES_TOKEN} \
  -f ./manifests/nhood-svc-deployment.yaml \
  -n ${K8S_NAMESPACE}

kubectl apply \
  --kubeconfig=/dev/null \
  --server=${KUBERNETES_SERVER} \
  --certificate-authority=cert.crt \
  --token=${KUBERNETES_TOKEN} \
  -f ./manifests/nhood-svc-service.yaml \
  -n ${K8S_NAMESPACE}
