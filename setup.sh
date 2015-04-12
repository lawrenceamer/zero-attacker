#!/bin/bash 
#all files and scripts are coded in bash by Lawrencethepentester just for educational purposes 
# contact me at :zeroattck@gmail.com  

BLUE=$(tput setaf 6 && tput bold)
echo $BLUE" ---------------Welcome with you in Zero>>attacker  installation Script---------------------- " 

echo " -----------      send bugs to : zeroattck@gmail.com -----------------------------------"
echo $BLUE" $ make Files executable .... " 
chmod +x ZT.sh 
echo ".....Building Files ...." 
apt-get install sendemail 
apt-get install mitmf 
echo "......installed SuccessFully ....."
echo ".... mitmf script is successfully installed ... "  
echo " please wait ..... " 
chmod +x  src/mail.sh 
echo " mailer ...Success " 
chmod +x src/msf.sh 
echo " backdoor Script ...Success "
chmod +x src/mitm.sh
chmod +x src/mitmf.sh
echo " mitm Script .. success "  
chmod +x src/my.sh 
echo " Network sniffer ..Success " 
chmod +x src/exploit.sh 
chmod +x src/exploit2.sh 
chmod +x src/exploit3.sh 
echo " Browser Attack ..Success " 
chmod +x src/nmap.sh 
echo " Nmap Easy to run ... Success " 
echo -n "Enter the path to install your Files in ? " 
read -e ipa
mkdir $ipa/ZT
mkdir $ipa/ZT/src 
cp ZT.sh -t $ipa/ZT 
cp src/mail.sh -t $ipa/ZT/src 
cp src/nmap.sh -t $ipa/ZT/src 
cp src/exploit.sh -t $ipa/ZT/src 
cp src/exploit2.sh -t $ipa/ZT/src 
cp src/exploit3.sh -t $ipa/ZT/src 
cp src/mitm.sh -t $ipa/ZT/src
cp src/mitmf.sh -t $ipa/ZT/src  
cp src/msf.sh -t $ipa/ZT/src 
cp src/my.sh -t $ipa/ZT/src 
echo " ...Done ..." 

echo "************************************************" 
echo " All Files have been configured Successfully ...Enjoy " 
