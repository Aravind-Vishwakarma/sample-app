#!/bin/bash

source $1
sed -i "s/App version/App ${VERSION}/g" ${APP_HOME}/src/main.py

# Build Docker file
docker build -t aravind43zz/hello-python:${VERSION} ${APP_HOME}/.

# Push image to docker hub
docker push aravind43zz/hello-python:${VERSION}
