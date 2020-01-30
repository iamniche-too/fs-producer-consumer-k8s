export GOOGLE_APPLICATION_CREDENTIALS=./deploy/gcp/terraform-test-262517-b4ff2f611b21.json
./deploy/gcp/generate-cluster-connection-yaml.sh

kubectl -n producer-consumer logs $1 -c python-init --follow --kubeconfig ./deploy/gcp/kubeconfig.yaml
#kubectl -n producer-consumer logs $1 --previous --kubeconfig ./deploy/gcp/kubeconfig.yaml
