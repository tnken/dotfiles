# dotfiles

## Install
Install dein.vim, which is a plugin manager for vim, and dotfiles.

```
$ mkdir -p $HOME/.vim/bundles/repos/github.com/Shougo
$ cd $HOME/.vim/bundles/repos/github.com/Shougo
$ git clone https://github.com/Shougo/dein.vim.git
$ cd
$ git clone git@github.com:takeru56/dotfiles.git && cd dotfiles 
$ sh install.sh
``

## Uninstall

```
$ cd ~/dotfiles
$ mkdir .dotfiles.backup
$ sh uninstall.sh
```

## List of dotfile

- .vimrc
- .tmux.conf

