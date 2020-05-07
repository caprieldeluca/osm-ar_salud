# mapatón

Soporte de datos y visualización para los [eventos de mapeo de **hospitales** y **centros de atención** de los departamentos considerados prioritarios](https://wiki.openstreetmap.org/wiki/ES:Argentina/Eventos/Mapat%C3%B3n_Salud_2020), dentro del [proyecto de OpenStreetMap Argentina: COVID-19](https://wiki.openstreetmap.org/wiki/ES:Argentina/COVID-19).

El objetivo de los eventos es verificar la ubicación geográfica de los establecimientos de salud listado de SISA, y cargarlos/editarlos en OSM.

[Ir al mapa "Mapatón - COVID19 - OSM Argentina"](https://umap.openstreetmap.fr/es/map/mapaton-covid19-osm-argentina_451066)

----

## Fuentes de datos:

* OSM (*[© OpenStreetMap contributors, Open Data Commons Open Database License (ODbL) by the OpenStreetMap Foundation (OSMF)](https://www.openstreetmap.org/copyright)*).

  * [prioridad1-departamentos-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-departamentos-osm.geojson) son los departamentos que se van a mapear en el evento Prioridad 1.
  * [prioridad1-hospitales-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-hospitales-osm.geojson) es un extracto para los departamentos del evento Prioridad 1, de la [consulta de hospitales de overpass turbo](https://overpass-turbo.eu/s/S1i).
  * [prioridad1-clinicas-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-clinicas-osm.geojson) es un extracto para los departamentos del evento Prioridad 1, de la [consulta de clinicas de overpass turbo](https://overpass-turbo.eu/s/S1o).
  
* Datos Argentina (SISA) (*Creative Commons Attribution 4.0*)

  * [prioridad1-establecimientos-sisa.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-establecimientos-sisa.geojson) es un extracto para los departamentos del evento Prioridad 1, de la consulta de hospitales y centros de atención, en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).

----

En los directorios de cada evento se encuentra el desagregado de hospitales a mapear, por departamento, en ese evento.
