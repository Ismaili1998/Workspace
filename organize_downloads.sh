#!/bin/bash

# Définition du dossier cible
DOWNLOADS="$HOME/Téléchargements"

# Dossiers de destination
DOCUMENTS="$DOWNLOADS/Documents"
IMAGES="$DOWNLOADS/Images"
VIDEOS="$DOWNLOADS/Vidéos"
ARCHIVES="$DOWNLOADS/Archives"
MUSIC="$DOWNLOADS/Musique"

# Créer les dossiers de destination s'ils n'existent pas
mkdir -p "$DOCUMENTS"
mkdir -p "$IMAGES"
mkdir -p "$VIDEOS"
mkdir -p "$ARCHIVES"
mkdir -p "$MUSIC"

# Déplacer les fichiers dans les dossiers appropriés
for file in "$DOWNLOADS"/*; do
    if [ -f "$file" ]; then
        case "$file" in
            *.pdf|*.docx|*.txt|*.xlsx|*.pptx)
                mv "$file" "$DOCUMENTS"
                ;;
            *.jpg|*.png|*.gif)
                mv "$file" "$IMAGES"
                ;;
            *.mp4|*.avi)
                mv "$file" "$VIDEOS"
                ;;
            *.zip|*.tar|*.rar)
                mv "$file" "$ARCHIVES"
                ;;
            *.mp3|*.wav)
                mv "$file" "$MUSIC"
                ;;
        esac
    fi
done

echo "Organisation des fichiers terminée."