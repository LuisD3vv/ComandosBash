#!/bin/bash
#comentar y descomentar set -o
set -o pipefail
cat 5_existo.txt | grep "texto" | sort
echo "Pipeline completado"
echo "$?"