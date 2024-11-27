#!/bin/sh
docker compose -f tcc-frontend/docker-compose.yaml build
kubectl kustomize k8s --enable-helm | kubectl apply -f -
