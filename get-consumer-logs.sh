source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

POD_NAME=`kubectl -n producer-consumer get pods -o jsonpath='{$.items[0].metadata.name}' --kubeconfig ./kubeconfig.yaml`

# get logs
kubectl -n producer-consumer logs $POD_NAME --follow --kubeconfig ./kubeconfig.yaml

#kubectl -n producer-consumer logs $1 --previous --kubeconfig ./kubeconfig.yaml
