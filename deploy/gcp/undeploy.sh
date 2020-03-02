source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

kubectl delete ns producer-consumer --kubeconfig ./kubeconfig.yaml
