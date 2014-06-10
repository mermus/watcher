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
# SITE       : xxx
# NOM        : xxx
# VERSION    : xxx
# TYPE       : xxx
# CONNECTEUR : xxx
# ETAT       : xxx
# MODULE     : xxx
# IP_SERVEUR         : xxx.xxx.xxx.xxx
# SID        : xxx
# PORT       : xxx
#
# @@@@@@@@@@@@@@@@@@@@@@@@@@@
#----------------------------

ecritureRapport() {
   echo "ecriture du rapport : debut"

   # recuperation des parametres
   SITE=$1
   NOM=$2
   VERSION=$3
   TYPE=$4
   CONNECTEUR=$5
   VERSION_MAJ=$6
   IP_SERVEUR=$7
   ETAT=$8
#   NOM_SERVEUR=$9

   # Si on a des informations on peut afficher
   if [ VERSION ] || [ CONNECTOR ] || [ ETAT ] || [ IP_SERVEUR ] || [ SITE ] || [ NOM ] || [ TYPE ] || [ NOM_SERVEUR ] || [ VERSION_MAJ ]
   then
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"           >> report.txt
      echo ""                                      >> report.txt
      echo `date +%d/%m/%Y%t%k:%M`                 >> report.txt
      printf "%-15s" "SITE"        ":$SITE"        >> report.txt; echo "" >> report.txt
      printf "%-15s" "NOM"         ":$NOM"         >> report.txt; echo "" >> report.txt
      printf "%-15s" "VERSION"     ":$VERSION"     >> report.txt; echo "" >> report.txt
      printf "%-15s" "TYPE"        ":$TYPE"        >> report.txt; echo "" >> report.txt
      printf "%-15s" "CONNECTEUR"  ":$CONNECTEUR"  >> report.txt; echo "" >> report.txt
      printf "%-15s" "VERSION_MAJ" ":$VERSION_MAJ" >> report.txt; echo "" >> report.txt
      printf "%-15s" "IP_SERVEUR"  ":$IP"          >> report.txt; echo "" >> report.txt
      printf "%-15s" "ETAT"        ":$ETAT"        >> report.txt; echo "" >> report.txt
#      printf "%-15s" "NOM_SERVEUR" ":$NOM_SERVEUR" >> report.txt; echo "" >> report.txt
      echo ""                                      >> report.txt
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"           >> report.txt
   else
      echo "Error writing the report"
      exit 1
   fi
   echo "ecriture du rapport : fin "
}
