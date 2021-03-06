#!/usr/bin/env bash
set -xe
docker rmi akshayubhat/dva-auto:latest
docker rmi akshayubhat/dva-auto:gpu
docker build -t akshayubhat/dva-auto:latest .
docker build -t akshayubhat/dva-auto:gpu -f Dockerfile.gpu .
docker push akshayubhat/dva-auto:latest
docker push akshayubhat/dva-auto:gpu
