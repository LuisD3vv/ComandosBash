### Buscar soluciones no memorizar x
## Es decir, que comando hace esto, y junto con esto, puedo hacer eso?
# De esta manera aprendemos a resolver problemas mas inteligente y por pasos, en ves de a la brava.

--El dia de hoy repase comandos de filtrado de texto como grep y cut
---#Grepa es para filtrado de lineas y cut de columnas.

El comando tail -n +n, no puede ayudar a empezar de cierta linea a cierta linea junto con head -n 

con rev, podemos darle la vuelta a las columnas y tambien a los caracteres, esto nos sirve para poder tener un control mas
amplio sobre las columnas, util si queremos convertir la ultima columna en la primera o viseversa

sort y uniq son dos comandos que van de la mano, ya que uniq no funciona muy bien sin sort, ya que 
solo detecta lineas iguales si esta una debajo de otra.

Las tuberias nos ayudan a redireccionar la saalida de un comando para que se convierta en la entrada de 
otro comando

con apt y sus opciones podemos tener un control sobre los repositorios y gestion de archivos del sistema

Los enlaces son apuntadores a la direccion del fichero, el enlace simbolico o duro, es un puntero a la
informacion que se guarda en el disco, mientras que los blandos apuntan a una ruta.

los directorios no pueden ser enlaces duros porque no contienen informacion, porque en si no son archivos
o que tienen dentro si pero un directorio n

Para poder utilizar expresiones regulares con grep necesitamos utilizar el -E (aun no lo veo en el curso)

Se puede redirijir la salida de errores hacia un archivo o eliminarlos y utilizar la salida sin errores
para utilizarla en la salida estandar

cat, more, y less, son comandos que nos ayudan a mostrar informacion en la salida estandar de una archivo
con los operadores de redireccion > >>

mv y copy, para copiar y mover, o en el mismo sitio renombrar

#para entrar en superusuario(en ubuntu) es con sudo o sudo -i o su comando

touch y echo nos sirven para crear archivos o actualizar las marcas d etiempo y meterle informacion 
respectivamente

ls, puede listar de forma recursiva con -R

Los permisos se pueden aplicar de forma independiente o a todos al mismo tiempo, dependiendo de la sintaxis
que se vaya a utilizar en el momento, numerica 777 o ugo(user,group,others)

los simbolos de inicio y final, para encontrar coincidencias son estos ^inicio fin$ , en ese orden asi mismo
si se desea una palabra que empiece y termine especificamente como queramos es con ^Luis$

locate y find nos ayudan a localizar

el comando instalado dfc, nos da una vista mas humana sobre el uso y memoria que estan utilizando las diferentes
particiones del sistema

locate es un comando nos que nos ayuda a localizar una archivo o fichero, es una busqueda muy general
y carece de exactitud, cuenta con metodos como i,r y c, ignora,regaex y cuenta 

find ruta opciones nombre tipo

rm archivos y rmdir -r directorios con -i para solicitar confirmacion

fallocate -l tamaño nombre_archivo
