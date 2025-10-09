#!/bin/bash

# Largo de la cadena

nombre="Luis Alejandro Aguilar"
echo "El largo de la cadena es: ${#nombre}"

# Mostrar solo el apellido

apellido=${nombre:15} # sin segundo parametro es como un desde
echo $apellido

#> Trabajar con una ruta

ruta="/home/lissandro/escritorio/main.py"

nombreArchivo=${ruta##*/}
echo "El nombre del archivo es $nombreArchivo"

directorio=${ruta%/*}
echo "El directorio es $directorio"

# La diferencia es que una elimina la coindicencia mas corta y la otra la coindicencia mas larga


url="https://openai.com/research/chatgtp"

# eliminar el protocolo
sinProtocolo=${url:7}
soloOpenia=${url#*/}

# aqui son ejercicios para recibir

dia=$1
mes=$2
anoo=$3

if [ $# -eq 0 ]; then
    echo "No se recibierona argumentos"
else
    echo "La cantidad de argumentos es $#"
    echo "El ultimo parametro es $anoo"
    echo "La salida es $?, por stdout"
    echo "Los datos introducidos (el conjunto) son $@"
fi

# Crea una variable llamada mensaje


mensaje="Hola mundo"
echo ${mensaje/"mundo"/"Bash"}

echo "El mismo mensaje pero en mayusculas ${mensaje^^} y ahora en minusculas ${mensaje,,}"

# para solo capitalizar es con un solo operador es decir text^ y text, Hola hOLA

fecha=$(date +%d-%m-%y)

# lo que proecesa cut es un archivo o entrada estandar, no como tal el valor de una variable
diaseparado=$( echo $fecha | cut -d'-' -f1)
messeparado=$( echo $fecha | cut -d'-' -f2)
anoseparado=$( echo $fecha | cut -d'-' -f3)

echo "dia: $diaseparado, mes: $messeparado, ano: $anoseparado"


# Script desde archivo con read

read -p "Ingresa el nombre del archivo: " archivo #main.py
tieneExtension=${archivo#*.}

# al tratar con strings se ponen entre comillas las variables, hay un error aqui
echo $tieneExtension # *.* significa cualquier cosa que tenga al menos un punto, es un comodin
if [ "$tieneExtension" != *.* ];then
    echo "El archivo no tiene extension"
else
    echo "El nombre sin extension ${archivo%.*}"
    echo "extension $tieneExtension"
fi

# tratar con expansion

valores=$(ls | wc -l)
if [[ $valores -eq 0 ]]; then
    echo "No hay archivos"
elif [[ $valores -eq 1 ]]; then
    echo "hay un archivo"
else
    echo "hay $valores en archivos"
fi

recorrido=$(ls)

echo " "
for archivo in $recorrido;
do
    echo "$archivo"
done

# SUBstring de manera negativa, indice desde el 0


# es muy intuitivo (-n) para recorrer hacia atras, luego +n para "recuperar hacia adelante"

textito="Holasoylissandro"
echo ${textito:(-12):3} # da doce saltos para la izquierda y tres para la derecha


# salida estandar

<<SALIDAS
0 STDOUT > salida 
1 STDIN < entrada
2 STDERR 2> salida errores

se pueden usar para redireccionarse a un archivo

echo "culo.txt" 1>> "panocha.txt" 2>> erroralaverga.log

entrada y salida

# la salida va al archivo, y la salida de archivo va a texto.txt
./archivo.sh < salida.txt > texto.log
SALIDAS

# Con valores aritmeticos

<<BCALAVERGA
Calculadora bien pro, se necesita un echo para usarla bien machin

no ocupa parentesis, bc lo interpreta
echo 5.5 + 5.5 |  bc -l

el l es para mas placer y operaciones pro

y tambien se puede redondear a la verga, el scale es exclusivo del bc 

echo "scale=2; 5.5 + 4 " |  bc -l

BCALAVERGA

<<LETALV
otro operador de mierda mas

no requiere $ para las variables

let variable=expresion

LETALV

<<EXPANSIONARITMETICA

a=5
b=1
c=$(( a+b )), no necesita como tal $

EXPANSIONARITMETICA


<<expr
tambien jala para strings

Es necesario escapar algunas operacionoes con contrabarra

como aqui, tambien al utilizar el orden de las operaciones se ocupan espacar los parentsis

\( algo asi \)
echo $(expr 4 \* 4)


expr