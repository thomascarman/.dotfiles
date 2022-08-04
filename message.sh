#!/bin/bash

cat ~/.dotfiles/welcomeMessage.txt

# while true; do
# 
# read -p "Do you want to open up your wiki? (Y/n) " yn
# 
# if [ "$yn" = "" ]; then
#     yn="Y"
# fi
# 
# case $yn in
#     [yY] ) echo ok, Opening...;
#         cd ~/.vault;
#         sleep 1;
#         clear;
#         vim +VimwikiIndex;
#         break;;
#     [nN] ) echo no problem;
#         sleep 1;
#         clear;
#         break;;
#     * ) echo invalid response;;
# esac
# 
# done
