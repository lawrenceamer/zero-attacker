#!/bin/bash 
echo ""
echo " 
      -------------- Zero >> Attacker  --------------------
---------------      MITM Attacking    -------------------------

"
echo " please choose : " 
echo " 1. Ettercap Automatic MITM"
echo " 2. Mitmf Script "
echo " $>"
read -e mitm

case $mitm in 
'1') 
src/my.sh;;

'2')
src/mitmf.sh;;


esac 

