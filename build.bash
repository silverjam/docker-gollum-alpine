#!/bin/bash

cd `dirname $0`
docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy -t gollum .
