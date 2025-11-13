#!/bin/bash

# Declaracion de variables

<<MOTIVO
gestionar un inventario que identifique los productos con un 
stock bajo y genere un reporte
MOTIVO

ARCHIVO="inventario.dat"
declare -i MIN_STOCK=10
REPORTE="alertas.txt"
declare -i ALERTAS=0
declare -i PRODUCTOS_PROCESADOS=0
declare -i eliminar_cabecera=0


# read -r _ < "$ARCHIVO"

# Leer el archivo linea por linea

if [[ ! -s $ARCHIVO ]]; then
    printf "Error. el archivo no existe o esta vacio."
    echo 
    exit 1
else
echo "-----------------------------"
> "$REPORTE"
while IFS="," read -r id nombre stock precio;
do
    ((eliminar_cabecera++))
    if [[ $eliminar_cabecera -eq 1 ]]; then
        continue
    fi
    if [[ $stock -le $MIN_STOCK ]]; then
        echo "ALERTA: [$nombre] tiene un stock de [$stock] unidades." >> $REPORTE
        ((ALERTAS++))
    fi
    ((PRODUCTOS_PROCESADOS++))
    echo "ID: $id Nombre: $nombre Precio: $precio"
done < "$ARCHIVO"
echo "-----------------------------"
echo "Numero de alertas generadas $ALERTAS"
echo "Productos totales Procesados $PRODUCTOS_PROCESADOS"
fi
