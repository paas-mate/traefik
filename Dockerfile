FROM shoothzj/base

ENV TRAEFIK_HOME /opt/traefik

ARG TARGETARCH

RUN wget -q https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_linux_$TARGETARCH.tar.gz  && \
mkdir -p /opt/traefik && \
tar -xf traefik_v2.9.6_linux_$TARGETARCH.tar.gz -C /opt/traefik && \
rm -rf traefik_v2.9.6_linux_$TARGETARCH.tar.gz

WORKDIR /opt/traefik
