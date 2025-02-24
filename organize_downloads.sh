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
    fi
  fi
done