FROM buildpack-deps:stretch-scm
MAINTAINER jollinshead <jhollinshead93@hotmail.co.uk>

RUN apt-get update && apt-get install "libsystemd-dev" -y && apt-get install systemd -y
RUN mkdir -p "/var/journald-cloudwatch-logs"

COPY journald-cloudwatch-logs /
COPY init.sh /

ENTRYPOINT ["/init.sh"]