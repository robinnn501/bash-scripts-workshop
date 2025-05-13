#!/bin/bash
read -p "Introduce un número entero: " num
if [ "$num" -eq 0 ]; then
  echo "El número es cero"
else
  echo "El número NO es cero"
fi
