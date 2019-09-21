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

"vim lang sever

let g:LanguageClient_serverCommands = {
      \ 'ruby': ['solargraph', 'stdio'],
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \ }
 " let g:LanguageClient_loggingLevel='DEBUG'
 " let g:LanguageClient_loggingFile='/Users/iczerwinski/LC.log'
