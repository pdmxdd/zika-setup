DROP DATABASE gis;
CREATE DATABASE zika;
GRANT ALL PRIVILEGES ON DATABASE zika TO zika_user;
\c zika;
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
