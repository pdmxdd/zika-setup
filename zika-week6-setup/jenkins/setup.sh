#!/bin/bash
docker stop zika-jenkins
docker rm zika-jenkins
docker build -t zika-week6-jenkins .
docker run --name zika-jenkins -p 9090:9090 -d -t zika-week6-jenkins
echo "to view first time password run: $ docker logs zika-jenkins"
echo "to view container IP Address if necessary run: $ docker inspect zika-jenkins"
echo "access Jenkins by going to [container IP Address] or [localhost] on port 9090 in your browser"
