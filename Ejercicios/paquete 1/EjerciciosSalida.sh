#!/bin/bash

read -p "Ingresa tu nombre: " nombre
read -p "Ingresa el nombre del archivo: " archivo

read -p "Que palabra desea buscar: " palabra


extension=".txt"
salida=$(wc -lc $archivo$extension>>Error.log)

palabreaEN=$(grep -oi $palabra $archivo$extension | wc -l )

# Es obligatorio el else
if [[ $palabreaEN -lt 1 ]]; then
    echo "No hay coincidencias en el archivo"
else
    echo "Cantidad de coincidencias -=> '$palabreaEN'"
fi

echo "$salida"
echo "Se guardo en Error.log"

#echo "Comprobando contenido de Error"

#ruta="Error.log"

#echo -e "Contenido \\n >> $(cat $ruta)"