#!/bin/bash

#----------------------------
# file : recuperationVersion.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation de la version du logiciel
#############################
# version.txt
#############################

recuperationVersion() {
   echo "recuperation de la version : debut"

   # recuperation du fichier contenant la version
   FICHIER=$1
   echo $FICHIER

   echo "recuperation de la version : fin"
}
