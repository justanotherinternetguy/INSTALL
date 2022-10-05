#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


echo -e "${NC}Welcome to justanotherinternetguy's custom installer and config script for ArchCraft linux. Please make sure to ${RED}update the system ${NC}before running this script.\n"

printf "${GREEN}Press enter to continue >> ${NC}"
read ans

sudo pacman -S github-cli corectrl psensor htop btop nvtop extra/jre17-openjdk neovim hblock --noconfirm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/.zshrc

nvm install stable
nvm use stable

sudo pacman -S code sublime-text-4 bitwarden keepassxc gimp --noconfirm
yay -S android-studio webcord-bin --noconfirm

git config --global user.name "justanotherinternetguy"
git config --global user.email "hendryxu1@gmail.com"
hblock
