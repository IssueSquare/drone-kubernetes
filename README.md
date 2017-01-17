# Kubernetes plugin for drone.io

This plugin allows to update a Kubernetes deployment.

## Usage  

This pipeline will update the `my-deployment` deployment with the image tagged `DRONE_COMMIT_SHA:8`

    pipeline:
        deploy:
            image: quay.io/honestbee/drone-kubernetes
            deployment: my-deployment
            repo: myorg/myrepo
            container: my-container
            namespace: default
            tag: ${DRONE_COMMIT_SHA:8}

## Required secrets

    drone secret add --image=honestbee/drone-kubernetes \
        your-user/your-repo KUBERNETES_SERVER https://mykubernetesapiserver


    drone secret add --image=honestbee/drone-kubernetes \
        your-user/your-repo KUBERNETES_TOKEN eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJ...

## To do 

Replace the current kubectl bash script with a go implementation.

### Special thanks

Inspired by [drone-helm](https://github.com/ipedrazas/drone-helm).
