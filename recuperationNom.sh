#!/bin/bash

#----------------------------
# file : recuperationNom.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation du Nom du logiciel
#############################
# echo $prompt
#############################

recuperationNom() {
   echo "recuperation du nom de site : debut"

   # recuperation du nom de site
   NOM=$1

   #NOM_SERVEUR=`echo $prompt | cut -f3 -d" "`
   NOM=`uname -n | cut -f1 -d"-"` 
   echo "recuperation du nom de site : fin"
}
