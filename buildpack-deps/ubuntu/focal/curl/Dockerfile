FROM ubuntu:focal

ARG CREATED
ARG REVISION

LABEL org.opencontainers.created="$CREATED" \
      org.opencontainers.revision="$REVISION" 

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		netbase \
		wget \
# https://bugs.debian.org/929417
		tzdata \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends \
			gnupg \
			dirmngr \
		; \
		rm -rf /var/lib/apt/lists/*; \
	fi
