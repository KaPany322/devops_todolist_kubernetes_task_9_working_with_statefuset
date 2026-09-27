#!/bin/bash
set -euo pipefail
# Namespace
kubectl apply -f .infrastructure/namespace.yml

# ConfigMap and Secrets
kubectl apply -f .infrastructure/confgiMap.yml
kubectl apply -f .infrastructure/secret.yml

# PV and PVC
kubectl apply -f .infrastructure/pv.yml
kubectl apply -f .infrastructure/pvc.yml

# StatefulSet and Stateful services
kubectl apply -f .infrastructure/st-configMap.yml
kubectl apply -f .infrastructure/st-secret.yml
kubectl apply -f .infrastructure/st-sevice.yml
kubectl apply -f .infrastructure/statefulSet.yml

# Deployment
kubectl apply -f .infrastructure/deployment.yml

# Services
kubectl apply -f .infrastructure/clusterIp.yml
kubectl apply -f .infrastructure/nodeport.yml
kubectl apply -f .infrastructure/hpa.yml