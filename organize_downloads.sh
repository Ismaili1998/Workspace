#!/bin/bash


# Définition du dossier cible
echo "$HOME"
DOWNLOADS="$HOME/Downloads"

Images="$HOME/Downloads/Images"
Videos="$HOME/Downloads/Videos"
Documents="$HOME/Downloads/Documents"
Archives="$HOME/Downloads/Archives"

My_Document_extension_list=( "*.doc" "*.docx" "*.pdf" "*.txt" "*.rtf" "*.ppt" "*.pptx" "*.xls" "*.xlsx" "*.csv" "*.odt" )

My_folder_list=(
    "$DOWNLOADS"
    "$Images"
    "$Videos"
    "$Documents"
    "$Archives"
)

for folder in "${My_folder_list[@]}"; do
    # Vérification si le dossier existe, sinon le créer
    if [ ! -d "$folder" ]; then
        mkdir -p "$folder"
        #echo "Création du dossier : $folder"
    fi
done

for extension in "${My_Document_extension_list[@]}"; do
    # Déplacement des fichiers avec l'extension spécifiée vers le dossier Documents
    find "$DOWNLOADS" ! -path "$Documents/*" -type f -name "$extension" -exec mv {} "$Documents" \;
    echo "Déplacement des fichiers avec l'extension $extension vers le dossier Documents"
done

