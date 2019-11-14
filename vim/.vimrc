syntax enable
set tabstop=8
set expandtab
set number
filetype indent on
set autoindent
set conceallevel=2

set nocompatible
filetype off
filetype plugin indent on
set backspace=indent,eol,start

set mouse=a


call plug#begin('~/.vim/plugged')

Plug 'sainnhe/vim-color-atlantis'
Plug 'vim-scripts/c.vim'
Plug 'gabrielelana/vim-markdown'
" Plug 'plasticboy/vim-markdown'
" Plug 'tpope/vim-markdown'

call plug#end()

set termguicolors
colorscheme atlantis
" turns off that wierd orange shit 
if &term =~ '256color'
        set t_ut=
endif

let g:lightline = {'colorscheme': 'atlantis'}

set t_ZH=[3m
set t_ZR=[23m

highlight Comments cterm=italic

let g:vim_markdown_math = 1
let g:markdown_enable_conceal = 1
