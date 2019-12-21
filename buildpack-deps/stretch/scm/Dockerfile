FROM docker.r.winry.it/buildpack-deps:stretch-curl

ARG CREATED
ARG REVISION

LABEL org.opencontainers.created="$CREATED" \
      org.opencontainers.revision="$REVISION" 

# procps is very common in build systems, and is a reasonably small package
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		mercurial \
		openssh-client \
		subversion \
		\
		procps \
	&& rm -rf /var/lib/apt/lists/*
