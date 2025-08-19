#!/bin/bash

nal=$(( ($RANDOM % 30 ) + 1))

# con and

if [ $nal -gt 20 -a $nal -lt 30 ] ; then
    echo "Numero dentro del rango" $nal
else
    echo "Numero fuera del rango" $nal
fi

# con or


if [ $nal -ge 20 -o $nal -lt  30 ] ; then
    echo "Numero correcto" $nal
else
    echo "Numero fuera del rango" $nal
fi
