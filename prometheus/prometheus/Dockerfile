FROM docker.r.winry.it/busybox:latest

ARG CREATED
ARG REVISION

LABEL org.opencontainers.created="$CREATED" \
      org.opencontainers.revision="$REVISION"

ENV PROMETHEUS_VERSION "2.15.0"
ENV PROMETHEUS_SHA256 "1c2175428e7a70297d97a30a04278b86ccd6fc53bf481344936d6573482203b4"

WORKDIR /tmp
RUN set -eux; \
	\
	wget -O prometheus.tar.gz "https://r.winry.it/artifactory/github-release-remote/prometheus/prometheus/releases/download/v2.15.0/prometheus-2.15.0.linux-amd64.tar.gz"; \
	echo "${PROMETHEUS_SHA256}  prometheus.tar.gz" | sha256sum -c -; \
	tar -xvf prometheus.tar.gz; \
	mkdir -p /etc/prometheus; \
	mkdir -p /usr/share/prometheus; \
	cp prometheus-*.linux-amd64/prometheus /bin/prometheus; \
	cp prometheus-*.linux-amd64/promtool /bin/promtool; \
	cp prometheus-*.linux-amd64/prometheus.yml /etc/prometheus/prometheus.yml; \
	cp -r prometheus-*.linux-amd64/console_libraries /usr/share/prometheus/console_libraries/; \
	cp -r prometheus-*.linux-amd64/consoles /usr/share/prometheus/consoles/; \
	rm -f prometheus.tar.gz; \
	rm -rf /tmp/prometheus-*.linux-amd64;

RUN ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ /etc/prometheus/
RUN mkdir -p /prometheus && \
    chown -R nobody:nogroup /etc/prometheus /prometheus

USER       nobody
EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus.yml", \
             "--storage.tsdb.path=/prometheus", \
             "--web.console.libraries=/usr/share/prometheus/console_libraries", \
             "--web.console.templates=/usr/share/prometheus/consoles" ]
