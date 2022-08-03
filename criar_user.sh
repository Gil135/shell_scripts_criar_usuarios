#!/bin/bash


sudo apt update


echo "Criando usuarios"
useradd novo_usuario -c "Novo Usuario" -s /bin/bash -m -p $(openssl passwd -crypt  Senha123)
passwd novo_usuario -e

useradd usuario2 -c "Usuario 2" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd usuario2 -e
