#!/bin/bash
set -euo pipefail

# Cluster
kind create cluster --config cluster.yml
# Namespace
kubectl apply -f .infrastructure/namespace.yml

# StatefulSet and services
kubectl apply -f .infrastructure/st-configMap.yml
kubectl apply -f .infrastructure/st-secret.yml
kubectl apply -f .infrastructure/st-service.yml
kubectl apply -f .infrastructure/statefulSet.yml

# ConfigMap and Secrets
kubectl apply -f .infrastructure/confgiMap.yml
kubectl apply -f .infrastructure/secret.yml

# PV and PVC
kubectl apply -f .infrastructure/pv.yml
kubectl apply -f .infrastructure/pvc.yml

# Deployment
kubectl apply -f .infrastructure/deployment.yml

# Services
kubectl apply -f .infrastructure/clusterIp.yml
kubectl apply -f .infrastructure/nodeport.yml
kubectl apply -f .infrastructure/hpa.yml