FROM debian:bullseye-slim
LABEL maintainer="Mischa Taylor <sheska@linux.com>"

ARG CREATED
ARG REVISION

LABEL org.opencontainers.created="$CREATED" \
      org.opencontainers.revision="$REVISION"

COPY shellcheck-all.sh /usr/local/bin

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y \
  file \
  shellcheck \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

CMD ["shellcheck"]
