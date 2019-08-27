#!/bin/bash

tput civis
p(){
	for (( ; ; )) do
		clear
#		echo -en "\033[0;0H"
		echo "$1"
		sleep 0.1
	done
}

clear
p | lolcat
