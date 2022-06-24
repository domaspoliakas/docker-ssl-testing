FROM postgres:14.3

COPY ./my-postgres.conf /etc/postgresql/postgresql.conf
COPY ./create-users.sh /docker-entrypoint-initdb.d/create-users.sh
COPY ./enable-ssl.sh /docker-entrypoint-initdb.d/enable-ssl.sh
COPY root.crt server.crt server.key /var/ssl/
RUN chown postgres.postgres /var/ssl/server.key /var/ssl/server.crt 
RUN chmod 600 /var/ssl/server.key
