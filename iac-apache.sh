#!/bin/bash

# INFRAESTRUTURA COMO CODIGO - APACHE SERVER

echo -e "\n"

echo "Atualizando servidor..."

echo -e "\n"

apt-get update && apt-get upgrade -y

echo -e "\n"

echo "Concluido! Instalando Servico Apache..."

echo -e "\n"

apt-get install apache2 -y

echo -e "\n"

echo "Concluido! Instalando Unzip..."

echo -e "\n"

apt-get install unzip -y

echo "Concluido! Baixando arquivos do servidor Web..."

cd /tmp

wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo -e "\n"

echo "Operacao concluida com sucesso!"

echo -e "\n"
