#crontab es un ejecutador de tareas automatico en sistemas unix/linux de forma repetida
#!/bin/bash

nombre=$(whoami)
fecha=$(date +%Y-%m-%d)
host=$(hostname)

echo "Hola, $nombre. Hoy es $fecha y estás usando el equipo $host."
