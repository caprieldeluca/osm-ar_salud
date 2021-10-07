#!/bin/bash

echo "  Consultar overpass API  y convertir a geojson..."
if wget -O automatizacion/hospitales-osm.json --post-file=automatizacion/consulta-hospitales.txt "https://overpass-api.de/api/interpreter"; then
    osmtogeojson automatizacion/hospitales-osm.json > hospitales-osm.geojson
fi
sleep 10
if wget -O automatizacion/clinicas-osm.json --post-file=automatizacion/consulta-clinicas.txt "https://overpass-api.de/api/interpreter"; then
    osmtogeojson automatizacion/clinicas-osm.json > clinicas-osm.geojson
fi
sleep 10
if wget -O automatizacion/farmacias-osm.json --post-file=automatizacion/consulta-farmacias.txt "https://overpass-api.de/api/interpreter"; then
    osmtogeojson automatizacion/farmacias-osm.json > farmacias-osm.geojson
fi
sleep 10
if wget -O automatizacion/doctores-osm.json --post-file=automatizacion/consulta-doctores.txt "https://overpass-api.de/api/interpreter"; then
    osmtogeojson automatizacion/doctores-osm.json > doctores-osm.geojson
fi
sleep 10
if wget -O automatizacion/higiene-osm.json --post-file=automatizacion/consulta-higiene.txt "https://overpass-api.de/api/interpreter"; then
    osmtogeojson automatizacion/higiene-osm.json > higiene-osm.geojson
fi
echo "    ... hecho."

echo "  Mostrar status resumido ..."
git status -s
echo "    ... hecho."

echo "  Agregar y confirmar actualización al repositorio local ..."
git commit -a -m "Actualizacion $(date +%Y%m%d)"
echo "    ... hecho."

