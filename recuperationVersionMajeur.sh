#!/bin/bash

#----------------------------
# file : recuperationVersion.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation de la version majeur du logiciel
#############################
# version.txt
#############################

recuperationVersionMajeur() {
   echo "recuperation de la version majeur : debut"

   # recuperation du fichier contenant la version
   VERSION_MAJ=$1
   VERSION_MAJ=`ls -r /axihome/local/axigate/axilink/templates_fr/versions/versionaxigate/ | cut -f1,2 -d"." | head -1`

   echo "recuperation de la version majeur : fin"
}
