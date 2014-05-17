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
SITE="Gambetta"
Nom="Prod"
VERSION="0.0"
Type="Linux ou AIX"
CONNECTEUR="Laboratoire"
ETAT="on"
Module="Vitale"
IP="10.10.43.42"
SID=""
PORT="65020"

REPERTOIRE_VERSION="/.../version"
REPERTOIRE_CONNECTEUR="/.../processlist"
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

ecritureRapport $SITE $Nom $VERSION $Type $CONNECTEUR $ETAT $Module $IP $SID $PORT
recuperationVersion $REPERTOIRE_VERSION
recuperationConnecteur $REPERTOIRE_CONNECTEUR
recuperationModules $FICHIER_MODULE  
