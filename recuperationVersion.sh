#!/bin/bash

#----------------------------
# file : recuperationVersion.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation de la version du logiciel
#############################
# versionaxigate.txt
#############################

recuperationVersion() {
   echo "recuperation de la version : debut"

   # recuperation du fichier contenant la version
   REPERTOIRE_VERSION=$1

   # Affiche le fichier versionaxigate.txt qui contient la version la plus recent installe sur le serveur
   REPERTOIRE_VERSION=`cat $PLTDIR/versionaxigate.txt`

   echo "recuperation de la version : fin"
}
