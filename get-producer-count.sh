source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

# get all producers in the namespace
kubectl -n prodcuer-consumer get pods -o json --kubeconfig ./kubeconfig.yaml | jq '.items[].metadata.name | select (. | startswith("producer"))' | wc -w
