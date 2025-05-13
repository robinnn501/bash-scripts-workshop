#!/bin/bash
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 archivo protocolo"
  exit 1
fi

file=$1
protocol=$2

if [[ "$file" != *.txt && "$file" != *.csv ]]; then
  echo "El archivo debe ser .txt o .csv"
  exit 1
fi

if [ ! -f "$file" ]; then
  echo "El archivo no existe."
  exit 1
fi

count=$(grep -i -c "$protocol" "$file")
if [ "$count" -eq 0 ]; then
  echo "No se encontró el protocolo $protocol en $file."
else
  echo "Se encontraron $count líneas con el protocolo $protocol en $file."
fi
