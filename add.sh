#!/bin/sh 
#Maxthecoder
#add.sh
trap "rm ~/tmp/~ 2> /dev/null; exit" 0 1 2 3
efile=~/source0/employee.db
echo "Please enter the contact name: "
read name
if grep "$name" $efile
then
echo "that name exists! now closing! "
exit
fi
echo "Please enter the email: "
read email
if grep "$email" $efile
then
echo "that email exists! now closing! "
exit
fi
echo "Please enter the while address (street, city, state, zipcode): "
read address
if grep "$address" $efile
then
echo "that address exists! now closing! "
exit
fi
echo "Please enter the phone number: "
read name
if grep "$phone" $efile
then
echo "that phone number exists! now closing! "
exit
fi
echo "$name:$email:$address:$number" >> $efile
clear
exit