#!/bin/bash

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl && sudo mv kubectl /usr/local/bin/

# kind
curl -Lo ./kind "https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64"
chmod +x kind && sudo mv kind /usr/local/bin/

# Create a cluster
kind create cluster --name mlops-lab

# Verify
kubectl cluster-info        # should show API server URL
kubectl get pods -A         # kube-system pods should be Running

# Explore
kubectl describe node        # see your i5-8400 details
kubectl get events -A | head

# List all pods in all namespaces
kubectl get pods -A
