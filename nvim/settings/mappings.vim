:let mapleader = "\<space>"

" ====================
" general
" ====================
"
"navigate wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"switch tabs
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>

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
