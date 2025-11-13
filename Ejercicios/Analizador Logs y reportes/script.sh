#!/bin/bash

ARCHIVO="sistema.log"
PATRONES_BUSQUEDA=("ERROR" "WARNING" "INFO")
CONTADOR_ERRORES=0


while IFS= read -r linea;
do
    # contar los errores, si la linea contiene la palabra error
    if [[ $linea =~ "ERROR" ]]; then
    # Asumiendo que la línea es: 2025-11-12 10:03:30 ERROR ...
    HORA=$(echo "$linea" | cut -d' ' -f2) # Extrae la hora
    MENSAJE=$(echo "$linea" | cut -d' ' -f4-) # Extrae el resto del mensaje
    echo "🚨 [$HORA] CRÍTICO: $MENSAJE" ((CONTADOR_ERRORES++))
    fi
    echo -e "\n--- Resumen de Logs ---"
    for patron in "${PATRONES_BUSQUEDA[@]}"; do
        # la busqueda debe ser sobre el archivo total para evitar malinterpretaciones de lectura en grep
        CANTIDAD=$(grep -ic "$patron" "$ARCHIVO")
        echo "se encontraron $CONTADOR_ERRORES errores [$patron]"
    done
done < $ARCHIVO
echo "Cantidad de errores en la iteracion 1 ($CONTADOR_ERRORES)"