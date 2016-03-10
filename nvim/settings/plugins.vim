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
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#hunks#enabled = 0

"ctrlp
let g:ctrlp_working_path_mode = 0 "ctrlp does not change dirs
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore-dir "node_modules/"
      \ --ignore-dir "dist/"
      \ --ignore-dir "vendor/"
      \ -g ""'

"indentLine
let g:indentLine_char = '·'

"test-vim
let test#strategy = 'neovim'
let test#javascript#mocha#options = '--compilers js:babel-register'

"neomake
if filereadable(glob(".eslintrc.*"))
  let g:neomake_javascript_enabled_makers = ['eslint']
endif

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
