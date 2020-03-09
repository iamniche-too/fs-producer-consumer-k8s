source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

stern --namespace=producer-consumer consumer.* --kubeconfig kubeconfig.yaml
