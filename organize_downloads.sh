#!/bin/bash

# Définition du dossier cible
DOWNLOADS="/home/ouss/Téléchargements"
cd $DOWNLOADS
folder_image="images"
folder_archives="archives"
folder_video="video"
folder_documents="doccuments"


liste_folders=( "$folder_archives"
"$folder_image" 
"$folder_video" 
"$folder_documents" ) 
for currend_forder in "${liste_folders[@]}" ; do 
  echo "$currend_forder"
   
if [ -d $currend_forder ] ; then
echo "dossier deja crrie" 
else mkdir $currend_forder
fi 
done 