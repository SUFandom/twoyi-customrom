#!/bin/bash

echo "Initializing Packing. Please Kill all unimportant processes. or everything may fail"
sleep 5
clear
7z a -snl buildrom rootfs
echo "Saved as buildrom.7z if process is done."
rm -rf romfile.7z
rm -rf rootfs