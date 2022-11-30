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

wget 