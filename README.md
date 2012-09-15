Description
===========

This repository provides auto-installation files of bash/zsh/vim/tmux configuration for MacOSX or Ubuntu. Non-Debian based distributions such as Red Hat/CentOS, ArchLinux and others are not supported by this dotfiles.


Requirements
===========
## Platforms:
* MacOSX >= 10.5 (`homebrew` required)
* Ubuntu


Install Instructions
===========
## MacOSX:
1. Make sure you have already `homebrew` installed. 
2. Run setup.sh
3. That's it :)


## Ubuntu:
1. Make sure you have already `apt-get` installed. 
2. Run setup.sh
3. That's it :)


Uninstall Instructions
===========
## MacOSX:
1. rm .bashrc .bash_profile .vimrc .tmux.conf
2. sh ~/.oh-my-zsh/tools/uninstall.sh
(option)
3. \rm -rf ~/.vim
4. brew uninstall tmux tig zsh git ruby

## Ubuntu:
1. rm .bashrc .bash_profile .vimrc .tmux.conf
2. sh ~/.oh-my-zsh/tools/uninstall.sh
(option)
3. \rm -rf ~/.vim
4. apt-get uninstall tmux tig zsh git ruby
