#!/bin/bash

for i in $(seq 20); do
    if [[ $i%2 -eq 1 ]]; then
        echo "impares -> $i"
        continue
    fi
    if [[ $i -gt 15 ]]; then
        echo "Mas grande que 15 -> $i"
        break
    fi
done