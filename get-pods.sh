#!/bin/bash
source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

#kubectl -n producer-consumer get pods -o wide --show-labels --kubeconfig ./kubeconfig.yaml
kubectl -n producer-consumer get pods -o wide --kubeconfig ./kubeconfig.yaml
