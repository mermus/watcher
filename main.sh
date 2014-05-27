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
# IP_SERVEUR         : xxx.xxx.xxx.xxx
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
   VERSION_MAJ=$6
   IP_SERVEUR=$7
   ETAT=$8
   NOM_SERVEUR=$9

   # Si on a des informations on peut afficher
   if [ VERSION ] || [ CONNECTOR ] || [ ETAT ] || [ IP_SERVEUR ] || [ SITE ] || [ NOM ] || [ TYPE ] || [ NOM_SERVEUR ] || [ VERSION_MAJ ]
   then
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
      echo ""                                    >> report.txt
      echo `date +%d/%m/%Y%t%k:%M`               >> report.txt
      printf "%-15s" "SITE"        ":$SITE"       >> report.txt; echo "" >> report.txt
      printf "%-15s" "NOM"         ":$NOM"        >> report.txt; echo "" >> report.txt
      printf "%-15s" "VERSION"     ":$VERSION"    >> report.txt; echo "" >> report.txt
      printf "%-15s" "TYPE"        ":$TYPE"       >> report.txt; echo "" >> report.txt
      printf "%-15s" "CONNECTEUR"  ":$CONNECTEUR" >> report.txt; echo "" >> report.txt
      printf "%-15s" "VERSION_MAJ" ":$VERSION_MAJ" >> report.txt; echo "" >> report.txt
      printf "%-15s" "IP_SERVEUR"  ":$IP"          >> report.txt; echo "" >> report.txt
      printf "%-15s" "ETAT"        ":$ETAT"       >> report.txt; echo "" >> report.txt
      printf "%-15s" "NOM_SERVEUR" ":$NOM_SERVEUR" >> report.txt; echo "" >> report.txt
      echo ""                                    >> report.txt
      echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"         >> report.txt
   else
      echo "Error writing the report"
      exit 1
   fi
   echo "ecriture du rapport : fin "
}
mermus@mermus-K43SJ:~/Téléchargements/git_depot/watcher-master$ 
mermus@mermus-K43SJ:~/Téléchargements/git_depot/watcher-master$ more main.sh 
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
#recuperationProcess $BACKUP_PROCESS

ecritureRapport $SITE $NOM $VERSION $TYPE $CONNECTEUR $VERSION_MAJ $IP $ETAT #$MODULE
