#!/bin/bash

##
# Install APIB mode for Vim via Pathogen
#
# Requires drafter
#

# First install pathogen
cd /home/ubuntu
mkdir -p .vim/autoload .vim/bundle
curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "execute pathogen#infect()" >> /home/ubuntu/.vimrc
echo "syntax on" >> /home/ubuntu/.vimrc
echo "filetype plugin indent on" >> /home/ubuntu/.vimrc

# Install synthtastic
cd .vim/bundle && \
git clone --depth=1 https://github.com/scrooloose/syntastic.git

# Install APIB mode
git clone https://github.com/kylef/apiblueprint.vim.git .vim/bundle/apiblueprint.vim

