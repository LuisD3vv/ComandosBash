# Luis Alejandro Aguilar Soberanes
read -p "Ingresa el primer numero: " n1
read -p "Ingresa el segundo numero: " n2

read -p "Ingresa el primera cadena: " c1
read -p "Ingresa el segunda cadena: " c2


if [[ (-n $n1  && -n $n2 )  &&  ( -n $c1  && -n $c2) ]]; then
    echo "Todos los valores se ingresaron"
    if [[ $n1 -gt $n2 ]]; then
        echo "Numero uno $n1 > $n2."
    elif [[ $n2 -gt $n1 ]]; then
        echo "Numero dos $n2 > $n1."
    else
        echo -e "Numero 1 y numero 2 son iguales \nn1 {$n1} = n2 {$n2}"
    fi
else
    echo "no hay valores"
fi

echo "La introducidaas son cadenas son $c1 y $c2"


