#!/bin/sh

FILES=( bash_profile bashrc )

for file in ${FILES[@]}
do
  ln -sv $PWD/$file $HOME/\.$file
done
