#!/bin/bash

# Définition du dossier cible
DOWNLOADS="/home/amine/Téléchargements"
cd $DOWNLOADS

folder_images="images"
folder_document="document"
folder_videos="videos"
folder_archives="archives"

liste_folder=( "$folder_images"
"$folder_document"
"$folder_videos"
"$folder_archives" ) 
#creation des sous dossier

for  current_folder in "${liste_folder[@]}" ; do
    echo "$current_folder"
if [ -d $current_folder ] ; then
        echo "dossier deja cree"
    else mkdir $current_folder ;
fi
    done

#deplacement des fichiers selent leur extention


find $DOWNLOADS -type f \( -iname ".jpg" -o -iname ".png" \) -exec mv {} "./$folder_image/" \;
