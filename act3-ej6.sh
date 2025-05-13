#!/bin/bash
count=0
numbers=()

until [ "$count" -eq 3 ]; do
  read -p "Introduce un número entero: " num
  if [[ "$num" =~ ^-?[0-9]+$ ]]; then
    numbers+=("$num")
    ((count++))
  else
    echo "No es un número válido."
  fi
done

sum=$((numbers[0] + numbers[1] + numbers[2]))
prod=$((numbers[0] * numbers[1] * numbers[2]))
max=$(printf "%s\n" "${numbers[@]}" | sort -n | tail -1)
min=$(printf "%s\n" "${numbers[@]}" | sort -n | head -1)

echo "Suma: $sum"
echo "Producto: $prod"
echo "Mayor: $max"
echo "Menor: $min"o
