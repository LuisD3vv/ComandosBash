#!/bin/bash


# podemos redireccionar desde un comando o desde un archivo

texto=$1

# desde comando
echo $(wc -l $texto > conteo.txt)
echo "Se redirecciono exitosamente"
#desde archivo
#(ver desde afuera)


# salidas 0> 1> 2>(se envian a dev/null)
# o tambien  0>> 1>> 2>>(se envian a dev/null)

# tambien se puede redirigir al mismo tiempo



#Comando > texto 2>&1