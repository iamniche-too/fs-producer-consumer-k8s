#!/bin/bash
source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

kubectl -n producer-consumer describe pods $1 --kubeconfig ./kubeconfig.yaml
