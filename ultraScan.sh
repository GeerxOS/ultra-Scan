#!/bin/bash

clear
#colores
rojo="\033[1;31m" 
amarillo="\033[1;33m"

echo -e $rojo "                                                                                                                   "

 
echo "                                                                                  "
echo " ██╗   ██╗██╗  ████████╗██████╗  █████╗       ███████╗ ██████╗ █████╗ ███╗   ██╗ "
echo " ██║   ██║██║  ╚══██╔══╝██╔══██╗██╔══██╗      ██╔════╝██╔════╝██╔══██╗████╗  ██║ "
echo " ██║   ██║██║     ██║   ██████╔╝███████║█████╗███████╗██║     ███████║██╔██╗ ██║ "
echo " ██║   ██║██║     ██║   ██╔══██╗██╔══██║╚════╝╚════██║██║     ██╔══██║██║╚██╗██║ "
echo " ╚██████╔╝███████╗██║   ██║  ██║██║  ██║      ███████║╚██████╗██║  ██║██║ ╚████║ "
echo "  ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝      ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝ "

echo "Check out my other scripts! :D!"
echo " "
echo "https://github.com/GeerxOS/DDoS"
echo " "
echo "https://github.com/GeerxOS/msf-shell"     
echo " "
echo "+-> Escribe el dominio o la ip del host:"
read -p "root@$USER:~# " ip

echo -e $amarillo " "
echo "Ok! "
sleep 0.4
echo "Target: $ip"
sleep 0.4
echo "Scans to perform: 10"
sleep 0.4
echo "..."
echo " "

# escaneos :)

echo -e $amarillo
figlet -f banner sslscan
sslscan $ip

echo -e $amarillo
figlet -f banner nmap
nmap $ip

echo -e $amarillo
figlet -f banner whatweb
whatweb $ip

echo -e $amarillo
figlet -f banner davtest
davtest -url $ip

echo -e $amarillo
figlet -f banner fierce
fierce --domain $ip

echo -e $amarillo
figlet -f banner unicornscan
unicornscan $ip

echo -e $amarillo
figlet -f banner dmitry
read -p "Outfile: " outfile
dmitry -winspef -o $outfile.txt $ip

echo -e $amarillo
figlet -f banner nikto
nikto -h $ip

echo "Metasploit scans..."

figlet -f banner metasploit scans

python3 msf_scans.py

echo "good bye"

# si copias y pegas al menos dejas creditos no?:|
 
                                                                          

                      
                                                                                                           
                                                                                                           


