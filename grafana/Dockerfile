# https://hub.docker.com/r/grafana/grafana/tags/
# 6.4.x is currently broken - see https://github.com/grafana/grafana/issues/19585
# 6.5.x should be good when it is released
# version in the Makefile should be kept in sync with this
FROM grafana/grafana:6.3.6

# 6.4.x are based on alpine so will need the following added when upgraded
#USER root
#RUN apk update && \
#    apk add curl && \
#    apk add file && \
#    apk add strace
#
#USER grafana

COPY docker-entrypoint.sh /etc/grafana/docker-entrypoint.sh
COPY datasources /etc/grafana/datasources/
COPY dashboards /etc/grafana/dashboards/

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin

ENTRYPOINT ["/etc/grafana/docker-entrypoint.sh"]
