source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

#kubectl -n producer-consumer get pods -o jsonpath='{$.items[0].metadata.name}' --kubeconfig ./kubeconfig.yaml
kubectl -n producer-consumer get pods --kubeconfig ./kubeconfig.yaml
