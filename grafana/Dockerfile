FROM grafana/grafana-arm32v7-linux:6.4.4
# https://hub.docker.com/r/grafana/grafana/tags/

USER root
RUN apk update && \
    apk add curl

USER grafana

COPY docker-entrypoint.sh /etc/grafana/docker-entrypoint.sh
COPY datasources /etc/grafana/datasources/
COPY dashboards /etc/grafana/dashboards/

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin

ENTRYPOINT ["/etc/grafana/docker-entrypoint.sh"]
