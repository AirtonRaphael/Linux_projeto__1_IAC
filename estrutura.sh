#!/bin/bash

# criando os diretórios.
echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados"

echo "Criando grupos de usuarios..."

# criação dos grupos.
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados"
#cria os usuarios e adiciona aos grupos

echo "Criando usuarios"

useradd carlos -m -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM
useradd maria -m -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM
useradd joao -m -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM

useradd debora -m -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN

useradd josefina -m -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC

# força o usuario a mudar a senha
passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e


echo "Usuarios criados"

echo "Modificando as permissões"

chown root:root /publico
chmod 777 /publico/

chown root:GRP_ADM /adm
chmod 770 /adm/

chown root:GRP_VEN /ven
chmod 770 /ven/

chown root:GRP_SEC /sec
chmod 770 /sec/

echo "Fim."





