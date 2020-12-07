#!/bin/bash

kubectl cp test_data.cql demo-dc1-default-sts-0:/tmp -c cassandra

kubectl exec -it demo-dc1-default-sts-0 -c cassandra -- cqlsh -f /tmp/test_data.cql