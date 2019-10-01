docker stop zika-es-week8
docker rm zika-es-week8
docker build -t zika-week4-es .
docker run --name zika-es-week8 -p 9200:9200 -p 9300:9300 -d -t zika-week4-es
# fire a curl request to create the mapping for the index?
