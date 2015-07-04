#!/bin/bash

osm2pgsql -s -m -d postgis_hamburg /srv/gis/osm/hamburg-latest.osm.bz2
