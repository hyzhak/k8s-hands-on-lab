# k8s-hands-on-lab

k8s hands-on lab

## Setup k9s and create remote server

1. run

```bash
scripts/01-setup.sh
```

## Access from Local computer

1. run

```bash
scripts/02-setup-tunel.sh
```

2. validate availability

```bash
kubectl --context kind-mlops-lab get nodes
```
