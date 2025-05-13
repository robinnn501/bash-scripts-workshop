#!/bin/bash
read -p "Introduce el nombre del archivo: " file

if [ ! -f "$file" ]; then
  echo "El archivo no existe."
  exit 1
fi

sed '/^\s*#/d' "$file" > temp_file && mv temp_file "$file"
echo "Comentarios eliminados."

read -p "¿Qué palabra o frase quieres buscar? " word
if grep -q "$word" "$file"; then
  echo "La palabra/frase existe."
else
  echo "No se encontró."
fi

read -p "Introduce una frase para añadir al final del archivo: " sentence
echo "$sentence" >> "$file"
echo "Frase añadida."
