#!/bin/bash
#
# Author: Nilson Lopes
# Last Modified: 2016/08/22

# Personal Desktop Configuration
# OS: Fedora 24
# Kernel: 4.6.4-301.fc24.x86_64
# Machine: MacBookPro 5,5
# Instalation: Dual boot
# WM: i3
#   conky
#   ranger 
#   urxvt
#   feh

BASEDIR="$(cd "$(dirname "${BASH_SORCE[0]}")" && pwd)"

# bashrc and bash_profile
ln -s $BASEDIR/bash/bashrc $HOME/.bashrc
ln -s $BASEDIR/bash/bash_profile $HOME/.bash_profile

# ~/bin directory
ln -s $BASEDIR/bin $HOME/bin

# Xresources and xinitrc
ln -s $BASEDIR/X/Xresources $HOME/.Xresources
ln -s $BASEDIR/X/xinitrc $HOME/.xinitrc


# i3 
ln -s $BASEDIR/i3 $HOME/.config/i3

# ranger 
ln -s $BASEDIR/ranger $HOME/.config/ranger

# fonts
ln -s $BASEDIR/fonts $HOME/.local/share/fonts

# vim
#git clone https://github.com/amix/vimrc.git ~/.vim_runtime
#sh ~/.vim_runtime/install_awesome_vimrc.sh

#oh-my-zsh
# curl
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# or wget
#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

