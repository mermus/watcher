#!/bin/bash

#----------------------------
# file : recuperationConnecteur.sh
#
# TODO : ... Claudie
#----------------------------


# recuperation des connecteurs
#############################
# aspen.env
#############################
# - processus
# - port(s)
# - ip server
# - etat
#----------------------------

recuperationConnecteur() {
   echo "recuperation du connecteur : debut"

   # recuperation du fichier contenant les connecteurs
   FICHIER=$1
   echo $FICHIER

   echo "recuperation du connecteur : fin"
}

