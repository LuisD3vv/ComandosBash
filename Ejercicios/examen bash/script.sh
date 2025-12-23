#!/bin/bash

function limpiar() {
    clear
}
# Lissandro FIC

bucle=1

archivo="usuarios.txt"

limpiar
while [[ $bucle -eq 1 ]];
do
    
    echo "---========== Menu de Gestion de Usuarios ==========---"
    echo "1) Cantidad de usuarios"
    echo "2) Listar Usuarios por rol"
    echo "3) Mostrar usuarios mayores de cierta edad"
    echo "4) Agregar Usuario"
    echo "5) Salir"
    read -p ">> " op
    case $op in
    1)
        suma=0
        limpiar
        echo "Cantidad de usuario registrados: "
        while IFS=":" read -r nombre rol edad;
        do
            ((suma++))
        done < $archivo
        echo "-> [$suma] <-"
    ;;
    2)
        limpiar
        echo "Usuarios registrados por rol: "
        while IFS=":" read -r nombre rol edad;
        do
            echo "${rol^} ${nombre^}"
        done < $archivo
    ;;
    3)
        limpiar
        echo "Usuarios mayores a cierta edad (25): "
        while IFS=":" read -r nombre rol edad;
        do
        # saltar cabecera
            if [[ $nombre == "nombre" && $edad == "edad" && $rol == "rol" ]]; then
                continue
            fi
            if [[ $edad -gt 25 ]]; then
                echo "${nombre^}"
            fi
        done < $archivo
    ;;
    4)
        limpiar
        echo "Ingresa los datos del nuevo usuario"
        echo "Nombre del nuevo usuario: "
        read -p ">> " nombrenuevo
        echo "Rol del usuario: "
        read -p ">> " rolnuevo
        echo "Edad del usuario: "
        read -p ">> " edadnueva
        # creando la nueva cadena con el formato correcto.
        nuevousuario="$nombrenuevo:$rolnuevo:$edadnueva"
        echo $nuevousuario >> usuarios.txt
        # buscar si el usuario se encuentra
        verificar=$(cat $archivo | grep $nuevousuario)
        echo "Formato Completo -> $verificar"
        if [[ $? -eq 0 ]]; then
            echo "Se agrego correctamente al usuario '$nombrenuevo'"
        else
            echo "No se agrego el usuario."
        fi
    ;;
    5)
        echo "Saliste."
        exit 1
    ;;
    *)
        echo "Error en la seleccion."
    ;;
    esac
done