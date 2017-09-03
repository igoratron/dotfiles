"indentLine
let g:indentLine_char = '⋮'

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

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'jspc#omni'
\]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript'] = ['file', 'ultisnips']

"fzf
let g:fzf_history_dir = '~/.config/fzf-history'

let g:LanguageClient_serverCommands = {
    \ 'javascript.jsx': ['~/.config/nvim/plugins/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'scss': ['node', '~/Development/igor/vscode/extensions/css/server/out/cssServerMain.js', '--stdio'],
    \ 'html': ['node', '~/Development/igor/vscode/extensions/html/server/out/htmlServerMain.js', '--stdio'],
    \ }
let g:LanguageClient_autoStart = 1
