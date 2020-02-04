#!/bin/bash
#
# (C) Sovrin Foundation
#

set -e

echo "Calling helm to upgrade Kubernetes Cluster with latest DockerHub Image..."
#helm upgrade sgfv3-latest ../../helm --namespace default --set gfdocprefix=stm
#echo "Successfully upgraded environment STM
#helm upgrade sgfv3-latest ../../helm --namespace default --set gfdocprefix=spu
#echo "Successfully upgraded environment SPU
git rev-parse --verify refs/stash
git stash save
helm upgrade sgfv3-latest helm --install --force --namespace default --kubeconfig ./_ci-pipeline/config/kubernetes/boeee1qd0uhgsckare0g.yml -f ./helm/sbu_values.yaml
echo "Successfully upgraded environment SBU"

exit 0
