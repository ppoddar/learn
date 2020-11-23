#!/bin/sh

function stop_docker() {
    nimages=`docker ps | wc -l`
    if [[ $nimages -gt 1 ]]; then
        container=`docker ps | tail -n +2 | awk '{print $1}'`
        echo stopping a container $container . may take time...
        docker stop $container
    fi
}

stop_docker

IMAGE=learn
docker build -t $IMAGE .
echo running containerized application $IMAGE. mapped port 80
docker run -p80:80 --rm $IMAGE