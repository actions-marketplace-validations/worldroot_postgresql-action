#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e POSTGRES_DB=$INPUT_POSTGRESQL_DB"
docker_run="$docker_run -e POSTGRES_USER=$INPUT_POSTGRESQL_USER"
docker_run="$docker_run -e POSTGRES_PASSWORD=$INPUT_POSTGRESQL_PASSWORD"
docker_run="$docker_run echo max_locks_per_transaction = 1024 | sudo tee -a /etc/postgresql/10/main/postgresql.conf " 
docker_run="$docker_run -d -p 5432:5432 postgres:$INPUT_POSTGRESQL_VERSION"

sh -c "$docker_run"
