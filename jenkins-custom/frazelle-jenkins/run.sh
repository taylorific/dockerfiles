#!/bin/bash

docker run -it --rm --name ocd-jenkins -p 8080:8080 -p 50000:50000  docker.r.winry.it/ocd-jenkins 
