call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-expand-region'
Plug 'reedes/vim-pencil'
Plug 'ervandew/supertab'
Plug 'dracula/vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

colorscheme dracula

set number
set cursorline

map <c-l> :noh<cr>
map <c-p> :Files<cr>
map <c-j> :Ag<cr>
