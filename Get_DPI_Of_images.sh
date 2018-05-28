#!/bin/bash

# Script para verificar o DPI da imagem  
# Colocar no diretório com as imagens, dar a permissão 777 via chmod e executar

diretorio=$(ls *.jpg)

for entrada in $diretorio;
do
    #echo $entrada
    echo $entrada ' -  ' $(identify -verbose $entrada | grep Resolution) >> output.txt
done
