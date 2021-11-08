#!/bin/bash

# usage
# if isLinux ; then
#   ...do_something...
# fi

isLinux(){
  [ $(uname) = "Linux" ]
}

isMac(){
  [ $(uname) = "Darwin" ]
}

isCygwin(){
  [ $(uname -o) = "Cygwin" ]
}
