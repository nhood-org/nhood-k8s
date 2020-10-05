#!bin/sh

set -e

K8S_NAMESPACE=nhood-prod

if [ -f ".env" ]; then
    echo "Sourcing .env file"
else 
    echo "Environment file .env does not exist. Please use .env.template as reference."
    exit 1
fi
source .env

if [ -z "${GITHUB_PKG_USERNAME}" ]
then
    echo "\$GITHUB_PKG_USERNAME is empty"
    exit 1
fi

if [ -z "${GITHUB_PKG_PASSWORD}" ]
then
    echo "\$GITHUB_PKG_PASSWORD is empty"
    exit 2
fi

if [ -z "${GITHUB_PKG_EMAIL}" ]
then
    echo "\$GITHUB_PKG_EMAIL is empty"
    exit 3
fi

kubectl create namespace ${K8S_NAMESPACE}

kubectl create secret docker-registry github-docker-credentials \
    --docker-server=docker.pkg.github.com \
    --docker-username=${GITHUB_PKG_USERNAME} \
    --docker-password=${GITHUB_PKG_PASSWORD} \
    --docker-email=${GITHUB_PKG_EMAIL} \
    -n ${K8S_NAMESPACE}
