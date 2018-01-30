visdata
=======


To make a slippy Web map, you need data at all zoom/scale levels. You also need to be able to target the same features at different zoom levels with the same styling, so that there is a consistent view as the user zooms in and out. For the Netherlands, the official geographical data for different scale levels is split between different datasets. The typology of features is not  consistent between these different datasets.

`Visdata` exists to bring all those features into a single database with a consistent hierarchy of feature types, in order to greatly simplify making maps with Dutch open data. Instead of having to remember what roads are called in different datasets, you can simply refer to 'roads' and the  features from the most appropriate dataset will be targeted at each zoom level.

How to use it
-------------
This is accomplished by using vector tiles with opinionated choices about what features to serve at what zoom level. 

Data structure
--------------

#### Classification

There are seven top-level layers:

layer | description
----- | -----------
admin | administrative boundaries
water | water areas
water-line | waterways
terrain | land-use areas
urban | built-up areas
infra | roads, railways, buildings
label | names of features

Features within these layers have attributes `lod1` and `lod2` and sometimes `lod3` which can be used to select subsets. For example, the `infra` layer contains roads, railways, tram and metro lines, and ferries. To select only roads, you can filter on `lod1 = roads`. To further select a particular type of road, you can use `lod2`, for example, `lod2 = arterial`.

The full list of subclassifications is:

 
Layer | Subclassifications (lod1:lod2)
----- | -----
admin | country, province, municipality (no lod2)
water | water_surface, water_course (no lod2)
water_line | water_surface, water_course (no lod2) 
terrain | human-made: agriculture, closed, low_vegegation, open<br>natural:agriculture,high_vegegation,low_vegetation, open
urban|buildings: '','main_buildings','other_buildings','structures'<br>urban_area: ''<br>
infra| 'roads': 'arterial','highway','local'<br>'railway': 'metro', 'train', 'tram'<br>'flight': 'flight'<br>'ferry':'ferry'

#### Original feature ID
Each feature in `visdata` has an attribute `original_id` which is a string consisting of an identifier for the source dataset, and the original ID in the source dataset. It is built up as follows: `NL.<SOURCE_DATASET>.<ORIGINAL_ID>`. There is also an attribute `original_source` which contains the name of the original source.

#### Other attributes
Depending on the availability in the original source, the following 

How it is made
------------
The source datasets are the BRT (Basisregistratie Topografie), including TOP1000, TOP500, TOP250, TOP100, TOP50 and TOP10, ranging in scale from 1:1 000 000 to 1:10 000, and the BGT (Basisregistratie Grootschalige Topografie), at a scale of 1:5 000.

#### Data sources per zoom level
zoom level | source
----------|--------
0-5| TOP1000
6-7 | TOP500
8-9 | TOP250
10-11 | TOP100
12-13 | TOP50
14-15 | TOP10
16-17 | admin: TOP10<br>all other layers: BGT
