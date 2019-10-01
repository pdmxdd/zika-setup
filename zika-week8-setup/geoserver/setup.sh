#!/bin/bash
docker build -t zika-geoserver .
docker stop geoserver
docker rm geoserver

# docker run --name geoserver -p 8989:8989 -p 2020:2020 -dt zika-geoserver
docker run --name geoserver -p 8989:8989 -dt zika-geoserver
