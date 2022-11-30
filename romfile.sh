#!/bin/bash

# This is RomGen Area, this is to create a ROM File for your rootfs
# Mimicking a Company is illegal and we will not take responsiblilty for your actions
# Using this, you also agree to try face the lawsuit if you try to mimic and distribute it commercially
# And you promise in your soul to not let twoyi or me (SUFandom) be responsible for your shitty actions.
rm -rf rom.ini
echo "Romgen Initialize."

read -r -p "Enter Your Organization/Individual Name: " inp
echo "author=$inp" >> rom.ini
RAND=$RANDOM
echo "code=$RAND" >> rom.ini
read -r -p "Version ID (like 1.0.0 or 1a0.0.0)? " inps
echo "version=$inps-$RAND" >> rom.ini
read -r -p "Enter Info: " inpst
echo "desc=$inpst" >> rom.ini
cp -r rom.ini rootfs/rom.ini
./pack.sh