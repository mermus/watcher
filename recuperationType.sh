#!/bin/bash

#----------------------------
# file : recuperationType.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation du Type du serveur
#############################
# 
#############################

recuperationType() {
   echo "recuperation du Type du serveur : debut"

   # recuperation du fichier contenant la version
   $TYPE_SERVEUR=$1

   # uname : on affiche le Type du serveur 
   $TYPE_SERVEUR=`uname`
   
   echo "recuperation du Type du serveur : fin"
}
