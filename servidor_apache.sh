#!/bin/bash
echo "atuliozações..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
echo "abrir pasta tmp"
cd /tmp

echo "baixar repo do GIT para testes"
wget https://github.com/Gil135/page_teste/archive/refs/heads/main.zip
unzip main.zip
cd page_teste-main
echo "Baixando e copiando os arquivos para pata html"
cp -R * /var/www/html/