Has 3 certs:

- Root (root.crt, root.key)
- Server (server.key, server.crt)
- Client (client.crt, client.key)

Gets initialised with 2 users:
- `with_client_certs`:
   - password: `with_client_certs`
   - database: `with_client_certs`
   - Client certificate is enabled for this user
- `no_client_certs`:
   - password: `no_client_certs`
   - database: `no_client_certs`
   - client certificate auth is _disabled_ for this user, but still requires SSL

Run with
```shell
docker run -e POSTGRES_PASSWORD=potato -p 5432:5432 --name=postgres-ssl postgres-ssl -c 'config_file=/etc/postgresql/postgresql.conf'
```

