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
source recuperationType.sh
source recuperationNom.sh
source recuperationSite.sh
source recuperationVersionMajeur.sh

# Tests Unitaires
#~~~~~~~~~~~~~~~~~~~~~~~
SITE="site"
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
TYPE_SERVEUR="type"
#NOM_SERVEUR="mon_serveur"
VERSION_MAJ="version_maj"

#~~~~~~~~~~~~~~~~~~~~~~~

#-----------------------------------
# FONCTIONS
#-----------------------------------
# lancement tous les Dimanches a 23H

lancementTache() {
   echo "lancement de la tache"
   # TODO : ... Claudie
   #
}

#-----------------------------------
# deroulement programme
# 1. Se placer sous le compte aXigate
#       En executant la commande : "su - login/mdp"
# 2. Se connecter en shell
#       En executant la commande : ""
# 2. Recuperation des elements de monitoring :
#     - Nom du site "Paris"
#     - Fonction du serveur "Prod"
#     - Type du serveur "Linux" : uname
#     - @IP du serveur "10.10.43.42"
#     - la Version installer "0.0"
# 3. Recuperation des modules :
#     - Nom du module
#     - @IP sur lequel il est rattache
#     - SID
#     - Son Port
# 4. Recuperation des connecteurs :
#     - Nom des connecteurs
#     - Descriptifs et fonctions
# TODO : ... Claudie
#-----------------------------------

recuperationVersion $REPERTOIRE_VERSION
recuperationConnecteur $REPERTOIRE_CONNECTEUR
recuperationModules $FICHIER_MODULE
recuperationType $TYPE_SERVEUR
#recuperationNom $NOM_SERVEUR
recuperationVersionMajeur $VERSION_MAJ
#recuperationSite $SITE

ecritureRapport $SITE $NOM $REPERTOIRE_VERSION $TYPE_SERVEUR $REPERTOIRE_CONNECTEUR $ETAT $MODULE $IP $SID $PORT $VERSION_MAJ #$NOM_SERVEUR
