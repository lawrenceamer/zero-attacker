#!/bin/bash 
echo " -----------         Mailer         ---------------------

         --------     Zero>>Attack v 1.2       ---------------"


 echo "[~] do know that Social Eng is the most Attack used in these days .." 
echo " " 
echo "*************************************************"
echo -n "type Your Email Address (sender Email) ?" 
read -e semail
echo ""
echo -n "type Target Email Address (reciever Email ) ?"
read -e remail 
echo ""
echo -n "write your body message ..>: " 
read -e body 
echo ""
echo -n "please !!! write a Subject ::>" 
read -e subj
echo ""
echo  "Do you want to attache A file ?" 
echo  "y"
echo  "n" 
echo "...> " 
read -e fol 
case "$fol" in 
'y')
echo -n "Type Path of Selected File "
read -e pu
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
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.gmail.com:465 -a $pu;;
'2')
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.yandex.com:587 -a $pu;;
esac
esac  
case "$fol" in
'n')
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
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.gmail.com:587;;
'2')
sendemail -f $semail -t $remail -m "$body" -u "$subj" -xu $user -xp $pass -s smtp.yandex.com:587;;
esac 
esac




               
