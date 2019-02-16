FROM postgres:latest
MAINTAINER zilehuda <zilehuda.tariq@gmail.com>
RUN apt-get update \
      && apt-get install -y postgis

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
