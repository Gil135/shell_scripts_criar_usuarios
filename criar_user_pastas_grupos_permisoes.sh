#!/bin/bash

# sudo apt update

# sudo apt install git -Y
# para excluir usuarios
# userdel -r nome_do_usuario

echo "Novos diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Novos grupos "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Novos  usuarios grupo ADM"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt  Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e


echo "Novos  usuarios grupo VEN"

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

echo "Novos  usuarios grupo VEN"

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "usuarios criado !!!"

echo " permisoes de grupos "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " Script finalizado.."



