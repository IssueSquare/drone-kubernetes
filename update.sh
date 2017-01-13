#!/bin/sh

kubectl config set-credentials default --token=${KUBERNETES_TOKEN}
kubectl config set-cluster default --server=${KUBERNETES_SERVER} --insecure-skip-tls-verify=true
kubectl config set-context default --cluster=default --user=default
kubectl config use-context default
kubectl set image deployment/${PLUGIN_DEPLOYMENT} ${PLUGIN_NAME}=${PLUGIN_REPO}:${PLUGIN_TAG}

#TODO : Identify a good way to identify IMAGE_NAME and PLUGIN_DEPLOY_IMAGE
