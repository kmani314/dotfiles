filetype on " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'   
Plugin 'dense-analysis/ale'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-commentary'
Plugin 'chrisbra/colorizer'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
"vim-glsl is broken
"autocmd! BufNewFile,BufRead *.frag,*.vert set ft=glsl
:let g:colorizer_auto_filetype='css,html'
" :let g:ale_completion_enabled=1

set termguicolors
colorscheme base16-material

set nocompatible "not compatible with vi
set t_Co=256
set updatetime=750
set showmode
set autoindent
set smarttab
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=0
set novisualbell
set noerrorbells
set guicursor=

set clipboard=unnamedplus
set backspace=indent,eol,start

set timeoutlen=200
let mapleader=","

au BufNewFile,BufRead *.ejs set filetype=html

set number
" set relativenumber
set numberwidth=5
hi LineNr guibg=NONE
hi CursorLineNr guifg=red

hi ALEWarning ctermbg=yellow ctermfg=white
hi ALEError ctermbg=red ctermfg=white
hi Aleinfo ctermbg=green ctermfg=white
hi ALEStyleError ctermbg=red ctermfg=white
hi ALEStyleWarning ctermbg=yellow ctermfg=white

highlight Comment cterm=italic gui=italic

highlight Visual term=reverse cterm=reverse

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Black Hole Register remap for deletes
nnoremap d "_d
vnoremap d "_d
