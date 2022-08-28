#!/bin/bash

echo "Atualizando o servidor..."

apt-get update

apt-get upgrade -y

echo "Concluido!!"

echo "Instalando aplicacoes..."

apt-get install apache2 -y

apt-get install unzip -y

echo "Concluido!!"

echo "Realizando configuracoes..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html

echo "Concluido!!"

