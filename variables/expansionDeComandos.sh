#!/bin/bash


# El signo de dólar ($) para expansión de variables.
# • El acento grave ‘ para sustitución de comandos.
# • El backslash (\) si se usa para escapar caracteres.
# • El asterisco (*) para expansión de comodines

luis=10

# expandir comandos
signodolar=$(( $luis + 5))
expansion=$(cat $luis)
echo "$signodolar y $expansion"
# sustituir comando, es una forma un poco mas obsoleta
backtick=`date`
echo "$backtick"