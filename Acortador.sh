#!bin/bash

# CREATED X SHARKCODE

# APRENDIZ
clear
#               COLORES RESALTADOS
negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
#                 COLORES BAJOS
black="\e[0;30m"
blue="\e[0;34m"
green="\e[0;32m"
cyan="\e[0;36m"
R="\e[0;31m"
purple="\e[0;35m"
yellow="\e[0;33m"
W="\e[0;37m"
#                  BANNER DE TEXTO UwU

URLCAMUFLE(){
	sleep 0.5
	clear
echo -e "
██╗   ██╗██████╗ ██╗     ███████╗██╗  ██╗ █████╗ ██████╗ ██╗  ██╗URL
██║   ██║██╔══██╗██║     ██╔════╝██║  ██║██╔══██╗██╔══██╗██║ ██╔╝ CORT
██║   ██║██████╔╝██║     ███████╗███████║███████║██████╔╝█████╔╝Hacking
██║   ██║██╔══██╗██║     ╚════██║██╔══██║██╔══██║██╔══██╗██╔═██╗ Etic
╚██████╔╝██║  ██║███████╗███████║██║  ██║██║  ██║██║  ██║██║  ██╗ ing.
 ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝social
                         created by sharkcode
" | lolcat
}

URL(){
            URLCAMUFLE
echo -e -n "${cian}
╔═════════════════╗
█ ${blanco}INGRESE UNA URL ${cian}█
╚═════════════════╝
┃
└═>>> "${blanco}
read -r URL
sleep 0.5
}
#
# URLSHARK.........
#
Preguntas(){
echo -e -n "${cian}
╔════════════════════════╗
█ ${blanco}¿DESEA ACORTAR SU URL? ${cian}█
╚════════════════════════╝
┃    ╔═══════════════════╗
└═>>>█ [${verde}01${cian}] ┃ ${blanco}SI ACORTAR ${cian}█
┃    ╚═══════════════════╝
┃    ╔═══════════════════╗
└═>>>█ [${verde}02${cian}] ┃ ${blanco}NO ACORTAR ${cian}█
┃    ╚═══════════════════╝
┃
└═>>> "${verde}
read -r Preguntas

if [[ "${Preguntas}" == "1" || "${Preguntas}" == "01" ]]; then
        SHORT=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${URL})
        echo -e "${SHORT}" >> url.txt
        PROTOCOL=$(tail -n1 url.txt | cut -d "/" -f1)
        DOMAIN=$(tail -n1 url.txt | cut -d "/" -f4)
elif [[ "${Preguntas}" == "2" || "${Preguntas}" == 02 ]]; then
        sleep 1.5
        echo -e "${URL}" >> url.txt
        PROTOCOL=$(head -n1 url.txt | cut -d "/" -f1)
        DOMAIN=$(head -n1 url.txt | cut -d "/" -f3)
else
echo -e "${cian}
╔═══════════════════╗
█ ${rojo}OPCIÓN INCORRECTA ${cian}█
╚═══════════════════╝
"${blanco}
	sleep 2
	URLCAMUFLE
	Preguntas
fi
}



Acort(){
echo -e -n "${cian}
╔════════════════════════════╗
█ ${blanco}PONGA PALABRAS PARA LA URL ${cian}█
╚════════════════════════════╝
┃
└═>>> "${blanco}
read -r TEXT
sleep 0.5
WORDS=$(echo -e "${TEXT}" | tr ' ' '-')

if [[ "${Preguntas}" == "1" || "${Preguntas}" == "01" ]]; then
echo -e "${cian}
╔══════════════╗
█ ${verde}URL SHAKCODE ${cian}█
╚══════════════╝
┃
└═>>>${blanco} ${PROTOCOL}//${WORDS}@${DOMAIN}"
fi
}
#
#          FINALIZANDO
#
Guardando(){
if [[ "${Preguntas}" == "1" || "${Preguntas}" == "01" ]]; then
        rm url.txt
echo -e "${URL} => ${PROTOCOL}//${WORDS}@is.gd/${DOMAIN}" >> sharkcode.txt
else
	rm url.txt
	echo -e "${URL} => ${PROTOCOL}//${WORDS}@${DOMAIN}" >> sharkcode.txt
fi
echo -e "${cian}
╔════════════════════════════╗
█ ${blanco}URL GUARDADA EN EL ARCHIVO ${cian}█
╚════════════════════════════╝
┃
└═>>>${verde} sharkcode.txt
"${blanco}
}
#
# DECLARED FUNCTIONS
#
URLCAMUFLE
URL
Preguntas
Acort
Guardando
#CREATED BY SHARKCODE EXPLOTA TU IMAGINACION..
