#!/bin/bash

DIR=$(cd $(dirname $0); pwd)
echo script path=$DIR
. $DIR/os.sh

# bashrc
cp ~/.bashrc ~/.bashrc.bak
cat << EOF >> ~/.bashrc

# include dotfiles/bashrc
DOTFILES_DIR=$DIR
if [ -f \$DOTFILES_DIR/bashrc ]; then
   . \$DOTFILES_DIR/bashrc
fi
EOF

# vim
ln -s $DIR/vimrc ~/.vimrc

# git
ln -s $DIR/gitconfig ~/.gitconfig

# Linux
if isLinux; then
  sudo apt update -y \
  && sudo apt upgrade -y \
  && sudo apt install -y git trash-cli \
  && sudo apt clean
fi

# macOS
if isMac; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git rmtrash pstree 
fi


