#!/bin/bash

set -e

pwd=$(pwd)

backup() {
  target=$1
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      today=`date +%Y%m%d`
      file=`basename $target`
      cp "$target" ~/backup/"$file.$today"
      echo "-----> Moved your old $target config file to ~/backup/$file.$today"
    fi
  fi
}

# .vimrc
if [ -L ~/.vimrc ]; then
  backup "$pwd/.vimrc"
  rm ~/.vimrc
else
  echo "symlink ~/.vimrc not exists."
fi
