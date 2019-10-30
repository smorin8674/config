syntax enable
set tabstop=8
set expandtab
set number
filetype indent on
set autoindent

set nocompatible
filetype off
filetype plugin indent on

set backspace=indent,eol,start

call plug#begin('~/vim/plugged')
Plug 'sainnhe/vim-color-atlantis'
Plug 'vim-scripts/c.vim'

call plug#end()

set termguicolors
colorscheme atlantis

if &term =~ '256color'
        set t_ut=
endif        
        

let g:lightline = {'colorscheme': 'atlantis'}
