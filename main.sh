#!/bin/bash

#----------------------------
# file : main.sh
#
# TODO : ... Claudie
#----------------------------

source ecritureRapport.sh
source recuperationVersion.sh
source recuperationConnecteur.sh
source recuperationModules.sh

# Tests Unitaires
#~~~~~~~~~~~~~~~~~~~~~~~
SITE="Gambetta"
NOM="Prod"
VERSION="0.0"
# TYPE
#      0 Linux 
#      1 AIX
TYPE="0"
CONNECTEUR="Laboratoire"
ETAT="on"
MODULE="Vitale"
IP="10.10.43.42"
SID="Gambetta"
PORT="65020"

REPERTOIRE_VERSION="version"
REPERTOIRE_CONNECTEUR="processlist"
FICHIER_MODULE="aspen.env"
#~~~~~~~~~~~~~~~~~~~~~~~

#-----------------------------------
# FONCTIONS
#-----------------------------------
# lancement tous les Dimanches a 23H

lancementTache() {
   echo "lancement de la tache"
   # TODO : ... Claudie
}

#-----------------------------------
# deroulement programme
# TODO : ... Claudie
#-----------------------------------

recuperationVersion $REPERTOIRE_VERSION
recuperationConnecteur $REPERTOIRE_CONNECTEUR
recuperationModules $FICHIER_MODULE  

ecritureRapport $SITE $NOM $REPERTOIRE_VERSION $TYPE $REPERTOIRE_CONNECTEUR $ETAT $MODULE $IP $SID $PORT
