source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

stern --namespace=producer-consumer producer.* --kubeconfig kubeconfig.yaml
#kubectl -n producer-consumer logs $1 --kubeconfig kubeconfig.yaml
