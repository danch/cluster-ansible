#!/bin/bash

kubectl apply -f rook/operator.yaml
kubectl apply -f rook/cluster.yaml
kubectl apply -f rook/pool_replica.yml
kubectl apply -f rook/storage_replica.yml
