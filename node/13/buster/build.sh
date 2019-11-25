#!/bin/sh

docker build \
  -t us.gcr.io/taylorific/node:13.1.0-bullseye \
  -t us.gcr.io/taylorific/node:13.1-bullseye \
  -t us.gcr.io/taylorific/node:13-bullseye \
  -t us.gcr.io/taylorific/node:bullseye \
  .
