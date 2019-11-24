set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'   " dependencies #1
Plugin 'tomtom/tlib_vim'                " dependencies #2
Plugin 'honza/vim-snippets'             " snippets repo
Plugin 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plugin 'iamcco/markdown-preview.vim' 	" Markdown files preview
Plugin 'eigenfoo/stan-vim'
call vundle#end()  
filetype plugin indent on
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding with a spacebar
nnoremap <space> za
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed
let python_highlight_all=1
syntax on
set nu
set encoding=utf-8

" Pep 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:snippets_dir = "~/.vim/vim-snippets/snippets"

map <F3> :NERDTreeToggle<CR>

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_lint = 1
let g:pymode_lint_checker = "pep8"
let g:pymode_lint_ignore="E501,W601,C0110,E2"

let g:pymode_lint_write = 1

let g:pymode_virtualenv = 1

inoremap <C-space> <C-x><C-o>
nnoremap <F5> :ConqueTermSplit ipython<CR>
" Remap Pipe operator in R
autocmd FileType r inoremap <buffer> > <Esc>:normal! a %>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> > <Esc>:normal! a %>%<CR>a 
autocmd FileType rmd inoremap <buffer> > <Esc>:normal! a %>%<CR>a 
