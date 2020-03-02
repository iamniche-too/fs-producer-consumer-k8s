source ./export-gcp-credentials.sh
./generate-cluster-connection-yaml.sh

# get the name of the consumer 
CONSUMER_NAME=`kubectl -n producer-consumer get pods -o jsonpath={'$.items[0].metadata.name'} --kubeconfig ./kubeconfig.yaml`
kubectl -n producer-consumer exec -ti $CONSUMER_NAME --kubeconfig ./kubeconfig.yaml -- /bin/bash
