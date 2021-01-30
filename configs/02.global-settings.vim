let mapleader=" "

set encoding=UTF-8

set autoindent
set smartindent
set cindent

set ruler
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set relativenumber
set number
set numberwidth=5

set splitbelow
set splitright

set scrolloff=10

syntax on 
set background=dark
colorscheme gruvbox 
set termguicolors

" coc
set hidden
set nobackup
set nowritebackup
set updatetime=300

" set nohls

set clipboard=unnamed
set nocompatible

vmap <Tab> >gv
vmap <S-Tab> <gv

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

nnoremap <C-a> ggVG
