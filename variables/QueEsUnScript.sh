#!/bin/bash 
#shebang

# Los scripts en bash pueden soportar estructuras de control como condicionales y bucles.

# Tales como esta

if [ -d "/home/lissandro" ]; then
    echo "Este directorio existe"
else
    echo "No existe este directorio"
fi

# tambien ciclos

for i in {1..10}; do
    echo "iteracion $i"
done

# se pueden ejecutar los scripts de dos formas bash o
# o con el shebang ./archivo
