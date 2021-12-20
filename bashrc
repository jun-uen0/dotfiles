#!/bin/bash

isLinux() {
  [ $(uname) = "Linux" ]
}
isMac() {
  [ $(uname) = "Darwin" ]
}
isCygwin() {
#  [ $(uname -o) = "Cygwin" ]
}

export EDITOR=vim
export GIT_EDITOR=$EDITOR

alias vi='vim'
alias mv='mv -i'
alias ls='ls -F'
alias ll='ls -l'
alias llh='ls -lh'
alias la='ls -a'
alias lla='ls -la'
alias df='df -h | grep -v /dev/loop'

# Linux only
if isLinux; then
  alias open='xdg-open'
  alias rm='trash-put'
fi

# macOS
if isMac; then
  alias rm='trash -F'
  alias top='top -o cpu'
  alias updatedb='cd /usr/libexec; sudo /usr/libexec/locate.updatedb'
  alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
fi

# Cygwin
if isCygwin; then
  alias open='explorer'
fi

#git
alias g='git'
alias gac='git add .;git commit'
alias gsu='git submodule update'

# gradle
alias gradlea='./gradlew assemble'
alias gradleb='./gradlew build'
alias gradlec='./gradlew clean' 
alias gradlei='./gradlew install' 

