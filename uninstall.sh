#!/bin/bash

set -e

pwd=$(pwd)

backup() {
  target=$1
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      today=`date +%Y%m%d`
      file=`basename $target`
      cp "$target" ~/.dotfiles.backup/"$file.$today"
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

# .vimrc
if [ -L ~/.tmux.conf ]; then
  backup "$pwd/.tmux.conf"
  rm ~/.tmux.conf
else
  echo "symlink ~/.tmux.conf not exists."
fi
