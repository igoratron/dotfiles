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
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline_theme='lucius'
let g:airline_left_sep = ""
let g:airline_right_sep = ""

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
let g:indentLine_char = '⋮'

"test-vim
let test#strategy = 'neovim'
let test#javascript#mocha#executable = "$(npm bin)/mocha"
let test#javascript#mocha#options = '--compilers js:babel-register'

"neomake
if !empty(glob(".eslint*")) 
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_javascript_stylelint_exe="./node_modules/.bin/eslint"
endif

if !empty(glob(".stylelint*")) 
  let g:neomake_scss_enabled_makers = ['stylelint']
  let g:neomake_scss_stylelint_exe="./node_modules/.bin/stylelint"
endif

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"

"gundo
let g:gundo_prefer_python3 = 1

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript'] = ['file', 'ultisnips', 'ternjs']

"tern
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
autocmd CompleteDone * pclose

"devicons
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:LanguageClient_serverCommands = {
    \ 'javascript.jsx': ['~/.config/nvim/plugins/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'scss': ['node', '~/Development/igor/vscode/extensions/css/server/out/cssServerMain.js', '--stdio'],
    \ 'html': ['node', '~/Development/igor/vscode/extensions/html/server/out/htmlServerMain.js', '--stdio'],
    \ }
let g:LanguageClient_autoStart = 1
