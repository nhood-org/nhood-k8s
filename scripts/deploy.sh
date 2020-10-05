#!bin/bash

set -e

K8S_NAMESPACE=nhood-prod

kubectl apply \
    -f ./manifests/nhood-svc-deployment.yaml \
    -n ${K8S_NAMESPACE}
    
kubectl apply \
    -f ./manifests/nhood-svc-service.yaml \
    -n ${K8S_NAMESPACE}
