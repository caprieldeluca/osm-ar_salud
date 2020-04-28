# mapatón

Es un evento de mapeo de hospitales públicos y privados de los departamentos considerados prioritarios en la emergencia covid-19.
El objetivo del evento es verificar la ubicación geográfica de los establecimientos de salud con internación del listado de SISA, y cargarlos/editarlos en OSM.

[Ir al mapa]

----

## Fuentes de datos:

* OSM (*[© OpenStreetMap contributors, Open Data Commons Open Database License (ODbL) by the OpenStreetMap Foundation (OSMF)](https://www.openstreetmap.org/copyright)*).

  * [nacional-departamentos-osm.geojson] son los departamentos que se van a mapear en este evento.
  * [nacional-hospitales-osm.geojson] es un extracto para los departamentos de este mapatón, de la [consulta de hospitales de overpass turbo](https://overpass-turbo.eu/s/S1i).
  
* Datos Argentina (SISA) (*Creative Commons Attribution 4.0*)

  * [nacional-hospitales-sisa.geojson] es un extracto para los departamentos de este mapatón, de una conversión a GeoJSON de los registros georreferenciados de la consulta por tipo Establecimientos de Salud, con internación en el [Sistema Integrado de Información Sanitaria Argentina (SISA)](https://sisa.msal.gov.ar/sisa).

  * Los archivos con nombre numérico son extractos, por fid de departamento, de la capa nacional. Cada archivo es una tarea de este evento.
