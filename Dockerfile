FROM postgres-postgis:latest
MAINTAINER zilehuda

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh