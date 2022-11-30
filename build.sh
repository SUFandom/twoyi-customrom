#!/bin/bash

if (command -v 7za > /dev/null)
then
echo "7za Found - PASS"
else
echo "72a Not Found. You need to install it via APT (apt install p7zip)"
exit 1
fi

if (command -v wget > /dev/null)
then
echo "wget found. - PASS"
else 
echo "wget not found, Please install it via APT by running 'apt install wget'"
exit 1
fi
echo "Downloading File - (222MB)"
if [ -e romfile.7z ]
then
echo "Already Found file"
else
wget https://github.com/SUFandom/twoyi-customrom/releases/download/0.1/romfile.7z
fi 

if [ -e romfile.7z ]
then
echo "ROM Downloaded"
else
echo "Failed to download, please check your internet."
fi

clear

echo "Initializing Extracting, Please Kill all unnecessary process to let p7zip extract without issues."

sleep 10

7za x romfile.7z

if [ -e rootfs ]
then 
echo "Initializing to Config"
./buildfile.sh
else
echo "Issue detected, Can't find the extracted Folder.."
fi