#!/bin/bash

cat ~/.dotfiles/welcomeMessage.txt

while true; do

read -p "Do you want to open up your wiki? (Y/n) " yn

if [ "$yn" = "" ]; then
    yn="Y"
fi

case $yn in
    [yY] ) echo ok, Opening...;
        cd ~/.vault;
        vim +VimwikiIndex;
        break;;
    [nN] ) echo no problem;
        break;;
    * ) echo invalid response;;
esac

done
