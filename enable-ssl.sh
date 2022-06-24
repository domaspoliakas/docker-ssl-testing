#!/bin/bash

sed -i 's/host.*all.*all.*all.*scram-sha-256//g' $PGDATA/pg_hba.conf
printf 'hostssl\twith_client_certs\twith_client_certs\t172.17.0.1/32\tscram-sha-256\tclientcert=verify-ca\n' >> $PGDATA/pg_hba.conf
printf 'hostssl\tno_client_certs\tno_client_certs\t172.17.0.1/32\tscram-sha-256\n' >> $PGDATA/pg_hba.conf
