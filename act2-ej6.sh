#!/bin/bash
if [ "$#" -ne 3 ]; then
  echo "Uso: $0 operacion numero1 numero2"
  exit 1
fi

op=$1
num1=$2
num2=$3

# Validar enteros
if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: Los operandos deben ser enteros."
  exit 1
fi

case "$op" in
  add) result=$((num1 + num2)) ;;
  subtract) result=$((num1 - num2)) ;;
  multiply) result=$((num1 * num2)) ;;
  divide)
    if [ "$num2" -eq 0 ]; then
      echo "Error: División por cero."
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *)
    echo "Operación no válida. Usa add, subtract, multiply o divide."
    exit 1
    ;;
esac

echo "Resultado: $result"
