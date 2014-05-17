#!/bin/bash

#----------------------------
# file : recuperationModule.sh
#
# TODO : ... Claudie
#----------------------------


# recuperation des modules
#############################
# aspen.env
#############################
# - module
# - ip server
# - SID
# - port(s)
#----------------------------

recuperationModule() {
   echo "recuperation du module : debut"

   # recuperation du fichier contenant les modules
   FICHIER=$1
   echo $FICHIER

   echo "recuperation du module : fin"
}

