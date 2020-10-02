#!bin/sh

kubectl apply -f manifest-deployment.yaml -n nhood-prod
kubectl apply -f manifest-service.yaml -n nhood-prod
