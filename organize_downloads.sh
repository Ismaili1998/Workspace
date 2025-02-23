#!/bin/bash
# Définition du dossier cible
download="/home/abdessamad/Téléchargements"
image="$download/image"
video="$download/video"
documents="$download/documents"
archive="$download/archive"
list=($image $video $documents $archive)
for curent_folder in ${list[@]}; do
if [ -d $curent_folder ]; then 
echo $curent_folder "existe"
else
mkdir $curent_folder
echo $curent_folder "created"
fi
done