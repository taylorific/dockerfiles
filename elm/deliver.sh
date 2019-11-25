#!/bin/sh

echo \
  'us.gcr.io/taylorific/elm:0.19.1' | xargs -n 1 docker push
