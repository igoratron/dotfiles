call plug#begin('~/.config/nvim/plugins')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
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
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'chriskempson/base16-vim'
" Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript'}
Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby'}
" Plug 'ternjs/tern_for_vim', { 'for': 'javascript'}
Plug 'yssl/QFEnter'
Plug 'sjl/gundo.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kassio/neoterm'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'junegunn/goyo.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

Plug 'sourcegraph/javascript-typescript-langserver', { 'do': 'npm install && npm run build'}
Plug 'tpope/vim-unimpaired'

call plug#end()

set rtp+=/Users/iczerwinski/.config/nvim/plugins/vim-mechanodoro


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

" =====================================
" syntax, highlighting and spelling
" =====================================
set background=dark
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
" let base16colorspace=256
colorscheme base16-eighties

hi link htmlLink NONE "disable link underline
hi VertSplit ctermbg=NONE guibg=NONE
hi Normal ctermbg=NONE

let g:loaded_python_provider = 1
let g:python3_host_prog = '/usr/local/bin/python3'

"opens splits in the 'right' way
set splitbelow
set splitright

"show wrapped lines
set showbreak=↪\ 

"ignore folders I don't care about
set wildignore+=node_modules,dist


" =====================================
" autocommands
" =====================================
autocmd FileType gitcommit setlocal spell
autocmd! BufWritePost,BufReadPost * Neomake
autocmd bufwritepost .vimrc source $MYVIMRC
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

augroup LineNumbers
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal relativenumber
  au WinLeave * setlocal norelativenumber
augroup END

so ~/.config/nvim/settings/mappings.vim
so ~/.config/nvim/settings/plugins.vim

set statusline=%#StatusLine#
set statusline+=\ %{toupper(mode())}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ \ %{fugitive#head()}\ 
set statusline+=%1*
set statusline+=\ %.20F
set statusline+=%=
" set statusline+=%#DiffDelete#
" set statusline+=\ \ No\ pomodoros\ 
set statusline+=%{gutentags#statusline('[Generating\ tags...]')}

set statusline+=%1*
set statusline+=\ %{&filetype}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ %l/%L\ %P\ 
