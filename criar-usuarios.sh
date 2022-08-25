#!/bin/bash


echo "Criando usuários...."


useradd user1 -c "Usuário convidado" -s /bin/bash -p $(openssl passwd  1234)
passwd user1 -e -m

useradd user2 -c "Usuário convidado" -s /bin/bash -p $(openssl passwd 1234)
passwd user2 -e -m

useradd user3 -c "Usuário convidado" -s /bin/bash -p $(openssl passwd 1234)
passwd user3 -e -m

useradd user4 -c "Usuário convidado" -s /bin/bash -p $(openssl passwd 1234)
passwd user4 -e - m]

useradd user5 -c "Usuário convidado" -s /bin/bash -p $(openssl passwd 1234)
passwd user5 -e - m


echo "Criacao de usuarios concluida com sucesso!"
