#!/bin/bash
source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

POD_NAME=`kubectl -n producer-consumer get pods -o jsonpath='{$.items[0].metadata.name}' --kubeconfig ./kubeconfig.yaml`
kubectl -n producer-consumer describe pods $POD_NAME --kubeconfig ./kubeconfig.yaml
