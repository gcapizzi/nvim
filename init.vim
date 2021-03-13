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
Plug 'justinmk/vim-dirvish'

call plug#end()

" FZF
" https://github.com/junegunn/fzf#respecting-gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files'

" LSP
lua require'lspconfig'.gopls.setup{}

autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync()

setlocal omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <silent> K  <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <silent> gR <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <silent> g0 <cmd>lua vim.lsp.buf.document_symbol()<cr>
nnoremap <silent> gW <cmd>lua vim.lsp.buf.workspace_symbol()<cr>

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

nnoremap <c-l> :noh<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-j> :Rg<cr>
nnoremap <c-k> :GrepperRg 
