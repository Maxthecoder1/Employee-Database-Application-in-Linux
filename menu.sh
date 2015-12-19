#!/bin/sh 
#Maxthecoder
#menu.sh
#delete portion has bug that I will fix

trap "rm ./r 2> /dev/null; exit" 0 1 3
efile=employee.db
export efile
export decision
loop=y
while test $loop = "y"
do 
clear
tput cup 3 12; echo "Welcome to the EMPLOYEE DATABASE APLLICATION"
tput cup 4 12; echo "Here are the options: "
tput cup 6 9; echo "1-Print the database list"
tput cup 7 9; echo "2-Add EMPLOYEE"
tput cup 8 9; echo "3-DELETE EMPLOYEE"
tput cup 9 9; echo "4-SEARCH DATABASE"
tput cup 10 9; echo "5-view employee list"
tput cup 12 9; echo "6-quit"
read choice || decision
case $choice in
1) ./print.sh;;
2) ./add.sh;;
3) tput cup 16 4; echo "Delete Record"
   tput cup 17 4; echo "Name: "
   tput cup 17 11; read namee
   tput cup 18 4; echo "Accept? y or n : "
   tput cup 18 27; read accept
   if test $accept = "y"
   then
   sed /$namee/d $efile > r
   cp r $efile
   rm r
   fi
;;
4) ./search.sh;;
5) clear; less $efile;;
6) clear; exit ;;
*) tput cup 14 4; echo "Bad Input, Please Try Again"; read choice
esac
done