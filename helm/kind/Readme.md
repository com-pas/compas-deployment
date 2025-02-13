# Local cluster with kind 

For details see: https://kind.sigs.k8s.io/

## Start local cluster with nginx

```
  kind create cluster --config=kind-setup-config.yaml
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml > /dev/null
```

## Stop and destroy local cluster

```
  kind delete cluster
  IMAGE=$(docker image ls kindest/node --format {{.ID}})
  docker image rm ${IMAGE}
```
