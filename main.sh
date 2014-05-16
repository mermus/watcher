#!/bin/bash

#----------------------------
# file : main.sh
#
# TODO : ... Claudie
#----------------------------

source ecritureRapport.sh
source recuperationVersion.sh
source recuperationConnecteur.sh

# Tests Unitaires
#~~~~~~~~~~~~~~~~~~~~~~~
VERSION="0.0"
CONNECTEUR="Laboratoire"
ETAT="on"
IP="10.10.43.42"
PORT="65020"

FICHIER_VERSION="version.txt"
FICHIER_CONNECTEUR="aspen.env"
#~~~~~~~~~~~~~~~~~~~~~~~

#-----------------------------------
# FONCTIONS
#-----------------------------------
# lancement tous les jours a 23H

lancementTache() {
   echo "lancement de la tache"
   # TODO : ... Claudie
}

#-----------------------------------
# deroulement programme
# TODO : ... Claudie
#-----------------------------------

ecritureRapport $VERSION $CONNECTEUR $ETAT $IP $PORT
recuperationVersion $FICHIER_VERSION
recuperationConnecteur $FICHIER_CONNECTEUR
