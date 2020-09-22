#!/bin/bash
#Check whether root
if [ $(whoami) != root ]; then
    echo You must be root or use sudo to install packages.
    return
fi

#Call apt-get for each package
apt-get update
for pkg in "$@"
    do
        echo "Installing $pkg"
        apt-get -my install $pkg >> install.log
    done
