# break
for i in {1..10}; do
    if [ $i -eq 5 ]; then
    break # Sale del bucle cuando i es 5
    fi
    echo "Número: $i"
done

# continue
for i in {1..5}; do
    if [ $i -eq 3 ]; then
    continue # Salta la iteración cuando i es 3
    fi
    echo "Número: $i"
done