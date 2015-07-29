#!/bin/sh -xe
v=1
t=arkadi/kubernetes-reverseproxy:$v
r=${DEV_REGISTRY:-docker-registry.r53.acp.io:5000}
t2=$r/$t
docker build -t $t .
docker tag -f $t $t2
docker push $t2
