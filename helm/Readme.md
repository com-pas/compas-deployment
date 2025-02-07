# CoMPAS Helm deployment

This `helm` directory is meant to provide all informations needed to deploy CoMPAS on an existing Kubernetes cluster on different stages.

## Deploy to specific stage

Login into Kubernetes cluster and ensure that the `namespace == STAGE_NAME` already exists.

Here an example on how to deploy to stage `local` to a logged-in Kubernetes cluster:
```
  $> export STAGE_NAME=local
  $> helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-database.yaml
  $> helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-compas.yaml
```

### Remove deployed helm deployments

Here an example on how to deploy to stage `local`:
```
  $> export STAGE_NAME=local
  $> helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-database.yaml
  $> helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-compas.yaml
```

### Retrieve keycloak admin password after deployment

```
  $> kubectl -n local get secret keycloak -o jsonpath='{.data.admin-password}' | base64 -d && echo
```
