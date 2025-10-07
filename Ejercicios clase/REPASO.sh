# Esta linea le indica al sistema que interprete utilzar


<<docs
El shebang permite especificar que debe intepretar el archivo
es  decir, si un script no tiene shebang, seria necesario ejcutar
explicitamente el script con el interprete bash script.sh

a demas de que utilizar el shebang aumenta la portabilidad
y permite la ejecucion directa de scripts


docs

#!/bin/bash


# opciones de read conocidad -r(detectar barras) s(ocultar escritura) p(escrbir texto, com input en otros lenguajes) 

read -p "Ingresa tu nombre: " nombre

# Argumentos de los scripts

<<docs2
Los scripts pueden aceptar parametros desde la linea de comandos, estos son accesibles
desde el script mediante $, seguido de un valor numerico

$1 $2 $3 $...


docs2

# longitud de una cadena
longitud=${#nombre}
parametrosConsola=$#
conjuntoDeParametros=$@
# es decir si es 0,1 u error 2
verificarSalida=#? 

echo "Hola $nombre, la longitud de $nombre es: $longitud"


# tambien podemos redirigir la salida estandar y de errores

luis=$(ls -R > salida.txt 2>> error.txt)

# a un mismo archivo

lui2=$(ls -R > salida.txt 2>&1 error.txt)

# sintaxis find, puede ser ruta explicita o actual con .

# Tambien podemos uscar con -d o -f, para directorios y archivos, obvio se puede usar comodines

# al igual que exec {} ";"

buscar=$(find /home/lissandro/Descargas -name "*.txt")


# ejemplo real, busca en el directorio actual todo lo que termine en sh y

# si hay coindicencias le cambia el nombre

cambiarNOmbre=$(find . -iname "*.sh" -exec mv {} meCambio \;)

# cadena de comandoss
secuencia=${touch nombre.txt; cat "$nombre" > nombre.txt}