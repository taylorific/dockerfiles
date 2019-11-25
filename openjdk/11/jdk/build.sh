#!/bin/sh

docker build \
  -t us.gcr.io/taylorific/openjdk:11-jdk \
  -t us.gcr.io/taylorific/openjdk:11-jdk-stretch \
  .
