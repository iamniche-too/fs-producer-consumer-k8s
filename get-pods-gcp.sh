export GOOGLE_APPLICATION_CREDENTIALS=./deploy/gcp/terraform-test-262517-b4ff2f611b21.json
./deploy/gcp/generate-cluster-connection-yaml.sh

#kubectl -n producer-consumer get pods -o jsonpath='{$.items[0].metadata.name}' --kubeconfig ./deploy/gcp/kubeconfig.yaml
kubectl -n producer-consumer get pods --kubeconfig ./deploy/gcp/kubeconfig.yaml
