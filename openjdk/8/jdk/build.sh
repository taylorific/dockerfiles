#!/bin/sh

docker build \
  -t us.gcr.io/taylorific/openjdk:8-jdk \
  -t us.gcr.io/taylorific/openjdk:8-jdk-stretch \
  .
