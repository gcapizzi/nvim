call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'reedes/vim-pencil'
Plug 'ajh17/VimCompletesMe'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wincent/terminus'
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'

call plug#end()

" Dracula
" https://github.com/dracula/vim/issues/65
let g:dracula_colorterm = 0

" FZF
" https://github.com/junegunn/fzf#respecting-gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Ale
let g:ale_fixers = {'rust': ['rustfmt']}
let g:ale_linters = {'rust': ['rls']}
let g:ale_fix_on_save = 1

colorscheme dracula

set number
set cursorline

map <c-l> :noh<cr>
map <c-p> :Files<cr>
map <c-j> :Ag<cr>
