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

cat > .vimrc <<EOF
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
EOF

# Install synthtastic
cd .vim/bundle && \
git clone --depth=1 https://github.com/scrooloose/syntastic.git

# Install APIB mode
git clone https://github.com/kylef/apiblueprint.vim.git

