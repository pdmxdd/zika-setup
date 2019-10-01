#!/bin/bash
docker build -t zika-db4 .

docker stop zika-week4
docker rm zika-week4

docker run --name zika-week4 -p 5432:5432 -dt zika-db4

sleep 5

PGPASSWORD=zikapass psql -h 127.0.0.1 -U zika_user -d postgres -f database-setup.sql
