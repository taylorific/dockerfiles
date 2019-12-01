ARG BASE_IMAGE_NAME=buildpack-deps:bullseye-curl
# hadolint ignore=DL3006
FROM $BASE_IMAGE_NAME

ARG CREATED
ARG REVISION

LABEL org.opencontainers.created="$CREATED" \
      org.opencontainers.revision="$REVISION"

# procps is very common in build systems, and is a reasonably small package
RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		mercurial \
		openssh-client \
		subversion \
		\
		procps \
	&& rm -rf /var/lib/apt/lists/*
