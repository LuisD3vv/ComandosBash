#!/bin/bash

read -p "ingresa un dia de la semana." dia

case $dia in 
	"Lunes")
	  echo "Este es Lunes"
	;;
        "Martes")
       	  echo "Este es martes."
        ;;
    	"Miercoles")
          echo "Este es Miercoles."
        ;;
	"Jueves")
	  echo "Este seguramente es jueves"
	;;
	"Viernes")
	  echo "Viernnes porfin"
	;;
    *)
        echo "Dia desconcido pues (me dio hueva el sabdo y el domingo)."
        ;;
esac

