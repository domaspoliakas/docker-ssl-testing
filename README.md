Run with
```shell
docker run -e POSTGRES_PASSWORD=potato -p 5432:5432 --name=postgres-ssl postgres-ssl -c 'config_file=/etc/postgresql/postgresql.conf'
```
