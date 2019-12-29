syntax enable 		" good highlighting
set tabstop=8 		" make tabs 8 spaces
set expandtab 
set number		" line numbers
filetype indent on 	" good indenting 
set autoindent		

set backspace=indent,eol,start 
set mouse=a


" -----------------------------------------------------------------------------------
"  Plugins 
" -----------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'            " lightline bar (pretty wiht nord)
Plug 'arcticicestudio/nord-vim'         " nord theme
Plug 'chiel92/vim-autoformat'           " autoformatting 

call plug#end()

" Enable Lightline bar for Nord 
set laststatus=2
let g:lightline={"colorscheme":"nord"}

" Colorscheme 
colorscheme nord

" ---------------------------------------------------------------------------------
"  Autoformatting options/ commands 
" ---------------------------------------------------------------------------------

" Assign a key for autoformatting
" noremap <F3> :Autoformat<CR>

" Atoformat on save 
" au BufWrite * :Autoformat

