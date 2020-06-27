wget -O roboto-mono.zip https://fonts.google.com/download?family=Roboto+Mono
mkdir Roboto_Mono
unzip roboto-mono.zip -d Roboto_Mono
sudo mkdir /usr/share/fonts/Roboto_Mono
sudo mv ./static/*.ttf /usr/share/fonts/Roboto_Mono/
rm -r Roboto_Mono
rm roboto-mono.zip
