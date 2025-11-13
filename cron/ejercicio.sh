#!/bin/bash


<<SINTAXIS

La sintaxis de cron consta de  5 parametros

* * * * *

minuto hora dia mes dia_semana

simbolos

/ cada cierto tiempo

* cualquier valor

# debemos de usar rutas absolutas

Contamos con multiples opciones tales como

@reebot

@weekly

@yearly

@daily

@monthly

@hourly
SINTAXIS

En caso de usar archivos, la ruta tambien debe ser
absoluta.

fecha=$(date)

echo $fecha >> /home/lissandro/Escritorio/Programacion/ComandosBash/cron/log.txt

