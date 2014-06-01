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
source recuperationIP.sh
#source recuperationProcess.sh

# Tests Unitaires
#~~~~~~~~~~~~~~~~~~~~~~~
SITE="site"
NOM="Prod"
VERSION="version"
TYPE="TYPE"
CONNECTEUR="Laboratoire"
VERSION_MAJ="version_maj"
IP="10.10.43.42"
ETAT="ON_or_OF"
#REPERTOIRE_CONNECTEUR="processlist"

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

recuperationVersion $VERSION
recuperationType $TYPE
recuperationConnecteur $CONNECTEUR
recuperationVersionMajeur $VERSION_MAJ
recuperationModules $FICHIER_MODULE
recuperationNom $NOM
recuperationSite $SITE
recuperationIP $IP
#recuperationProcess $BACKUP_PROCESS

ecritureRapport $SITE $NOM $VERSION $TYPE $CONNECTEUR $VERSION_MAJ $IP $ETAT #$MODULE
