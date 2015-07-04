import os
import TileStache

application = TileStache.WSGITileServer('/srv/gis/tilestache/tilestache.cfg')

service apache2 restart
