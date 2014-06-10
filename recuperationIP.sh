#!/bin/bash

#----------------------------
# file : recuperationIP.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation de l'IP du serveur
#############################
#
#############################

recuperationIP() {
   echo "recuperation de l'IP du serveur : debut"

   # recuperation du fichier contenant la version
   IP=$1

   # hostname -i : affiche l'@ IP du serveur
   #IP=`hostname -i`
   IP=`ifconfig wlan | grep -o "inet adr:[0-9.]*" | cut -f2 -d":"`

   echo "recuperation de l'IP du serveur : fin"
}

