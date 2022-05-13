#!/bin/bash


sudo docker stop dockersql 
sudo docker rm dockersql
sudo docker rm dockertest

sudo docker run  --name dockersql -e POSTGRES_PASSWORD='password' -e POSTGRES_USER='postgres' -e POSTGRES_HOST='localhost' -e POSTGRES_PORT='5432' -e POSTGRES_DB='nkosl' -d -p 127.0.0.1:5432:5432  postgres

#sudo docker run  --name dockersql -e POSTGRES_PASSWORD='password' -e POSTGRES_USER='postgres' -e POSTGRES_HOST='localhost' -e POSTGRES_PORT='5432' -e POSTGRES_DB='nkosl' -d -p 5432:5432  postgres

#sleep 1

sudo docker run  --name dockertest  -e SECRET_KEY='secret_key' -e DB_USER='postgres' -e DB_PASSWORD='password' -e DB_HOST='localhost'  -e DB_PORT='5432'  -p 127.0.0.1:80:80  test

