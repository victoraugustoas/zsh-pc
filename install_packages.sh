#!/bin/bash

# apps
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.slack.Slack -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.jetbrains.WebStorm -y
flatpak install flathub com.axosoft.GitKraken -y
flatpak install flathub org.telegram.desktop -y

# git, zsh and curl
sudo apt install git zsh curl

# oh-my-zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" # zplugin

# fzf-zsh
git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
${ZSH}/custom/plugins/fzf/install --bin
git clone https://github.com/Treri/fzf-zsh.git ${ZSH}/custom/plugins/fzf-zsh

# nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
$HOME/nerd-fonts/install.sh

# get .zshrc
curl https://raw.githubusercontent.com/victoraugustoas/zsh-pc/master/.zshrc > $HOME/.zshrc

source $HOME/.zshrc
