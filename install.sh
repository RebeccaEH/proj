#!/bin/bash

# copy proj.sh to /usr/local/bin
sudo cp ./proj.sh /usr/local/bin/

# install fzf
apt=$(which apt)
dnf=$(which dnf)

if [ -n "$apt" ]; then
    sudo apt install fzf
elif [ -n "$dnf" ]; then
    sudo dnf install fzf
else
    echo "Error: no package manager found"
    exit 1
fi



# add proj.sh to ~/.bashrc
echo "" >> ~/.bashrc
echo "#used for proj tool" >> ~/.bashrc
echo "source /usr/local/bin/proj.sh" >> ~/.bashrc
echo "" >> ~/.bashrc
