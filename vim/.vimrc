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

Plug 'sainnhe/vim-color-atlantis'       " Colorscheme
Plug 'vim-scripts/c.vim'
Plug 'gabrielelana/vim-markdown'        " Markdown formatting
Plug 'lervag/vimtex'                    " Latex
Plug 'chiel92/vim-autoformat'           " autoformatting
Plug 'valloric/youcompleteme'           " autocompletiong
Plug 'jiangmiao/auto-pairs'             " auto match brackets
" Plug 'yggdroot/indentline'              " indentation lines

call plug#end()

set termguicolors
colorscheme atlantis
" turns off that wierd orange shit
if &term =~ '256color'
        set t_ut=
endif

" cscope things (ctags but make it vim)
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set csverb
        " C symbol
        nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
        " definition
        nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
        " functions that called by this function
        nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
        " funtions that calling this function
        nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
        " test string
        nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
        " egrep pattern
        nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
        " file
        nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
        " files #including this file
        nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

        " Automatically make cscope connections
        function! LoadCscope()
                let db = findfile("cscope.out", ".;")
                if (!empty(db))
                        let path = strpart(db, 0, match(db, "/cscope.out$"))
                        set nocscopeverbose " suppress 'duplicate connection' error
                        exe "cs add " . db . " " . path
                        set cscopeverbose
                endif
        endfunction
        au BufEnter /* call LoadCscope()

endif
" -----------------------------------------------------------------------------------

let g:lightline = {'colorscheme': 'atlantis'}
let g:tex_flavor = 'xetex'

set t_ZH=[3m
set t_ZR=[23m

highlight Comments cterm=italic

let g:vim_markdown_math = 1
" let g:markdown_enable_conceal = 1

" Auto format on save
au BufWrite * :Autoformat

" Indentation lines
let g:indentLine_char = '|'
