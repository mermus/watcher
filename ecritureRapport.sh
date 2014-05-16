#!/bin/bash

#----------------------------
# file : ecritureRapport.sh
#
# TODO : ... Claudie
#----------------------------

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

   # recuperation des parametres
   VERSION=$1
   CONNECTEUR=$2
   ETAT=$3
   IP=$4
   PORT=$5

   # Si on a des informations on peut afficher
   if [ VERSION ] || [ CONNECTOR ] || [ ETAT ] || [ IP ] || [ PORT ]
   then
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
      echo `date +%d/%m/%Y%t%k:%M`               >> report.txt
      printf "%-12s" "VERSION"    ":$VERSION"    >> report.txt; echo "" >> report.txt
      printf "%-12s" "CONNECTEUR" ":$CONNECTEUR" >> report.txt; echo "" >> report.txt
      printf "%-12s" "ETAT"       ":$ETAT"       >> report.txt; echo "" >> report.txt
      printf "%-12s" "IP"         ":$IP"         >> report.txt; echo "" >> report.txt
      printf "%-12s" "PORT"       ":$PORT"       >> report.txt; echo "" >> report.txt
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
   else
      echo "Error writing the report"
      exit 1 
   fi
   echo "ecriture du rapport : fin "
}
