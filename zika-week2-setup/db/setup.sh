#!/bin/bash
# Creates a new image from the Dockerfile
docker build -t zika-db .
# stops and removes any containers with the name we are using
docker stop zika-week2
docker rm zika-week2
# creates and runs the container based on the image we created above
docker run --name zika-week2 -p 5432:5432 -d -t zika-db
# wait 5 seconds to let the database startup
sleep 5
# pass database-setup.sql to the database using the PGPASSWORD 'psqlpass'
PGPASSWORD=psqlpass psql -h 127.0.0.1 -U psql_user -d postgres -f database-setup1.sql

PGPASSWORD=zikapass psql -h 127.0.0.1 -U zika_user -d postgres -f database-setup2.sql

# from here you would need to set your intellij environment variables to the key value pairs in the 'intellij-env-vars.txt' file -- and run your application
