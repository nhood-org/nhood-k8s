[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# K8S Deployment

Project is part of [nhood](https://github.com/nhood-org/nhood-docs) project. 

The `nhood-k8s` is a set of manifests and scripts used for deployment of `nhood` runnable services to kubernetes.

## Pre-requisites

- k8s cluster
- docker
- kubectl

## Deployment

### Cluster pre-configuration

1. Gain an access to your k8s cluster with `kubectl` CLI tool.
2. Prepare you own environment configuration file `.env`. Use `.env.template` as reference.
3. Run configuration script:
```
sh ./scripts/configure-cluster.sh
```

### Deployment

Run deployment script:
```
sh ./scripts/deploy.sh
```

## CI/CD

Deployment is not automated yet.

## License

`nhood-k8s` is released under the MIT license:
- https://opensource.org/licenses/MIT
