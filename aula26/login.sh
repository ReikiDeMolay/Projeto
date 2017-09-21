#!/bin/bash

#Função que faz entrar
entra(){
	echo 'Você entrou'
	exit 0
}

#Função que faz sair
sai(){
	sleep 3
	
}

#Programa principal
clear ; echo					
echo 'Debian GNU/Linux 8 jessie tty1' 
echo ;

while true ; do
	read -p 'jessie login: ' LOGIN	
	read -s -p 'Password:' PASSW
	echo				
	[ $LOGIN == 'vagrant' ] && [ $PASSW == '123' ] && entra || sai 
done

