#!/bin/bash

#----------------------------
# file : recuperationSite.sh
#
# TODO : ... Claudie
#----------------------------

# recuperation de la fonction du site
#############################
# echo $prompt
#############################

recuperationSite() {
   echo "recuperation de la fonction du site : debut"

   # Permet de savoir si on n est sur un site de TEST / PROD / FORM
   SITE=$1

   # SITE=`echo $prompt | cut -f4 -d" "`
   SITE=`uname -n | cut -f2 -d"-"`

   echo "recuperation de la fonction du site : fin"
}
