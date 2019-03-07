#!/bin/bash

isLinux() {
  [ $(uname) = "Linux" ]
}
isMac() {
  [ $(uname) = "Darwin" ]
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
  alias rm='rmtrash'
  alias top='top -o cpu'
  alias updatedb='cd /usr/libexec; sudo /usr/libexec/locate.updatedb'
fi

# git
alias g='git'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit'
alias gac='git add .;git commit'
alias gp='git pull --recurse-submodules origin develop'
alias gpm='git pull --recurse-submodules origin master'
alias gpsd='git push origin develop'
alias gpsm='git push origin master'
alias gl='git log'
alias gsu='git submodule update'

# gradle
alias gradlea='./gradlew assemble'
alias gradleb='./gradlew build'
alias gradlec='./gradlew clean' 
alias gradlei='./gradlew install' 

