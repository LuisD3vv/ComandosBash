#!/bin/bash


NOMBRE_PROYECTO="MiProyectoBash"
AUTOR="Lissandro"
FECHA=$(date +%Y-%m-%d)

mkdir $NOMBRE_PROYECTO

cd $NOMBRE_PROYECTO

mkdir data logs

touch README.txt

echo "$NOMBRE_PROYECTO,$AUTOR,$FECHA Archivo de prueba bash" >> README.txt