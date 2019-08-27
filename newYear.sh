#!/bin/bash

bye(){
	clear
	tput cnorm
	exit 0;
}

trap "bye" 2
clear
#tput civis

for (( ; ; )) do
echo -en "\033[0;0H"
echo -en "\n"
figlet Happy New Year! | lolcat
sleep 0.5
done

