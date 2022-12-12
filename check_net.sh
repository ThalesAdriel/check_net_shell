#1/bin/bash

Color_green="\033[1;92m"
Color_default="\033[0;0m"
Color_red="\033[1;31m"

while true
do
conection_status(){
	echo "Conectividade com internet..."
	Ping1=$(ping -c 2 8.8.8.8 > /dev/null);
	if [ $? -eq 0 ];then
	echo -e "${Color_green} |Conectado| ${Color_default}"
	mpg123 '/media/cerberus/AAA/shell/check_net_sound/Accept.mp3'
	else
	echo -e "${Color_red} |Desconectado| ${Color_default}"
	mpg123 '/media/cerberus/AAA/shell/check_net_sound/failed.mp3'
	fi
}
conection_status
sleep 30
done
