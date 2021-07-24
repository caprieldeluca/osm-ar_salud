#!/bin/bash
echo "  Iniciar conda ..."
eval "$(conda shell.bash hook)"
echo "    ... hecho."

echo "  Activar entorno NodeJS ..."
conda activate nodejs
echo "    ... hecho."

echo "  Cambiar directorio de trabajo ..."
cd /home/gabriel/Proyectos/covid-19/
echo "    ... hecho."

echo "  Haciendo pull previo ..."
git pull
echo "    ... hecho."

echo "  correr consultas.sh ..."
source automatizacion/consultas.sh
echo "    ... hecho."

echo "  Haciendo push ..."
git push
echo "    ... hecho."

