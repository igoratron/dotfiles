call plug#begin('~/.config/nvim/plugins')

Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'
Plug 'kshenoy/vim-signature'
Plug 'SirVer/ultisnips'

call plug#end()

" =====================================
" moving around, searching and patterns
" =====================================
set ignorecase
set smartcase
"
" =====================================
" displaying text
" =====================================
set breakindent
set linebreak
set list
set listchars=trail:˽,extends:⋯,precedes:⋯,tab:>-
set number
set relativenumber

" =====================================
" syntax, highlighting and spelling
" =====================================
set background=dark
set cursorline "highlight the screen line of the cursor
syntax on

" =====================================
" tabs and indenting
" =====================================
set expandtab
set shiftwidth=2
set smartindent
set tabstop=2

" =====================================
" the swap file
" =====================================
:set noswapfile

" =====================================
" command line editing
" =====================================
if !isdirectory($HOME . "/.config/nvim/undo")
    call mkdir($HOME . "/.config/nvim/undo", "p")
endif
set undodir=$HOME/.vim/undo " where to save undo histories
set undofile                " Save undo's after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" =====================================
" others
" =====================================
colorscheme solarized
:hi link htmlLink NONE "disable link underline

" =====================================
" autocommands
" =====================================
autocmd FileType gitcommit setlocal spell
autocmd! BufWritePost,BufReadPost * Neomake

so ~/.config/nvim/settings/mappings.vim
so ~/.config/nvim/settings/plugins.vim
