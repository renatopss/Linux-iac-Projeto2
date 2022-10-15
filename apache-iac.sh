#!/bin/bash
echo "Verificando atualizações..."
apt update

echo "Aplicando Atualizações..."

apt upgrade -y

echo "Instalado aplicação apache..."

apt install apache2 -y

echo "Instalando descompactadro Unzip..."

apt install unzip -y

echo "Copiando arquivos da aplicação no git...."

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "copiando aplicação para pasta do apache..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Iniciando Serviço Apache..."

systemctl start apache2

echo "Sistema pronto!"
