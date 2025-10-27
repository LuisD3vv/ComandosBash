#!/bin/bash

# Ejemplo basico de concatenacion

nombre="Carlos"
saludo="Hola, $nombre"
echo "$saludo"
#Concatenar dos variables y mostrar
texto1="Mi variable de texto"
texto2=" a concatenar"
echo $texto1$texto2
#Contatenar dos variables en una tercera
texto1="Mi variable de texto"
texto2=" a concatenar"
mensaje=$texto1$texto2


# Manejo de subcadenas

# Para obtener la longitud de una cadena (o subcadena), se
# utiliza ${#variable}
texto="Esta cadena"
longitud=${#texto}
echo "La longitud de la cadena es: $longitud"
# Para extraer subcadenas se usa la sintaxis
lon=${variable:inicio:longitud}:
# inicio: índice donde comienza la extracción
# longitud: cantidad de caracteres a extraer
texto="Ejemplo de subcadena"
subtexto=${texto:11:3}
echo "Ejemplo de subcadena => $subtexto"


# En caso de omitir la longitud, se extrae hasta el final de la cadena
texto="Ejemplo de subcadena"
subtexto=${texto:8} # empieza desde el 8 hasta el final
echo $subtexto
# Longitud negativa, con el uso de parentesis()
texto="Ejemplo de subcadena"
subtexto=${texto:(-9)}
echo "cadena negativa => $subtexto"


# Ejercicio propuesto


textoEjer="Esta es una cadena para trabajar y ejercitar el manejo de
subcadenas."

pos=${textoEjer:0:19}
ne=${textoEjer:(-12)}
ejer=${textoEjer:(-35):-25}

echo $pos
echo $ne
echo $ejer

# Reemplazar texto solo la primera coincidencia

textoOriginal="Ejemplo original"
reemplazo=${textoOriginal/"Eje"/"culo"}
echo $reemplazo

# Reemplazar texto global
textoOriginal="Introducción a Bash es fácil de aprender, Bash es útil en el
manejo de Linux."
reemplazo=${textoOriginal//"Bash"/"Noe"}
echo $reemplazo

# Si el es espacio a remplazar no se llena, se toma como elementio vacio y se elimina

textoOriginal="Introducción a Bash es fácil de aprender, Bash es útil en el
manejo de Linux."
reemplazo=${textoOriginal/"Noe"} # lo mismo con la doble barra // todas las coincidencias
echo $reemplazo


# Manejo de texto, eliminacion
<<ELIMINAR
En bash hay opciones específicas para eliminar contenido de una
cadena de texto
• Eliminar desde el principio ${variable}#*<valor>
• Eliminar desde el final ${variable} %<valor>*
• La concidencia más corta <operador> ( # o %)
• La coincidencia más larga <operador><operador> ( # o %)
ELIMINAR


#Eliminar desde el principio
#La concidencia más corta
linea_archivo="ruta:/home/usuario/directorio/tarea/archivo.txt"
path_archivo=${linea_archivo#*:}
echo "$path_archivo"
#La concidencia más larga
linea_archivo="ruta:/home/usuario/directorio/tarea/archivo.txt"
nombre_archivo=${linea_archivo##*/}



#Eliminar desde el final
#La concidencia más corta
path_archivo="/home/usuario/directorio/tarea/archivo.txt"
just_path=${path_archivo %/*}
echo "$just_path"
#La concidencia más larga
linea_archivo="ruta:/home/usuario/directorio/tarea/archivo.txt"
etiqueta=${linea_archivo %%/*}



# Convertir cadenas a mayusculas o minusculas

# De mayúsculas a minúsculas
texto="CADENA DE EJEMPLO"
minusculas=${texto,,}

echo "$minusculas"

De minúsculas a mayúsculas
texto="cadena de ejemplo"
mayusculas=${textoˆˆ}

echo "$mayusculas"
