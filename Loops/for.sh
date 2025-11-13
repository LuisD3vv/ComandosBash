#!bin/bash

# Ejemplo con un iterable
array=(1 2 3 4 5 6 7 8 9 10)

for elemento in ${array[*]}; do
    echo $elemento
done

# ejemplo con secuecuencia
for i in $(seq 10); do
    echo $i
done

# con condicion

for i in $(seq 10); do
    if [[ $i%2 -eq 0 ]]; then
        echo "Par $i"
    else
        echo "impar $i"
    fi
done

# otra forma para declarar el bucle for

for ((i=0;i<5;i++))
do
    echo "$i"
done


# Listar contenido de diferentes directorios

FILES="/home/ /usr/local/ /var/"
for file in $FILES
do
echo "Listar directorio: " $file
ls -lh $file
echo ""
done


# Listar todos los archivos de un directorio

for file in *.txt; do
    echo $file
done



for i in {1..5};
do
    echo "Iteracion $i"
done