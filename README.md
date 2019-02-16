# zilehuda/postgres-postgis

[![Build Status](https://travis-ci.org/appropriate/docker-postgis.svg)](https://travis-ci.org/appropriate/docker-postgis) [![Join the chat at https://gitter.im/appropriate/docker-postgis](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/appropriate/docker-postgis?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

The `zilehuda/postgres-postgis` is a simple docker image provides running Postgres with [PostGIS 2.5](http://postgis.net/) installed. This image is based on the official [`postgres`](https://registry.hub.docker.com/_/postgres/) image.

This image ensures that the default database created by the parent `postgres` image will have the following extensions installed:

* `postgis`
* `postgis_topology`
* `fuzzystrmatch`
* `postgis_tiger_geocoder`

Default database with with above extions is `template_postgis`, if you want to add custom database name then you have to pass ARG `-e POSTGRES_DB` while running container. 

## Environment Variables

`## POSTGRES_PASSWORD`
This environment variable is recommended for you to use the PostgreSQL image. This environment variable sets the superuser password for PostgreSQL.

`## POSTGRES_USER`
This optional environment variable is used in conjunction with POSTGRES_PASSWORD to set a user and its password.

`##POSTGRES_DB`
This optional environment variable can be used to create new database with default database.


## Usage

In order to run a basic container capable of serving a PostGIS-enabled database, start a container as follows:

    docker run --name some-postgis -e POSTGRES_PASSWORD=mysecretpassword -d zilehuda/postgres-postgis
    
if you want with custom database and postgres user

    docker run --name some-postgis -e POSTGRES_USER=zilehuda -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=postgis_db -d zilehuda/postgres-postgis
    
    
For more detailed instructions about how to start and control your Postgres container, see the documentation for the `postgres` image [here](https://registry.hub.docker.com/_/postgres/).
