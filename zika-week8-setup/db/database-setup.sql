DROP DATABASE gis;
CREATE DATABASE zika;
GRANT ALL PRIVILEGES ON DATABASE zika TO zika_user;
\c zika;
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
CREATE TABLE report
(
	    id serial primary key,
	    data_field character varying(255),
	    data_field_code character varying(255),
	    date_string character varying(255),
	    location_string character varying(255),
	    location_type character varying(255),
	    time_period character varying(255),
	    time_period_type character varying(255),
	    unit character varying(255),
	    value double precision
);
CREATE TABLE location
(
	    id serial primary key,
	    country_name character varying(255),
	    state_name character varying(255),
	    geom geometry
);
ALTER TABLE report OWNER to zika_user;
ALTER TABLE location OWNER to zika_user;

COPY report(date_string, location_string, location_type, data_field, data_field_code, time_period, time_period_type, value, unit) FROM '/tmp/all_reports-cleaned.csv' DELIMITER ',' CSV HEADER;
COPY location(country_name, state_name, geom) FROM '/tmp/locations-cleaned.csv' DELIMITER ',' CSV HEADER;

