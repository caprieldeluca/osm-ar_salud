# covid-19
Soporte de datos y visualización para el [proyecto de mapeo de OpenStreetMap Argentina: COVID-19](https://wiki.openstreetmap.org/wiki/ES:Argentina/COVID-19).

[Ir al mapa "Sistema de Salud - Argentina"](https://umap.openstreetmap.fr/es/map/sistema-de-salud-argentina-covid19_437454#4/-41.84/-54.58)

----

## Fuentes de datos:

* OSM (*[© OpenStreetMap contributors, Open Data Commons Open Database License (ODbL) by the OpenStreetMap Foundation (OSMF)](https://www.openstreetmap.org/copyright)*).

  * [hospitales-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/hospitales-osm.geojson) es una actualización periódica de la [consulta de hospitales de overpass turbo](https://overpass-turbo.eu/s/S1i).
  
  * [clinicas-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/clinicas-osm.geojson) es una actualización periódica de la [consulta de clínicas de overpass turbo](https://overpass-turbo.eu/s/S1o).
  
  * [farmacias-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/farmacias-osm.geojson) es una actualización periódica de la [consulta de farmacias de overpass turbo](https://overpass-turbo.eu/s/S1b).

  * [higiene-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/higiene-osm.geojson) es una actualización periódica de la [consulta de art. de limpieza e higiene de overpass turbo](https://overpass-turbo.eu/s/Szd).
  
  * [doctores-osm.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/doctores-osm.geojson) es una actualización periódica de la [consulta de doctores de overpass turbo](https://overpass-turbo.eu/s/S1y).

* SEDRONAR (*Public Domain (PD)*)

  * [hospitales-sedronar.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/hospitales-sedronar.geojson) es una conversión directa de la [capa de Hospitales Públicos de la IDE Sedronar](http://ide.sedronar.gov.ar/layers/geonode:web_hospitales_publicos_sisa) a GeoJSON.
  
* Datos Argentina (PAMI, REMEDIAR y SISA) (*Creative Commons Attribution 4.0*)

  * [agencias-pami.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/agencias-pami.geojson) es una conversión a GeoJSON de los registros georreferenciados del [dataset de agencias y centros de atención de PAMI publicado en el portal de Datos Argentina](https://datos.gob.ar/dataset/pami-listado-unidades-gestion-local-ugl-agencias).

  * [farmacias-pami.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/farmacias-pami.geojson) es el resultado de una geolocalización en Nominatim del [listado de farmacias del portal de datos abiertos de PAMI](https://datos.pami.org.ar/dataset/farmacias).

  * [caps-remediar.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/caps-remediar.geojson) es el resultado de una geolocalización en Nominatim del [listado de Centros de Atención Primaria de la Salud de REMEDIAR](http://sir.medicamentos.msal.gov.ar/int_Listado_de_CAPS_Habilitados_y_Activos/ShowInt_Listado_de_CAPS_Habilitados_y_ActivosTable.aspx).
  
  * [establecimientos-sisa.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/establecimientos-sisa.geojson) es una conversión a GeoJSON de los registros georreferenciados de la consulta por tipo Establecimientos de Salud en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).
  
  * [farmacias-sisa.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/farmacias-sisa.geojson) es una conversión a GeoJSON de los registros georreferenciados de la consulta por tipo Establecimientos de Salud en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).
    
  * [droguerias-sisa.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/droguerias-sisa.geojson) es una conversión a GeoJSON de los registros georreferenciados de la consulta por tipo Droguerías en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).

* CABA (*Atribucion 2.5 Argentina (CC BY 2.5 AR)*)

  * [csp-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/csp-caba.geojson) es una conversión directa de la [capa de Centros de Salud Privados de CABA](https://data.buenosaires.gob.ar/dataset/centros-salud-privados) a GeoJSON.
  
  * [hospitales-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/hospitales-caba.geojson) es una copia del [dataset de Hospitales de CABA](https://data.buenosaires.gob.ar/dataset/hospitales).
  
  * [farmacias-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/farmacias-caba.geojson) es una conversión directa del [listado de Farmacias de CABA](https://data.buenosaires.gob.ar/dataset/farmacias) a GeoJSON.

  * [cesac-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/cesac-caba.geojson) es una copia del [dataset de Centros de Salud y Acción Comunitaria de CABA](https://data.buenosaires.gob.ar/dataset/centros-salud-accion-comunitaria-cesac).
  
  * [cmb-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/cmb-caba.geojson) es una copia del [dataset de Centros Médicos Barriales de CABA](https://data.buenosaires.gob.ar/dataset/centros-medicos-barriales).
  
  * [es-caba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/es-caba.geojson) es una copia del [dataset de Estaciones Saludables de CABA](https://data.buenosaires.gob.ar/dataset/estaciones-saludables).  
  
* Rosario (*Open Data Commons Attribution License (ODC-By) v1.0*)

  * [geosalud-rosario.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/geosalud-rosario.geojson) es una conversión del [dataset de Hospitales y Centros de Salud de Rosario](https://datos.rosario.gob.ar/dataset/hospitales-y-centros-de-salud) a GeoJSON.

* Datos abiertos PBA (*Creative Commons Attribution 4.0*)

  * [publicos-pba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/publicos-pba.geojson) es una conversión del [dataset de Establecimientos de salud públicos, de la provincia de Buenos Aires](https://catalogo.datos.gba.gob.ar/dataset/establecimientos-salud/archivo/c2d51824-c61d-4374-a014-cca5b76b082a), a GeoJSON.

  * [privados-pba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/privados-pba.geojson) es una conversión del [dataset de Establecimientos de salud privados, de la provincia de Buenos Aires](https://catalogo.datos.gba.gob.ar/dataset/establecimientos-salud/archivo/b0290e89-edc5-4296-ba44-f0b8cd83bb5b), a GeoJSON.

* Córdoba (*CC-BY-SA-AR (CBA)*)

  * [establecimientos-cordoba.geojson](https://github.com/gabriel-de-luca/covid-19/blob/master/establecimientos-cordoba.geojson) es una conversión del [dataset de Hospitales y Centros de Salud de la Municipalidad de Córdoba](https://gobiernoabierto.cordoba.gob.ar/data/datos-abiertos/categoria/salud/mapa-de-los-centros-de-salud/3) a GeoJSON.
  
----

El directorio [`mapaton`](https://github.com/gabriel-de-luca/covid-19/tree/master/mapaton) contiene los datos que se van a usar en los eventos de OpenStreetMap Argentina: Mapatón COVID19.

----

Última actualización: 21/julio/2021.
