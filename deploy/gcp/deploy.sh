export GOOGLE_APPLICATION_CREDENTIALS=./deploy/gcp/terraform-test-262517-b4ff2f611b21.json
./deploy/gcp/generate-cluster-connection-yaml.sh

kustomize build gcp |\
kubectl apply -f - --kubeconfig ./deploy/gcp/kubeconfig.yaml
