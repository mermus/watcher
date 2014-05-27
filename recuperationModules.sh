#!/bin/bash

#----------------------------
# file : recuperationModule.sh
#
# TODO : ... Claudie
#----------------------------


# recuperation des modules
###############################
# Backup du fichier aspen.env
###############################
# - module
# - ip server
# - SID
# - port(s)
#----------------------------

recuperationModules() {
   echo "recuperation du module : debut"

   # recuperation du fichier contenant les modules
   MODULE=$1

   # touch backupaspen.txt                      : creation du fichier de backup
   # cat repaxigate/axilink/resources/aspen.txt : recuperation du contenu du fichier aspen.txt
   # >> backupaspen.txt                         : redirection de la sorte standard vers le fichier backupaspen.txt

  # MODULE=`touch backupaspen.txt | cat $PLTDIR/axilink/resources/aspen.env > backupaspen.txt`
   MODULE=`touch backupaspen.txt | cat repaxigate/axilink/ressources/aspen.txt > backupaspen.txt`
   echo "recuperation du module : fin"
}
