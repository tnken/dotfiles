#!/bin/bash

set -e

pwd=$(pwd)

symlink() {
  file=$1
  link=$2
  if [ ! -e "$link" ]; then
    echo "-----> Symlinking your new $link"
    ln -s $file $link
  fi
}

# .vimrc
if [ -e ~/.vimrc ] || [ -L ~/.vimrc ]; then
    echo "~/.vimrc already exists."
else
  symlink "$pwd/.vimrc" ~/.vimrc
fi
