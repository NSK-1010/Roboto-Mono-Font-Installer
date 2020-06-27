cd deb
cd Roboto_Mono
mkdir usr
cd usr
mkdir share
cd share
wget -O roboto-mono.zip https://fonts.google.com/download?family=Roboto+Mono
mkdir Roboto_Mono
unzip roboto-mono.zip -d Roboto_Mono
mv ./Roboto_Mono/static/*.ttf ./
rm -r Roboto_Mono
mkdir Roboto_Mono
mv ./*.ttf Roboto_Mono
rm roboto-mono.zip
cd ../../..
dpkg -b Roboto_Mono
sudo apt install ./Roboto_Mono.deb
cd ..
