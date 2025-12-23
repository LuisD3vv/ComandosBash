while IFS= read -r nombre rol edad;
do
        echo $linea
        $linea 
        echo "$nombre"
        echo "$rol"
        echo "$edad"
done < usuarios.txt