# dotfiles

## Install
Install dein.vim, which is a plugin manager for vim, and dotfiles.

- Initial setup

```bash
$ mkdir -p $HOME/.vim/bundles/repos/github.com/Shougo
$ cd $HOME/.vim/bundles/repos/github.com/Shougo
$ git clone https://github.com/Shougo/dein.vim.git
$ cd
$ git clone git@github.com:takeru56/dotfiles.git && cd dotfiles 
```

- Update dotfiles

```bash
$ ./install.sh
```

## Uninstall

```bash
$ cd ~/dotfiles
$ mkdir .dotfiles.backup
$ ./uninstall.sh
```

## List of dotfiles

- .vimrc
- .tmux.conf

