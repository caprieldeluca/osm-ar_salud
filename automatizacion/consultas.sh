#!/bin/bash
echo "  Iniciar conda ..."
eval "$(conda shell.bash hook)"
echo "    ... hecho."

echo "  Activar entorno NodeJS ..."
conda activate nodejs
echo "    ... hecho."

echo "  Cambiar directorio de trabajo ..."
cd /home/gabriel/Proyectos/pruebas/
echo "    ... hecho."

echo "  Consultar overpass API ..."
wget -O doctores-osm.json --post-file=consulta-doctores.txt "https://overpass-api.de/api/interpreter"
echo "    ... hecho."

echo "  Convertir json a geojson ..."
osmtogeojson doctores-osm.json > doctores-osm.geojson
echo "    ... hecho."

echo "  Agregar y confirmar actualización al repositorio local ..."
git commit -a -m 'Actualizacion 20210721'
echo "    ... hecho."