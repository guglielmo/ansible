#!/bin/bash

createdb -E UTF8 -O gis postgis_hamburg
psql postgis_hamburg -f /usr/share/postgresql/9.3/contrib/postgis-2.1/postgis.sql
psql postgis_hamburg -f /usr/share/postgresql/9.3/contrib/postgis-2.1/spatial_ref_sys.sql
psql postgis_hamburg -c "ALTER TABLE geometry_columns OWNER TO gis"
psql postgis_hamburg -c "ALTER TABLE spatial_ref_sys OWNER TO gis"
