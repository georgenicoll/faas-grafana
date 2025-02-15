# faas-grafana

OpenFaaS Grafana [Docker image](https://github.com/georgenicoll/faas-grafana).

Repo forked from Stefan Prodan's [Git Repo](https://github.com/stefanprodan/faas-grafana).

### Kubernetes

Run Grafana in OpenFaaS Kubernetes namespace:

```bash
kubectl -n openfaas run \
--image=georgenicoll/faas-grafana:4.3.6 \
--port=3000 \
grafana
```

Expose Grafana with a NodePort:

```bash
kubectl -n openfaas expose deployment grafana \
--type=NodePort \
--name=grafana
```

Find Grafana node port address:

```bash
$GRAFANA_PORT=$(kubectl -n openfaas get svc grafana -o jsonpath="{.spec.ports[0].nodePort}")
```

URL: `http://<KUBE_IP>:<GRAFANA_PORT>/dashboard/db/openfaas`
Credentials: `admin/admin`

### Swarm

Run Grafana in OpenFaaS Swarm network:

```bash
docker service create -d \
--name=func_grafana \
--publish=3000:3000 \
--network=func_functions \
stefanprodan/faas-grafana:4.6.3
```

URL: `http://<SWARM_IP>:3000/dashboard/db/openfaas`
