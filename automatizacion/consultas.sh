#!/bin/bash

# Personalizar tiempo de espera entre consultas
DORMIR=60
# Personalizar path al ejecutable de osm2geojson
OSM2GEO="~/nodejs_entornos/osm-ar_salud/node_modules/.bin/osmtogeojson"

echo "  Consultar overpass API  y convertir a geojson..."

echo Hospitales:
JSONFILE=automatizacion/hospitales-osm.json
POSTFILE=automatizacion/consulta-hospitales.overpassql
GEOJSONFILE=hospitales-osm.geojson
if wget -O $JSONFILE --post-file=$POSTFILE "https://overpass-api.de/api/interpreter"
then
  JSONSIZE=$( wc -c < $JSONFILE )
  if [ $JSONSIZE -gt 60000 ]
  then
    "$OSM2GEO" $JSONFILE > $GEOJSONFILE
  fi
fi

sleep $DORMIR

echo Clinicas:
JSONFILE=automatizacion/clinicas-osm.json
POSTFILE=automatizacion/consulta-clinicas.overpassql
GEOJSONFILE=clinicas-osm.geojson
if wget -O $JSONFILE --post-file=$POSTFILE "https://overpass-api.de/api/interpreter"
then
  JSONSIZE=$( wc -c < $JSONFILE )
  if [ $JSONSIZE -gt 60000 ]
  then
    "$OSM2GEO" $JSONFILE > $GEOJSONFILE
  fi
fi

sleep $DORMIR

echo Farmacias:
JSONFILE=automatizacion/farmacias-osm.json
POSTFILE=automatizacion/consulta-farmacias.overpassql
GEOJSONFILE=farmacias-osm.geojson
if wget -O $JSONFILE --post-file=$POSTFILE "https://overpass-api.de/api/interpreter"
then
  JSONSIZE=$( wc -c < $JSONFILE )
  if [ $JSONSIZE -gt 60000 ]
  then
    "$OSM2GEO" $JSONFILE > $GEOJSONFILE
  fi
fi

sleep $DORMIR

echo Doctores:
JSONFILE=automatizacion/doctores-osm.json
POSTFILE=automatizacion/consulta-doctores.overpassql
GEOJSONFILE=doctores-osm.geojson
if wget -O $JSONFILE --post-file=$POSTFILE "https://overpass-api.de/api/interpreter"
then
  JSONSIZE=$( wc -c < $JSONFILE )
  if [ $JSONSIZE -gt 60000 ]
  then
    "$OSM2GEO" $JSONFILE > $GEOJSONFILE
  fi
fi

sleep $DORMIR

echo Higiene:
JSONFILE=automatizacion/higiene-osm.json
POSTFILE=automatizacion/consulta-higiene.overpassql
GEOJSONFILE=higiene-osm.geojson
if wget -O $JSONFILE --post-file=$POSTFILE "https://overpass-api.de/api/interpreter"
then
  JSONSIZE=$( wc -c < $JSONFILE )
  if [ $JSONSIZE -gt 60000 ]
  then
    "$OSM2GEO" $JSONFILE > $GEOJSONFILE
  fi
fi

echo "    ... hecho."

echo "  Mostrar status resumido ..."
git status -s
echo "    ... hecho."

echo "  Agregar y confirmar actualización al repositorio local ..."
git commit -a -m "Actualizacion $(date +%Y%m%d)"
echo "    ... hecho."

