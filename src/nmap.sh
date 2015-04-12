#!/bin/bash 
echo ""
echo "*************************************************"
echo "*************************************************"
echo "        ####### Nmap Easy to use ################            "
echo -n " hello ..! please Enter Target IP in begin :) ?"
read -e IP
echo "****************************************************"
echo -n "Type name of XML output file  "session"?"
read -e SESSION 
echo "****************************************************"
echo " choose Type of Scan : ? " 
echo " 1. Detect Target System OS " 
echo " 2. Agressive Scan " 
echo " 3. Comprehensive Scan " 
echo " 4. Service Scan  " 
echo " 5. Advanced Scan " 
echo "..>" 
read -e Scan 
mkdir /$SESSION
 
case "$Scan" in 
'1') 
nmap -O $IP 
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'2') 
nmap -A $IP -oX $SESSION
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'3') 
nmap -PN $IP -oX $SESSION 
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'4') 
nmap -sV $IP -oX $SESSION
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'5')
echo ".........>Advanced..>" 
echo " A. SYN Scan "
echo " B. UDP Scan "
echo " C. Xmas Scan " 
echo "..>"
read -e Scan;;
esac
case "$Scan" in 
'a')
nmap -sS $IP -oX $SESSION
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'b')
nmap -sU $IP -oX $SESSION
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;
'c')
nmap -sZ $IP -oX $SESSION
echo ""
echo "..........Returning to SubMenu.........."
clear
src/nmap.sh;;

esac 



