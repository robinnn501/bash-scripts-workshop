#!/bin/bash
positive=0
negative=0
zero=0

for n in "$@"; do
  if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Advertencia: $n no es un número válido."
    continue
  fi
  if [ "$n" -gt 0 ]; then ((positive++))
  elif [ "$n" -lt 0 ]; then ((negative++))
  else ((zero++))
  fi
done

echo "Positivos: $positive"
echo "Negativos: $negative"
echo "Ceros: $zero"
