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
