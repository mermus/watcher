#!/bin/sh

#----------------------------
# file : main.sh
#
# TODO : ... Claudie
#----------------------------

# variables communes
VERSION=""
CONNECTEUR=""
ETAT=""
IP=""
PORT=""

#-----------------------------------
# FONCTIONS
#-----------------------------------
# lancement tous les jours a 23H

lancementTache() {
   echo "lancement de la tache"
   # TODO : ... Claudie
}

# recuperation de la version du logiciel
#############################
# version.txt
#############################

recuperationVersion() {
   echo "recuperation de la version"
   # TODO : ... godbod
}

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
   echo "recuperation du connecteur"
   # TODO : ... godbod
}

# ecriture du rapport
#----------------------------
# @@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# VERSION    : xxx
# CONNECTEUR : xxx
# ETAT       : xxx
# IP         : xxx.xxx.xxx.xxx
# PORT       : xxx
#
# @@@@@@@@@@@@@@@@@@@@@@@@@@@
#----------------------------

ecritureRapport() {
   echo "ecriture du rapport : debut"

   # Tests Unitaires
   #~~~~~~~~~~~~~~~~~~~~~~~
   VERSION="0.0"
   CONNECTEUR="Laboratoire"
   ETAT="on"
   IP="10.10.43.42"
   PORT="65020"
   #~~~~~~~~~~~~~~~~~~~~~~~
   
   # Si on a des informations on peut afficher
   if [ VERSION ] || [ CONNECTOR ] || [ ETAT ] || [ IP ] || [ PORT ]
   then
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"       >> report.txt
      echo `date +%d/%m/%Y%k:%M`  "\n"           >> report.txt
      printf "%-12s" "VERSION"    ":$VERSION"    >> report.txt; echo "" >> report.txt
      printf "%-12s" "CONNECTEUR" ":$CONNECTEUR" >> report.txt; echo "" >> report.txt
      printf "%-12s" "ETAT"       ":$ETAT"       >> report.txt; echo "" >> report.txt
      printf "%-12s" "IP"         ":$IP"         >> report.txt; echo "" >> report.txt
      printf "%-12s" "PORT"       ":$PORT"       >> report.txt; echo "" >> report.txt
      echo "\n@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"     >> report.txt
   else
      echo "Error writing the report"
      exit 1 
   fi
   echo "ecriture du rapport : fin "
}

#-----------------------------------


#-----------------------------------
# deroulement programme
# TODO : ... Claudie
#-----------------------------------

ecritureRapport
