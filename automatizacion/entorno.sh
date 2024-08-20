#!/bin/bash

# Personalizar directorio de trabajo
DIR_TRABAJO="~/Proyectos/osm-ar_salud"

echo "  Iniciar conda ..."
eval "$(conda shell.bash hook)"
echo "    ... hecho."

echo "  Activar entorno NodeJS ..."
conda activate nodejs
echo "    ... hecho."

echo "  Cambiar directorio de trabajo ..."
# Entre comillas por si hubiera caracteres especiales
cd "$DIR_TRABAJO"
echo "    ... hecho."

echo "  Hacer pull previo ..."
git pull
echo "    ... hecho."

echo "  Correr consultas.sh ..."
sh automatizacion/consultas.sh
echo "    ... hecho."

echo "  Hacer push ..."
git push
echo "    ... hecho."

