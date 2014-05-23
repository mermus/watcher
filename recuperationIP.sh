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

recuperationType() {
   echo "recuperation de l'IP du serveur : debut"

   # recuperation du fichier contenant la version
   IP_SERVEUR=$1

   # hostname -i : affiche l'@ IP du serveur
   IP_SERVEUR=`hostname -i`

   echo "recuperation de l'IP du serveur : fin"
}
