#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER with_client_certs WITH PASSWORD 'with_client_certs';
	CREATE DATABASE with_client_certs;
	GRANT ALL PRIVILEGES ON DATABASE with_client_certs TO with_client_certs;

	CREATE USER no_client_certs WITH PASSWORD 'no_client_certs';
	CREATE DATABASE no_client_certs;
	GRANT ALL PRIVILEGES ON DATABASE no_client_certs TO no_client_certs;
EOSQL
