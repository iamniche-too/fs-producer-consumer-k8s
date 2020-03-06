#!/bin/bash
source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

# get the name of the producer
PRODUCER_NAME=`kubectl -n producer-consumer get pods -o jsonpath={'$.items[1].metadata.name'} --kubeconfig ./kubeconfig.yaml`
kubectl -n producer-consumer logs $PRODUCER_NAME --kubeconfig ./kubeconfig.yaml
