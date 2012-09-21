#!/bin/sh

## func
sym_link() {
  while [ "$1" != "" ]
  do
    echo "Creating symbolic links: [$HOME/.$1 => $PWD/$1]"
    ln -sv $PWD/$1 $HOME/\.$1
    shift 1
  done
  echo ""
}

vundle_conf() {
  echo "Starting Vundle Installation..."
  if [ ! -d ~/.vim/bundle ]; then
    mkdir -p ~/.vim/bundle
  fi
  if [ -d ~/.vim/bundle/vundle ]; then
    echo "You already have Vundle installed in ~/.vim/bundle"
  else
    echo "Cloning Vundle [git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle]"
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  fi
  echo "Including Vim Bundles"
  vim +BundleInstall +qall
  echo ""
}

zsh_conf() {
  if [ -d ~/.oh-my-zsh ]; then
    echo "You already have Oh My Zsh installed. in ~/.oh-my-zsh"
  else
    echo "Cloning Oh My Zsh..."
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s `which zsh`
    echo "oh-my-zsh is now installed."
    /usr/bin/env zsh
    source ~/.zshrc
  fi
  echo ""
}

git_conf() {
  while true
  do
    echo "Do you wish to set gitconfig now? (y/n) > \c"
    read yn
    case $yn in
      y | Y | yes | YES )
        while true
        do
          echo "Enter your name > \c"
          read name
          echo "your name is $name ? (y/n) \c"
          read yn
          case $yn in
            y | Y | yes | YES )
              git config --global user.name "$name"
              break;;
            n | N | no | NO )
              ;;
            q | Q | quit | QUIT )
              break;;
            * )
              echo "Please answer yes or no.";;
          esac
        done
        while true
        do
          echo "Enter your email address ? > \c "
          read email
          echo "your email address is $email ? (y/n) \c"
          read yn
          case $yn in
            y | Y | yes | YES )
              git config --global user.email "$email"
              break;;
            n | N | no | NO )
              ;;
            q | Q | quit | QUIT )
              break;;
            * )
              echo "Please answer yes or no.";;
          esac
        done
        git config --global color.ui true
        break;;
      n | N | no | NO )
        break;;
      * )
        echo "Please answer yes or no.";;
    esac
  done
  echo ""
}

## func for MacOSX
brew_install() {
  while [ "$1" != "" ]
  do
    echo "Checking required applications: [$1]"
    if ! type $1; then
      echo "Cannot find $1 in \$PATH" 1>&2
      echo "Installing [brew install $1]"
      brew install $1
    fi
    shift 1
  done
  echo ""
}

sym_link_mac() {
  while [ "$1" != "" ]
  do
    echo "Creating symbolic links: [$HOME/.$1 => $PWD/$1-osx]"
    ln -sv $PWD/$1-osx $HOME/\.$1
    shift 1
  done
  echo ""
}


## func for Ubuntu
apt_install() {
  while [ "$1" != "" ]
  do
    echo "Checking required applications: [$1]"
    if ! type $1; then
      echo "Cannot find $1 in \$PATH" 1>&2
      echo "Installing [apt-get install $1]"
      sudo apt-get install $1
    fi
    shift 1
  done
  echo ""
}

sym_link_ubuntu() {
  while [ "$1" != "" ]
  do
    echo "Creating symbolic links: [$HOME/.$1 => $PWD/$1-linux]"
    ln -sv $PWD/$1-linux $HOME/\.$1
    shift 1
  done
  echo ""
}

## MacOSX
if [ `uname -s` = "Darwin" ]; then
  echo "Operation System: `uname -s`"
  echo ""
  echo "Checking required applications: [brew]"
  if ! type brew; then
    echo "Cannot find brew in \$PATH" 1>&2
    echo "exit 1" 1>&2
    exit 1
  fi
  brew_install ruby curl git zsh tig ctags tmux
  sym_link bash_profile bashrc vimrc zshrc gitignore
  sym_link_mac tmux.conf
  vundle_conf
  git_conf
  zsh_conf
fi

## Ubuntu
if [ `uname -s` = "Linux" ]; then
  echo "Operation System: `uname -s`"
  echo ""
  echo "Checking required applications: [apt-get]"
  if ! type apt-get; then
    echo "Cannot find apt-get in \$PATH" 1>&2
    echo "exit 1" 1>&2
    exit 1
  fi
  apt_install ruby curl git zsh tig ctags tmux
  sym_link bash_profile bashrc vimrc zshrc gitignore
  sym_link_linux tmux.conf
  vundle_conf
  git_conf
  zsh_conf
fi

