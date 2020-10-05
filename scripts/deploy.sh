#!bin/sh

K8S_NAMESPACE=nhood-prod

kubectl apply -f manifest-deployment.yaml -n ${K8S_NAMESPACE}
kubectl apply -f manifest-service.yaml -n ${K8S_NAMESPACE}
