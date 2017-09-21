#!/bin/bash
# Esse programa tem por objetivo descobrir o seu IMC
clear #Apaga a tela
echo "Digite a sua altura" #Imprime
read ALTURA #Salva informação na variávle ALTURA
echo "Digite sua massa" #Imprime
read MASSA #Salva informação na variavel MASSA
IMC=$(echo"$MASSA / ($ALTURA*$ALTURA)" | bc)
if [[ $IMC -lt "18"]]
then;
	echo "Ta magrinho"
elif	[[ $IMC -lt "25" ]]; then
	echo "Tá de boa"	
elif	[[ $IMC -lt "30" ]]; then
	echo "Ta com sobrepeso"
elif	[[ $IMC -lt "35" ]]; then
	echo "Ta gordinho"
else
	echo "Ta gordo!"
fi
