call plug#begin('~/.config/nvim/plugins')

Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'
Plug 'kshenoy/vim-signature'

call plug#end()

"show cursor line
set cursorline

"theming
set background=dark
colorscheme solarized

"show relative line numbers
set relativenumber
"
"show line numbers
set number

"enable case smart sensitive search
set ignorecase
set smartcase

"show trailing whitespace
set list
set listchars=trail:˽,extends:⋯,precedes:⋯

"indent wrapped lines
set breakindent

"disable swap
:set noswapfile

"disable link underline
:hi link htmlLink NONE

"tab settings
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

syntax on

"don't split words on wrap
set linebreak

"mappings
"
"navigate wrapped lines
nmap j gj
nmap k gk

"indent lines
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"switch tabs
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

"remap leader
:let mapleader = ","
"
"search for visually selected word
vnoremap // y/<C-R>"<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

"test vim
nmap <silent> <leader>to :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tt :TestLast<CR>

"grepper
nnoremap <leader>f :Grepper! -tool ag  -open -switch<cr>
nnoremap <leader>* :Grepper! -tool ag -cword<cr>

"PLUGINS

"airline
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
\}
let g:airline_powerline_fonts = 1 "enable powerline symbols for airline
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#hunks#enabled = 0

"ctrlp
let g:ctrlp_working_path_mode = 0 "ctrlp does not change dirs
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore "node_modules/"
      \ --ignore "dist/"
      \ -g ""'

"indentLine
let g:indentLine_char = '·'

"test-vim
let test#strategy = 'neovim'
let test#javascript#mocha#options = '--compilers js:babel-register'

"neomake
autocmd! BufWritePost,BufReadPost * Neomake
