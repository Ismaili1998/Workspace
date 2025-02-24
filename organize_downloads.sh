#!/bin/bash

# Dossier cible
DOWNLOADS="/home/ana/Téléchargements"

# Sous-dossiers
IMAGES="$DOWNLOADS/Images"
ARCHIVES="$DOWNLOADS/Archives"
DOCUMENTS="$DOWNLOADS/Documents"
VIDEOS="$DOWNLOADS/Vidéos"

# Créer les sous-dossiers (s'ils n'existent pas)
mkdir -p "$IMAGES" "$ARCHIVES" "$DOCUMENTS" "$VIDEOS"
echo "Création des sous-dossiers terminés"


# Déplacer les fichiers
for file in "$DOWNLOADS"/*; do
  if [ -f "$file" ]; then
    ext="${file##*.}"
    name="${file##*/}"

    if [[ "$ext" == "jpg" || "$ext" == "jpeg" || "$ext" == "png" || "$ext" == "gif" ]]; then
      mv "$file" "$IMAGES/$name"
      echo "Déplacé $name vers Images"
      elif [[ "$ext" == "zip" || "$ext" == "tar" || "$ext" == "gz" || "$ext" == "rar" ]]; then
      mv "$file" "$ARCHIVES/$name"
      echo "Déplacé $name vers Archives"
      elif [[ "$ext" == "pdf" || "$ext" == "doc" || "$ext" == "docx" || "$ext" == "txt" ]]; then
      mv "$file" "$DOCUMENTS/$name"
      echo "Déplacé $name vers Documents"
      elif [[ "$ext" == "mp4" || "$ext" == "avi" || "$ext" == "mkv" || "$ext" == "mov" ]]; then
      mv "$file" "$VIDEOS/$name"
      echo "Déplacé $name vers Vidéos"
    fi
  fi
done
echo "L'organisation des fichiers du dossier Téléchargemets a été effectuée"