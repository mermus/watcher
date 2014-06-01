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
   IP=`hostname -i`

   echo "recuperation de l'IP du serveur : fin"
}
