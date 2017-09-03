:let mapleader = "\<space>"

" ====================
" general
" ====================
"
"navigate wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"switch tabs
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

"search for visually selected word
vnoremap // y/<C-R>"<CR>

"remap esc
inoremap jk <Esc>
vnoremap jk <Esc>

"scroll up or down
" nnoremap <C-k> <C-y>


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

" ====================
" plugins
" ====================

"vimgrep
nnoremap <leader>f  :Grepper -tool ag  -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

"qfenter
let g:qfenter_open_map = ['o']
let g:qfenter_vopen_map = ['<c-v>']
let g:qfenter_hopen_map = ['<c-s>']
let g:qfenter_topen_map = ['<c-t>']

"fzf
nmap <leader>p :Files<CR>
nmap <leader>t :Tags<CR>
