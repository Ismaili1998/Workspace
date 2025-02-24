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