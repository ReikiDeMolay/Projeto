#!/bin/bash
clear					 #Limpar a tela
echo 					#Pular a Linha
echo 'Debian GNU/Linux 8 jessie tty1' 	#Imprima na tela
echo					#Pula a Linha
echo -n 'jessie login: ' 		#Imprima e não pule a linha p$%@
read LOGIN				#Leia e salve na variável
echo -n 'Password:'			#Imprime e não pula a linha p$%@
read -s PASSW				#Leia sem imprimi e salve na var
echo					#Pula linha
if [ $LOGIN == 'vagrant' ]; then	#Se verdadeiro faça
	if [ $PASSW == '123' ]; then	#Se verdadeiro faça
		echo "Seja bem-vindo!!!"#Imprime na tela
	else				#Caso contrário
		echo "Senha Inválida!!!"#Imprima na tela
	fi				#Sai do IF
else					#Caso contrário
	echo 'Usuário Inválido!!!'	#Imprime na tela 
fi					#Sai do IF
