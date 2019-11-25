#!/bin/sh

echo \
  'us.gcr.io/taylorific/node:13.1.0-bullseye' \
  'us.gcr.io/taylorific/node:13.1-bullseye' \
  'us.gcr.io/taylorific/node:13-bullseye' \
  'us.gcr.io/taylorific/node:bullseye' | xargs -n 1 docker push
