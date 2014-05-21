#!/bin/bash

#----------------------------
# file : recuperationConnecteur.sh
#
# TODO : ... Claudie
#----------------------------


# recuperation des connecteurs

recuperationConnecteur() {
   echo "recuperation du connecteur : debut"

   # recuperation du fichier contenant les connecteurs
   # REPERTOIRE_CONNECTEUR=$1
   
   # cd $PLTDIR/scripts/ : permet de ce placer au niveau du repertoir ou ce trouve le fichier contenant les connecteurs
   # more                : permet d'afficher à l'écran les informations contenue dans le fichier executable processList
   # REPERTOIRE_CONNECTEUR=`more $PLTDIR/scripts/processList`
   FICHIER=$1     # A supprimer pour le test
   echo $FICHIER  # idem

   echo "recuperation du connecteur : fin"
}

