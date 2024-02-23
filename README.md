# README

For run app is needed have installed Docker Desktop v4.27.2 on case of Mac users


For create a develop environment is necesary run this commands:

- [x] docker-compose build

Then create a database:

- [x] docker-compose run web bash rails db:create

Initialize database:

- [x] docker-compose up -d

On this step is needed apply the backup movies_bk.sql over movies database

> IMPORTANT

> You can use pgadmin4(https://www.pgadmin.org/download/) for apply, this is the config en local environment:

> Config pgadmin4 locally:

> - Select register server

> Params

> - host: 127.0.0.1
> - port: 5432
> - manintenace database: postgres
> - username: postgres
> - password: password

>Server name is needed but its for free choice 

Or it's possible with command line:

- [x] docker cp ./movies_bk.sql postgres_db:/docker-entrypoint-initdb.d/movies_bk.sql
- [x] docker exec -u postgres postgres_db pg_restore postgres -d movies -1 docker-entrypoint-initdb.d/movies_bk.sql
 
Run environment and debug

- [x]  docker-compose up -d && docker attach test-web-1



