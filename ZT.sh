#!/bin/bash
#Email : zeroattck@gmail.com  
#coder : lawrencethepentester 

GREEN=$(tput setaf 2 && tput bold)
BLUE=$(tput setaf 6 && tput bold)
echo $BLUE"   

[~] Zero >> Attacking Script v 1.2 
______________________________________

[#]tested on : Kali Linux 

---------------------------------------------------------------        
          [+] by LawrenceThePentester     

          [+] @ : zeroattck@gmail.com 
      
          [+] thanks to : http://secomunity.com "
echo "---------------------------------------------------------"
echo "[~] This script is used for educational purposes , the coder is not responsible for any harmfull results " 
echo "---------------------------------------------------------"
echo " " 
echo " "
sleep 3
echo " [!]choose a number below :"
echo ""
echo $GREEN"1. Man in Middle Attack[mimt] " 
echo ""
echo $GREEN"2. Backdoors Generator[metasploit] "
echo "" 
echo $GREEN"3. Client Side Attacks [metasploit] " 
echo ""
echo $GREEN"4. Nmap Scanning Tool   " 
echo ""
echo $GREEN"5. Mailer Spammer "
echo ""
echo $GREEN"6. Quit " 
echo ""
echo -n ">>>>"
read -e setup
case "$setup" in 
'1') 
src/mitm.sh;;
'2') 
src/msf.sh;;
'3') 
src/exploit.sh;;
'4') 
src/nmap.sh;;
'5') 
src/mail.sh;;
'6')
exit
esac 

 
