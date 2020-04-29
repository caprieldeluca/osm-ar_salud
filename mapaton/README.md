# mapatón

Soporte de datos y visualización para los eventos de mapeo de hospitales públicos y privados de los departamentos considerados prioritarios, dentro del [proyecto de OpenStreetMap Argentina: COVID-19](https://wiki.openstreetmap.org/wiki/ES:Argentina/COVID-19).

El objetivo de los eventos es verificar la ubicación geográfica de los establecimientos de salud con internación del listado de SISA, y cargarlos/editarlos en OSM.

[Ir al mapa]

----

## Fuentes de datos:

* OSM (*[© OpenStreetMap contributors, Open Data Commons Open Database License (ODbL) by the OpenStreetMap Foundation (OSMF)](https://www.openstreetmap.org/copyright)*).

  * [prioridad1-departamentos-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-departamentos-osm.geojson) son los departamentos que se van a mapear en el evento Prioridad 1.
  * [prioridad1-hospitales-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-hospitales-osm.geojson) es un extracto para los departamentos del evento Prioridad 1, de la [consulta de hospitales de overpass turbo](https://overpass-turbo.eu/s/S1i).
  
* Datos Argentina (SISA) (*Creative Commons Attribution 4.0*)

  * [prioridad1-hospitales-sisa.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/mapaton/prioridad1-hospitales-sisa.geojson) es un extracto para los departamentos del evento Prioridad 1, de una conversión a GeoJSON de los registros georreferenciados de la consulta por tipo Establecimientos de Salud, con internación, en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).

----

En los directorios de cada evento se encuentra el desagregado de hospitales a mapear, por departamento, en ese evento.
