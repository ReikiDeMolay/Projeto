#!/bin/bash
SENHA="132"
USER="Pedro"
PASS="root"
criar(){
	for USUARIOS in $(cat users.txt); do
		useradd -m -s /bin/bash $USUARIOS
		(echo $SENHA ; echo $SENHA) | passwd $USUARIOS
	done
}

remover(){
	for USUARIOS in $(cat users.txt); do
	userdel -r $USUARIOS
	done
}

menu(){
	clear
	echo; read -p "Digite o usuário:" USUARIO
	read -p "Digite sua senha: " PASSWORD
	validacao
}

validacao(){
[ $PASSWORD == $PASS ] && [ $USUARIO == $USER ] && remover || menu
}
menu
