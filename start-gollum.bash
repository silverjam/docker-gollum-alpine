#!/bin/bash

cd `dirname $0`/..

docker run \
    --name gollum \
    --volume $PWD:/wiki \
    --publish 4567:80 \
    --detach \
    gollum
