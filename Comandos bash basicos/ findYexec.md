# forma basica del comando find

## Sintaxis basica find [ruta] [opciones] [accion]

### opciones tenemos

>find ruta -size
>find ruta -mtime -(dia aqui)
>find ruta -exec -comando "{}" que hara  /(backslash no este);
>find ruta -name .txt -delete

#### de tipos tenemos estos

>-name
>-iname
>-file o -f
>-d o directory

##### puede recibir multiples rutas

>find /etc/ /home/user/ -iname "password" -exec rm "{}" \;
