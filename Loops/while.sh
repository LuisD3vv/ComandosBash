#!/bin/bash


contador=1 
while [[ $contador -le 5 ]]; do
    echo "Contador: $contador"
    contador=$((contador + 1))
done

#Autoincremento
#!/bin/bash
contador=1

while [[ $contador -le 5 ]]; do 
    echo "Contador: $contador"
    ((contador++))
done


# Leer un archivo csv linea por linea, -r es para evitar problemas de secuencia de escape

archivo="datos.csv"
# Leer el archivo línea por línea usando un bucle while, separandolo como tal, en las cabeceras
while IFS=',' read -r nombre edad ciudad; do
    echo "Nombre: $nombre, Edad: $edad, Ciudad: $ciudad"
done < "$archivo"