#!/bin/sh

brew_install() {
  echo "Checking required applications: [$1]"
  if ! type $1; then
    echo "Cannot find $1 in \$PATH" 1>&2
    echo "Installing [brew install $1]"
  fi
}

sym_link() {
  while [ "$1" != "" ]
  do
    ln -sv $PWD/$1 $HOME/\.$1
    shift 1
  done
}


## MacOSX
if [ `uname -s` == "Darwin" ]; then
  echo "Operation System: `uname -s`"
  echo "Checking required applications: [brew]"
  if ! type brew; then
    echo "Cannot find brew in \$PATH" 1>&2
    echo "exit 1" 1>&2
    exit 1
  fi
  brew_install ruby
  brew_install git
  brew_install zsh
  brew_install tig
  brew_install tmux
  sym_link bash_profile bashrc


#  FILES=( bash_profile bashrc )
#  for file in ${FILES[@]}
#  do
#      ln -sv $PWD/../$file $HOME/\.$file
#  done
fi

## Linux
if [ `uname -s` == "Linux" ]; then
  echo "Operation System: `uname -s`"
fi

