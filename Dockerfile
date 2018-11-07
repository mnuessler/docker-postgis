# Project: postgis
FROM postgres:9.6
MAINTAINER Matthias Nuessler <m.nuessler@web.de

ENV POSTGRES_VERSION 9.6
ENV POSTGIS_VERSION 2.3

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
            postgresql-$POSTGRES_VERSION-postgis-$POSTGIS_VERSION \
            postgresql-$POSTGRES_VERSION-postgis-$POSTGIS_VERSION-scripts && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
