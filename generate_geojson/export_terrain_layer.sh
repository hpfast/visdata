ogr2ogr -f GeoJSON /data/geojson/terrain_bgt.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source = 'BGT'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_10.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP10NL'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_50.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP50NL'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_100.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP100NL'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_250.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP250NL'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_500.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP500NL'" -lco COORDINATE_PRECISION=6

ogr2ogr -f GeoJSON /data/geojson/terrain_1000.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 PG:"host=postgis port=5432 user=pdok_owner dbname=visdata password=Ip8pVdIM3eJKzs4aSU1ylfiJaubBRrKu" -sql "SELECT lod1, lod2, z_index, original_id, geom FROM visdata.terrain_polygon WHERE original_source='TOP1000NL'" -lco COORDINATE_PRECISION=6
