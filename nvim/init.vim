lua require('init')

" legacy autocmds
autocmd FileType gitcommit setlocal spell

augroup LineNumbers
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal relativenumber
  au WinLeave * setlocal norelativenumber
augroup END
" augroup ultisnips_no_auto_expansion
"   au!
"   au VimEnter * au! UltiSnips_AutoTrigger
" augroup END

augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=300 }
augroup END

" legacy highlight current line
function HighlightLine()
  execute 'match Search /\%'.line('.').'l/'
  call timer_start(500, { tid -> execute('match')})
endfunction

nnoremap <leader><leader> :call HighlightLine()<CR>
