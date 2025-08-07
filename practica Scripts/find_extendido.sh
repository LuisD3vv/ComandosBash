#!/bin/bash

#Variables 
# se pueden definir asi $0,$1,$2,$3...$n
# Cada una representanod un parametro o valor

echo "Ejecutado el $(date) usuario actual $(whoami)"
echo "Script de busqueda basica con find"
# -e es para utilizar expresiones con echo
echo -e  "Para continuar ingresa lo siguiente:\n"
read -p "Ingresa tu ruta (relativa o absoluta): " ruta
read -p "Expresion del archivo (ej: *.sh, *.txt, *.csv): " archivo

find "$ruta" -iname "$archivo" -exec sh -c 'echo Scripts: $1' _ {} \;
# el uno sustituye todos los valores encontrados

# el -eq es solo para comparaciones numericas
# las comparaciones deben de estar separadas de los corchetes.
if [[ "$ruta" = "." ]]; then 
    echo "Resultados encontrados en: $(pwd)."
else 
    echo "Resultados encontrados en $ruta"
fi
# wc requiere la entrada de una archivo, asi que le damos la del mismo script
echo "Recuento total $(wc -l < find_extendido.sh)."