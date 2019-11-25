FROM debian:bullseye-slim

LABEL maintainer="Mischa Taylor <sheska@linux.com>"

COPY shellcheck-all.sh /usr/local/bin

RUN apt-get update && apt-get install -y \
  file=1:5.37-6 \
  shellcheck=0.6.0-1 \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

CMD ["shellcheck"]
