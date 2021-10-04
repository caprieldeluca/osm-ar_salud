#!/bin/bash

echo "  Consultar overpass API ..."
wget -O automatizacion/hospitales-osm.json --post-file=automatizacion/consulta-hospitales.txt --no-check-certificate --no-cache --no-cookies --no-http-keep-alive "https://overpass-api.de/api/interpreter"
sleep 120
wget -O automatizacion/clinicas-osm.json --post-file=automatizacion/consulta-clinicas.txt --no-check-certificate --no-cache --no-cookies --no-http-keep-alive "https://overpass-api.de/api/interpreter"
sleep 120
wget -O automatizacion/farmacias-osm.json --post-file=automatizacion/consulta-farmacias.txt --no-check-certificate --no-cache --no-cookies --no-http-keep-alive "https://overpass-api.de/api/interpreter"
sleep 120
wget -O automatizacion/doctores-osm.json --post-file=automatizacion/consulta-doctores.txt --no-check-certificate --no-cache --no-cookies --no-http-keep-alive "https://overpass-api.de/api/interpreter"
sleep 120
wget -O automatizacion/higiene-osm.json --post-file=automatizacion/consulta-higiene.txt --no-check-certificate --no-cache --no-cookies --no-http-keep-alive "https://overpass-api.de/api/interpreter"
echo "    ... hecho."

echo "  Convertir json a geojson ..."
osmtogeojson automatizacion/hospitales-osm.json > hospitales-osm.geojson
osmtogeojson automatizacion/clinicas-osm.json > clinicas-osm.geojson
osmtogeojson automatizacion/farmacias-osm.json > farmacias-osm.geojson
osmtogeojson automatizacion/doctores-osm.json > doctores-osm.geojson
osmtogeojson automatizacion/higiene-osm.json > higiene-osm.geojson
echo "    ... hecho."

echo "  Mostrar status resumido ..."
git status -s
echo "    ... hecho."

echo "  Agregar y confirmar actualización al repositorio local ..."
git commit -a -m "Actualizacion $(date +%Y%m%d)"
echo "    ... hecho."

