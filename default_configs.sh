#!/bin/bash
echo "Instalando openssl..."
apt install openssl

echo "Criando usuários padrão..."

useradd carlos -c "Carlos Santos" -s /bin/bash -m -p $(openssl passwd -6 carlos@Trocar123)
passwd carlos -e

useradd marias -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -6 marias@Trocar123)
passwd marias -e

useradd joaofe -c "Joao Ferreira" -s /bin/bash -m -p $(openssl passwd -6 joaofe@Trocar123)
passwd joaofe -e

useradd debora -c "Debora Garcia" -s /bin/bash -m -p $(openssl passwd -6 debora@Trocar123)
passwd debora -e

useradd sebast -c "Sebastiana Barbosa" -s /bin/bash -m -p $(openssl passwd -6 sebast@Trocar123)
passwd sebast -e

useradd robert -c "Roberto Souza" -s /bin/bash -m -p $(openssl passwd -6 robert@Trocar123)
passwd robert -e

useradd josefi -c "Josefina Chagas" -s /bin/bash -m -p $(openssl passwd -6 josefi@Trocar123)
passwd josefi -e

useradd amanda -c "Amanda Silva" -s /bin/bash -m -p $(openssl passwd -6 amanda@Trocar123)
passwd amanda -e

useradd rogeri -c "Rogerio Barros" -s /bin/bash -m -p $(openssl passwd -6 rogeri@Trocar123)
passwd rogeri -e

echo "criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adicionando usuários aos grupos..."
gpasswd -M carlos,marias,joaofe GRP_ADM
gpasswd -M debora,sebast,robert GRP_VEN
gpasswd -M josefi,amanda,rogeri GRP_SEC

echo "criando diretórios..."
mkdir /publico -m 777
mkdir /adm -m 770
mkdir /ven -m 770
mkdir /sec -m 770

echo "Configurando owners dos diretórios..."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo
echo "Finalizado!"
