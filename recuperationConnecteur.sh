#!/bin/bash

#----------------------------
# file : recuperationConnecteur.sh
#
# TODO : ... Claudie
#----------------------------


# recuperation des connecteurs

recuperationConnecteur() {
   echo "recuperation du connecteur : debut"

   # recuperation du fichier contenant les connecteurs
    CONNECTEUR=$1

   # cd $PLTDIR/scripts/ : permet de ce placer au niveau du repertoir ou ce trouve le fichier contenant les connecteurs
   # more                : permet d'afficher a l'ecran les informations contenue dans le fichier executable processList
   # CONNECTEUR=`awk '{ for(i=1;i<=NF;i++) { if($i!="kernel" && $i!="data1base" && $i!="data2base"&& $i!="tempo" && $i!="data5base"){ printf $i"
;"} } }' $PLTDIR/scripts/processList`
    CONNECTEUR=`awk '{ for(i=1;i<=NF;i++) { if($i!="kernel" && $i!="data1base" && $i!="data2base"&& $i!="tempo" && $i!="data5base"){ printf $i";
"} } }' repaxigate/scripts/processList`

   echo "recuperation du connecteur : fin"
}
