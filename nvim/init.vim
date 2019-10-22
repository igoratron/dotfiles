" # vim: fdm=marker

" {{{ Plugin list
call plug#begin('~/.config/nvim/plugins')
 Plug '/usr/local/opt/fzf'
 Plug 'Raimondi/delimitMate'
 Plug 'SirVer/ultisnips'
 Plug 'Yggdroot/indentLine'
 Plug 'benekastah/neomake'
 Plug 'hail2u/vim-css3-syntax', { 'for': 'css'}
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
 Plug 'kshenoy/vim-signature'
 Plug 'ludovicchabant/vim-gutentags'
 Plug 'machakann/vim-highlightedyank'
 Plug 'mattn/emmet-vim'
 Plug 'sonph/onehalf', {'rtp': 'vim/'}
 Plug 'mhinz/vim-grepper'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'rhysd/clever-f.vim'
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-repeat'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-unimpaired'
 Plug 'tpope/vim-vinegar'
 Plug 'wellle/targets.vim'
call plug#end()
" }}}

" {{{ Vim configuration
set ignorecase
set smartcase
set breakindent
set linebreak
set list
set listchars=trail:˽,extends:⋯,precedes:⋯,tab:>-
set number
syntax on
set expandtab
set shiftwidth=2
set smartindent
set tabstop=2
set noswapfile
if !isdirectory($HOME . "/.config/nvim/undo")
    call mkdir($HOME . "/.config/nvim/undo", "p")
endif
set undodir=$HOME/.vim/undo " where to save undo histories
set undofile                " Save undo's after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set inccommand=split
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set splitbelow
set splitright
set showbreak=↪\ 
set wildignore+=node_modules,dist
"
"disable unused plugin providers
let g:loaded_node_provider = 1
let g:loaded_ruby_provider = 1
let g:loaded_python_provider = 1

let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" {{{ Theme
colorscheme onehalfdark
set background=dark
" }}}

" {{{ Autocommands
autocmd FileType gitcommit setlocal spell
autocmd! BufWritePost,BufReadPost * Neomake
autocmd BufWritePost .vimrc source $MYVIMRC

augroup LineNumbers
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal relativenumber
  au WinLeave * setlocal norelativenumber
augroup END
aug fzf_setup
  au!
  au TermOpen term://*FZF tnoremap <silent> <buffer><nowait> <esc> <c-c>
aug END
augroup ultisnips_no_auto_expansion
  au!
  au VimEnter * au! UltiSnips_AutoTrigger
augroup END
" }}}

" {{{ Status line configuration
set statusline=%#StatusLine#
set statusline+=\ %{toupper(mode())}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ %.30{fugitive#head()}\ 
set statusline+=%1*
set statusline+=\ %.50F
set statusline+=%=

set statusline+=%1*
set statusline+=\ %{coc#status()}\ 
set statusline+=\ %{&filetype}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ %l/%L\ %P\ 
" }}}

" {{{ Plugin configuration
"indentLine
let g:indentLine_char = '⋮'

"neomake
if !empty(glob(".eslint*")) 
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_javascript_eslint_exe="eslint"
endif

if !empty(glob(".stylelint*")) 
  let g:neomake_scss_enabled_makers = ['stylelint']
  let g:neomake_scss_stylelint_exe="stylelint"
endif

"ultisnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"

"fzf
let g:fzf_history_dir = '~/.config/fzf-history'
" }}}

" {{{ Key mappings
let mapleader = "\<space>"

" ====================
" general
" ====================
"
"navigate wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"switch tabs
nnoremap <C-p> :tabp<CR>
nnoremap <C-n> :tabn<CR>

"switch panes
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"search for visually selected word
vnoremap // y/<C-R>"<CR>

"remap esc
inoremap jk <Esc>

" ====================
" leader mappings
" ====================

"disable search highlight
nnoremap <leader>jk :<C-u>nohlsearch<CR>

"exit insert mode in terminal
tnoremap <leader>jk <C-\><C-n>
"
"open vimrc in new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

"fold
nmap <leader>zc :setlocal fdm=indent<CR>

"save
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>

"quit
nmap <leader>qa :qa<CR>

"copy paste from clipboard
vmap <leader>y "*y
vmap <leader>p "*p

"copy file name
nnoremap <leader>yfn :! echo % \| pbcopy<CR>

"open netrw
nnoremap <leader>e :Explore<CR>

"paste in current directory
cnoremap %% %:h

" ====================
" plugins
" ====================

"vimgrep
nnoremap <leader>f  :Grepper -tool ag  -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

"fzf
nmap <leader>p :Files<CR>
nmap <leader>t :Tags<CR>

function HighlightLine()
  execute 'match Search /\%'.line('.').'l/'
  call timer_start(500, { tid -> execute('match')})
endfunction

nnoremap <leader><leader> :call HighlightLine()<CR>

"vimdiff
nnoremap dor :diffget //3<CR>
nnoremap dol :diffget //2<CR>
vnoremap dor :diffget //3<CR>
vnoremap dol :diffget //2<CR>
vnoremap dp :diffput 1<CR>

nmap <silent> gd <Plug>(coc-definition)
" }}}
