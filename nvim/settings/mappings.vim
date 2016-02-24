:let mapleader = ","

" ====================
" general
" ====================
"
"navigate wrapped lines
nmap j gj
nmap k gk

"indent lines
vnoremap > >gv
vnoremap < <gv

"switch tabs
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

"search for visually selected word
vnoremap // y/<C-R>"<CR>

" ====================
" leader mappings
" ====================

"disable search highlight
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

"exit insert mode in terminal
tnoremap <leader>te <C-\><C-n>
"
"open vimrc in new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

"fold
nmap <leader>zc :setlocal fdm=indent<CR>

" ====================
" plugins
" ====================

"vimgrep
nnoremap <leader>f  :Grepper -tool ag  -grepprg ag --vimgrep<cr>
nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

"nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

let g:NERDTreeMapOpenSplit = '<C-s>'
let g:NERDTreeMapOpenVSplit = '<C-v>'
let g:NERDTreeMapOpenInTab = '<C-t>'

"test vim
nmap <silent> <leader>to :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tt :TestLast<CR>
nmap <silent> <leader>tz let test#ruby#rspec#executable = 'zeus rspec'<CR>
