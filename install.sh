#!/bin/bash

zipname="roboto-mono.zip"
downloadfile="https://fonts.google.com/download?family=Roboto+Mono"
fontname="Roboto_Mono"
dir="Roboto_Mono/static"

wget -O "${zipname}" "${downloadfile}"
mkdir "${fontname}"
unzip "${zipname}" -d 
sudo mkdir "/usr/share/fonts/${fontname}"
sudo mv "./${dir}/*.ttf" "/usr/share/fonts/${fontname}"
rm -r "${fontname}"
rm "${zipname}"
