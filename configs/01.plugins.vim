call plug#begin('~/.config/nvim/bundle')

" themes
Plug 'morhetz/gruvbox'

" syntax
Plug 'scrooloose/syntastic'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'HerringtonDarkholme/yats.vim'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kamykn/spelunker.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/tagbar'
Plug 'junegunn/rainbow_parentheses.vim'

" search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
call plug#end()
