# k8ssandra-quick-start
quick setup for k8ssandra in 5 min or less

## Create kind cluster
This configuration sets up a multi-node cluster with port mappings for ingress.

## Create the cluster

```
$ kind create cluster --image kindest/node:v1.18.2 --config kind-config.yaml
```

## Install traefik
```
$ helm install traefik traefik/traefik -n traefik --create-namespace -f traefik.values.yaml
```

* traefik dashboard located at http://3.236.112.189.xip.io:9000/dashboard/

# Steps

## Create a cluster

### Install k8ssandra
```
$ helm install k8ssandra k8ssandra/k8ssandra
```

### Install k8ssandra-cluster
```
$ helm install demo k8ssandra/k8ssandra-cluster -f demo-values.yaml
```

### Show what is deployed
```
$ ./show-deployed.sh
```

### Show Prometheus UI
<!-- Change YOURIPADDRESS based on your ingress settings -->
```
prometheus.YOURIPADDRESS.xip.io:8080
```

### Show Grafana UI
<!-- Change YOURIPADDRESS based on your ingress settings -->
```
grafana.YOURIPADDRESS.xip.io:8080
```

### Show Reaper UI
<!-- Change YOURIPADDRESS based on your ingress settings -->
```
repair.YOURIPADDRESS.xip.io:8080/webui
```

#### Create test data
```
$ ./create-test-data.sh
```

### Show data in cqlsh
```
$ kubectl exec -it demo-dc1-default-sts-0 -c cassandra -- cqlsh
```