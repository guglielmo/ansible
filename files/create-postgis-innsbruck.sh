#!/bin/bash

createdb -E UTF8 -O gis postgis_innsbruck
psql postgis_innsbruck -f /usr/share/postgresql/9.4/contrib/postgis-2.1/postgis.sql
psql postgis_innsbruck -f /usr/share/postgresql/9.4/contrib/postgis-2.1/spatial_ref_sys.sql
psql postgis_innsbruck -c "ALTER TABLE geometry_columns OWNER TO gis"
psql postgis_innsbruck -c "ALTER TABLE spatial_ref_sys OWNER TO gis"
