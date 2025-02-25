#!/bin/bash

# Définition du dossier cible
# creation et inisiation des variables 
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
#creation des sous-dossiers dans le dossiers Téléchargements
for currend_forder in "${liste_folders[@]}" ; do 
  echo "$currend_forder"
   
if [ -d $currend_forder ] ; then
echo "dossier deja crrie" 
else mkdir $currend_forder
fi 
done 
 
#migration des photos 
find $DOWNLOADS -type f \( -iname "*.jpg" -o -iname "*.png" \) -exec mv {} "./$folder_image/" \;

#migration des fichiers docs
find $DOWNLOADS -type f \( -iname "*.pdf" -o -iname "*.docx" -o -iname ".txt" \) -exec mv {} "./$folder_documents/" \;

