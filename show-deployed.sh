#!/bin/bash

# Note that we add the grep here because for this first command
# we only want to show the operator deployments.

echo "$ kubectl get deployments | grep operator"
kubectl get deployments | grep operator
echo ""

echo "$ kubectl get cassdc"
kubectl get cassdc
echo ""

echo "$ kubectl get prometheus"
kubectl get prometheus
echo ""

echo "$ kubectl get grafana"
kubectl get grafana
echo ""

echo "$ kubectl get reaper"
kubectl get reaper