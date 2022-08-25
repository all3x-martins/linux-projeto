echo "Criando diretórios....."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de usuários....."


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários....."


useradd mario -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd olivia -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
useradd junior -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN

useradd vanessa -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC


echo "Especificando permissões dos diretórios....."


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Concluido!!"
