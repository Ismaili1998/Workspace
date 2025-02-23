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
