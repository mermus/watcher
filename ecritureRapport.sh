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
# IP         : xxx.xxx.xxx.xxx
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
   ETAT=$6
   MODULE=$7
   IP=$8
   SID=$9
   PORT=${10}

   # Si on a des informations on peut afficher
   if [ VERSION ] || [ CONNECTOR ] || [ ETAT ] || [ IP ] || [ PORT ] || [ SITE ] || [ NOM ] || [ TYPE ] || [ MODULE ] || [ SID ]
   then
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
      echo ""                                    >> report.txt
      echo `date +%d/%m/%Y%t%k:%M`               >> report.txt
      printf "%-12s" "SITE"       ":$SITE"       >> report.txt; echo "" >> report.txt
      printf "%-12s" "NOM"        ":$NOM"        >> report.txt; echo "" >> report.txt
      printf "%-12s" "VERSION"    ":$VERSION"    >> report.txt; echo "" >> report.txt
      printf "%-12s" "TYPE"       ":$TYPE"       >> report.txt; echo "" >> report.txt
      printf "%-12s" "CONNECTEUR" ":$CONNECTEUR" >> report.txt; echo "" >> report.txt
      printf "%-12s" "ETAT"       ":$ETAT"       >> report.txt; echo "" >> report.txt
      printf "%-12s" "MODULE"     ":$MODULE"     >> report.txt; echo "" >> report.txt
      printf "%-12s" "IP"         ":$IP"         >> report.txt; echo "" >> report.txt
      printf "%-12s" "SID"        ":$SID"        >> report.txt; echo "" >> report.txt
      printf "%-12s" "PORT"       ":$PORT"       >> report.txt; echo "" >> report.txt
      echo ""                                    >> report.txt
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
   else
      echo "Error writing the report"
      exit 1 
   fi
   echo "ecriture du rapport : fin "
}
