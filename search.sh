#!/bin/sh 
#Maxthecoder
#search.sh
efile=~/source0/employee.db
clear
tput cup 5 1
echo "Enter a name to search for"
tput cup 5 35
read name
echo
grep $name $efile
echo
echo "press ENTER to continue"
read continue
exit