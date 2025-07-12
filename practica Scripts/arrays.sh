#!/bin/bash
mia=(dato1 dato2 dato3)
echo ${mia[0]}
echo ${mia[1]}
echo ${mia[2]}
echo ${mia[-1]}
echo ${mia[*]}
echo las cantidad de elemento es ${#mi[@]}
echo los indices disponibles son ${!mia[@]}
unset mia[1]
echo Despues de borrar...
echo Nos quedan los elementos: ${mia[*]}
echo La cantidad de elementos es ${#mia[@]}
echo los indices son  ${!mia[@]}

