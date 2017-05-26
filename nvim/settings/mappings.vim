:let mapleader = "\<space>"

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

"remap esc
imap jk <Esc>

"scroll up or down
nnoremap <C-k> <C-y>


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

"qfenter
let g:qfenter_open_map = ['o']
let g:qfenter_vopen_map = ['<c-v>']
let g:qfenter_hopen_map = ['<c-s>']
let g:qfenter_topen_map = ['<c-t>']

"gundo
nmap U :GundoToggle<CR>

"CtrlP
nmap <leader>tag :CtrlPTag<CR>

nmap <leader>p :Files<CR>
nmap <leader>t :Tags<CR>

"Tern
autocmd FileType javascript nmap gd :TernDef<CR>
autocmd FileType javascript nmap gr :TernRefs<CR>

"codi
let g:codi#rightalign = 0

"fzf
imap <c-x><c-l> <plug>(fzf-complete-line)
