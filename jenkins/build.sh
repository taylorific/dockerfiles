#!/bin/sh

docker build \
  --build-arg JENKINS_VERSION=2.190.3 \
  --build-arg JENKINS_SHA=79c2042b30ad71dc9cf17a5877f64eaed405fa03e24e002ca60f8db73b7ad490 \
  -t us.gcr.io/taylorific/jenkins:lts \
  -t us.gcr.io/taylorific/jenkins:2.190.3 \
  .
