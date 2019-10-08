call plug#begin('~/.config/nvim/plugins')
 Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
 Plug '/usr/local/opt/fzf'
 Plug 'Raimondi/delimitMate'
 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'SirVer/ultisnips'
 Plug 'Yggdroot/indentLine'
 Plug 'airblade/vim-gitgutter'
 Plug 'benekastah/neomake'
 Plug 'hail2u/vim-css3-syntax', { 'for': 'css'}
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
 Plug 'kassio/neoterm'
 Plug 'kshenoy/vim-signature'
 Plug 'ludovicchabant/vim-gutentags'
 Plug 'machakann/vim-highlightedyank'
 Plug 'mattn/emmet-vim'
 Plug 'mhinz/vim-grepper'
 Plug 'rhysd/clever-f.vim'
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
 Plug 'tpope/vim-repeat'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-unimpaired'
 Plug 'tpope/vim-vinegar'
 Plug 'wellle/targets.vim'
 " Plug 'yssl/QFEnter'
 
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
"
" substitue preview
:set inccommand=split

" =====================================
" others
" =====================================
set t_Co=256
colorscheme onehalfdark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" hi link htmlLink NONE "disable link underline
" hi VertSplit ctermbg=NONE guibg=NONE cterm=NONE ctermfg=124
" hi Normal ctermbg=NONE
" hi StatusLine ctermbg=124 ctermfg=white
" hi StatusLineNC ctermbg=black ctermfg=white
" hi TabLineSel ctermbg=124 ctermfg=white
" hi TabLine ctermbg=black ctermfg=white cterm=NONE
" hi TabLineFill ctermbg=black cterm=NONE
" hi Folded ctermbg=black
" hi Search cterm=none ctermbg=white ctermfg=black


"disable unused plugin providers
let g:loaded_node_provider = 1
let g:loaded_ruby_provider = 1
let g:loaded_python_provider = 1

let g:python3_host_skip_check=1
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

so ~/.config/nvim/settings/mappings.vim
so ~/.config/nvim/settings/plugins.vim

hi VertSplit ctermbg=0 ctermfg=245 cterm=none
hi TabLineFill cterm=NONE
hi Folded ctermbg=232
hi Visual ctermbg=8


set statusline=%#StatusLine#
set statusline+=\ %{toupper(mode())}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ \ %{fugitive#head()}\ 
set statusline+=%1*
set statusline+=\ %F
set statusline+=%=

set statusline+=%1*
set statusline+=\ %{&filetype}\ 
set statusline+=%#StatusLineNC#
set statusline+=\ %l/%L\ %P\ 
