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
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-grepper'
Plug 'ajh17/VimCompletesMe'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wincent/terminus'
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'
Plug 'justinmk/vim-dirvish'

call plug#end()

" FZF
" https://github.com/junegunn/fzf#respecting-gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files'

" Ale
let g:ale_fixers = {'rust': ['rustfmt']}
let g:ale_fix_on_save = 1
let g:ale_virtualtext_cursor = 1

" Startify
let g:startify_change_to_vcs_root = 1

" Dirvish
autocmd FileType dirvish
  \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<cr>
  \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<cr>

" Settings and mappings

colorscheme dracula

set cursorline
set hidden
set ignorecase
set number
set smartcase
set termguicolors
set undofile

map <c-l> :noh<cr>
map <c-p> :Files<cr>
map <c-j> :Rg<cr>
map <c-k> :GrepperRg 
