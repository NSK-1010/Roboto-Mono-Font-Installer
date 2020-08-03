#!/bin/bash

zipname="roboto-mono.zip"
downloadfile="https://fonts.google.com/download?family=Roboto+Mono"
fontname="Roboto_Mono"
dir="Roboto_Mono/static"

cd deb
cd "${fontname}"
mkdir usr
cd usr
mkdir share
cd share
mkdir fonts
cd fonts
wget -O "${zipname}" "${downloadfile}"
mkdir "${fontname}"
unzip "${zipname}" -d "${fontname}"
mv ./${dir}/*.ttf ./
rm -r "${fontname}"
mkdir "${fontname}"
mv ./*.ttf "${fontname}"
rm "${zipname}"
cd ../../..
dpkg -b "${fontname}"
cd ..
