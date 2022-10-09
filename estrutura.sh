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

useradd carlos -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM -e
useradd maria -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM -e
useradd joao -c "ADM" -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM -e

useradd debora -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN -e
useradd sebastiana -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN -e
useradd roberto -c "Vendas" -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN -e

useradd josefina -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC -e
useradd amanda -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC -e
useradd rogerio -c "Sec" -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC -e

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





