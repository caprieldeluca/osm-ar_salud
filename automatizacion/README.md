# automatización

Automatización para la descarga de capas OSM a través de [overpass-API](http://overpass-api.de/), conversión a geojson a través de [osmtogeojson](https://github.com/tyrasd/osmtogeojson), confirmación al repositorio local y fusión al repositorio remoto.

----

El archivo [consultas.sh](https://github.com/gabriel-de-luca/covid-19/blob/master/automatizacion/consultas.sh) corre las consultas a `overpass API`, descarga datos OSM en formato json, los convierte a geojson y confirma al repositorio local.

El archivo [entorno.sh](https://github.com/gabriel-de-luca/covid-19/blob/master/automatizacion/entorno.sh) debe personalizarse para el equipo en el que se va a correr.
Define un entorno `conda` en el que se encuentra la instalción de `osmtogeojson`, define el directorio de trabajo que es donde se almacenan los archivos geojson y que debe contener al directorio `actualizacion/` en el que se encuentran los scripts y textos de las consultas, corre las consultas y hace la fusión al repositorio remoto.