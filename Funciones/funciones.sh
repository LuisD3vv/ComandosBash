# En bash existen  dos formas de declarar funciones


# sin la palabra reservada
sumar() {
    # local para que las variables se queden en este ambito
    local resultado=$(($1 + $2))
    echo "Suma $resultado"
}

# con palabra reservada
function resta {
    local resultado=$(($1 - $2))
    echo "Resta $resultado"
}


# se llaman asi

read -p "Ingresa los numeros para calcular " n1
read -p "Ingresa los numeros para calcular " n2

sumar $n1 $n2

# Para guardar el resultado de la funcion
resultado=$(resta $n1 $n2)

# El return es solo para regresar codigos de salida