#!/bin/sh


magenta="\e[35m"
yellow="\e[93m"
green="\e[32m"

echo -e $magenta

figlet ip_tracker

echo  "$yellow 1 for ip details\n2 for track location\nchoose one option:"
read ip

if [ $ip -eq 1 ]
then
    echo "Enter your target ip :"
     read target_ip
      curl -s https://ipinfo.io/$target_ip

      elif [ $ip -eq 2 ]
then 
    echo "Enter targer ip :"
    read target_location
     curl -s https://ipvigilante.com/$target_location | jq ' .data.country_name , .data.city_name , .data.ipv4 , .data.latitude , .data.longitude'
else
   echo "sorry wrong input..."


     fi


