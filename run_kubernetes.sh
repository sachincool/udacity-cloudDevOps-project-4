#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sachincool/kube-ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f kube-ml/

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
pod=`kubectl get pods -o=name | tr -d "\n"`
kubectl port-forward $pod 8000:80

bash make_prediction.sh
