set langmenu=en_US " set menu languase to english 
language en_US.UTF-8             " sets language to English
set spell               " spell checker
syntax enable 		" good highlighting
set tabstop=8 		" make tabs 8 spaces
set expandtab 
set number		" line numbers
filetype indent on 	" good indenting 
filetype plugin on      " open correct plugin for file types
set autoindent		
set conceallevel=2

set backspace=indent,eol,start 
set mouse=a             " enable mouse use 

" -----------------------------------------------------------------------------------
"  Plugins 
" -----------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'            " lightline bar (pretty wiht nord)
Plug 'arcticicestudio/nord-vim'         " nord theme
Plug 'chiel92/vim-autoformat'           " autoformatting 
Plug 'jiangmiao/auto-pairs'             " automaatch braces
Plug 'tmux-plugins/vim-tmux-focus-events' " needed for clipboard sharing
Plug 'roxma/vim-tmux-clipboard'         " combine vim and tmux clipboards
Plug 'valloric/youcompleteme'           " autocompletion
Plug 'plasticboy/vim-markdown'          " markdown plugin
Plug 'psf/black'                        " Python autoformatting with black
Plug 'google/yapf'                      " Python autoformatting with yapf
Plug 'gilsondev/searchtasks.vim'        " Search TODO, FIXME, and XXX
Plug 'rust-lang/rust.vim'               " Rust language support
Plug 'uncrustify/uncrustify'            " Uncrustify plugin
Plug 'rhysd/vim-clang-format'           "clang formatter

call plug#end()

" Enable Lightline bar for Nord 
set laststatus=2
let g:lightline={"colorscheme":"nord"}

" Colorscheme 
colorscheme nord

" ---------------------------------------------------------------------------------
" Markdown options
" ---------------------------------------------------------------------------------
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_conceal=2
                        
" ---------------------------------------------------------------------------------
" Latex settings for vim-latex
" ---------------------------------------------------------------------------------
let g:tex_falvor='latex'

" Fixing italics things
set t_ZH=[3m
set t_ZR=[23m
highlight Comment cterm=italic

" ---------------------------------------------------------------------------------
"  Autoformatting options/ commands 
" ---------------------------------------------------------------------------------

" Assign a key for autoformatting
" noremap <F3> :Autoformat<CR>

" Atoformat on save 
" au BufWrite * :Autoformat


" let g:black_fast = 0
let g:black_linelength = 120
" let g:black_skip_string_normalization = 0
" let g:black_virtualenv = ?


" ---------------------------------------------------------------------------------
"  Task Searching
" ---------------------------------------------------------------------------------
let g:searchtasks_list=["TODO", "FIXME", "XXX", "NOTE", "QUESTION"]
