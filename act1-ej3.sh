#!/bin/bash
read -p "Dime el nombre de una variable global (ej: HOME, USER, PATH): " varname
eval echo "El valor de $varname es \$$varname"
echo "Argumentos: $@"
echo "Último valor de retorno: $?"
echo "PID de la shell actual: $$"
