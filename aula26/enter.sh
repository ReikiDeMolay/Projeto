#!/bin/bash
entra(){
	echo "Acesso permitido"
	exit 0
}
sai(){
	sleep 3
}

clear ; echo
echo 'Debian GNU/Linux 8 jessie tty2'
echo ;

while true ; do
	read -p 'Digite o usuário: ' LOGIN
	read -s -p 'Password: ' PASSWD
	[ $LOGIN == 'vagrant' ] && [ $PASSWD == 'root' ] && entra || sai
done


