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
   REPERTOIRE_VERSION=$1

   # ls -got $REPERTOIRE : on affiche les fichiers classe par rdre de creation de haut en bas 
   # grep \version       : on affiche les fichiers avec le template versionXXX
   # head -1             : on affiche le  fichier  le plus recent
   # awk '{print $6}'    : on affiche le  nom du fichier le plus recent
   REPERTOIRE_VERSION=`ls -got $REPERTOIRE_VERSION | grep \version | head -1 | awk '{print $6}'`
   
   echo "recuperation de la version : fin"
}
