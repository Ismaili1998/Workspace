#!/bin/bash
#Creating folders in DOWNLOAD if they don't exist
download="/home/abdessamad/Téléchargements"
image="$download/image"
video="$download/video"
documents="$download/documents"
archive="$download/archive"
list=($image $video $documents $archive)
for curent_folder in ${list[@]}; do
if [ -d $curent_folder ]; then 
echo $curent_folder "Already existed"
else
mkdir $curent_folder
echo $curent_folder "created successfully"
fi
done
#Transfer and organize files by type 
list_image=($download/*.jpg $download/*.png $download/*.gif)
list_video=($download/*.mp4 $download/*.flv $download/*.mov)
list_archive=($download/*.zip $download/*.tar $download/*.rar)
list_documents=($download/*.pdf $download/*.docx $download/*.txt)

#for file in ${list_archive[@]}; do
    if [ -f "$file" ]; then
       mv $file $archive
       echo "Mouving $file to $download has been done successfully"
    fi
#done
#for file in ${list_documents[@]}; do
    if [ -f "$file" ]; then
    mv $file $documents
    echo "Mouving $file to $download has been done successfully"    
    fi
#done
#for file in ${list_image[@]}; do
    if [ -f "$file" ]; then
    mv $file $image
    echo "Mouving $file to $download has been done successfully"
    fi
#done
for file in ${list_video[@]}; do
    if [ -f "$file" ]; then
    mv $file $video
    echo "Mouving $file to $download has been done successfully"
    fi
done
