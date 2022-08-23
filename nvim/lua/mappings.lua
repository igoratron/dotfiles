local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- save
key_mapper('n', '<leader>w', ':wa<CR>')

-- disable search highlight
key_mapper('n', '<leader>jk', ':nohlsearch<CR>')
--
-- Telescope
key_mapper('n', '<leader>p', ':Telescope find_files<CR>')
key_mapper('n', '<leader>f', ':Telescope live_grep<CR>')

-- open vimrc
key_mapper('n', '<leader>v', ':tabedit $MYVIMRC<CR>')

-- fold
key_mapper('n', '<leader>zc', ':setlocal fdm=indent<CR>')

-- copy paste from clipboard
key_mapper('v', '<leader>y', '"*y')

--copy file name
key_mapper('n', '<leader>yfn', ':! echo % | pbcopy<CR>')

-- paste in current directory
key_mapper('c', '%%', '%:h')

key_mapper('n', '-', ':Explore<CR>')
key_mapper('n', '<C-p>', ':tabp<CR>')
key_mapper('n', '<C-n>', ':tabn<CR>')

-- vimdiff
key_mapper('n', '<leader>dor', ':diffget //3<CR>')
key_mapper('n', '<leader>dol', ':diffget //2<CR>')
key_mapper('n', '<leader>dor', ':diffget //3<CR>')
key_mapper('n', '<leader>dol', ':diffget //2<CR>')
key_mapper('n', '<leader>dp', ':diffput 1<CR>')

-- coc
key_mapper('n', 'gd', ':call CocActionAsync(\'jumpDefinition\')<CR>')
key_mapper('n', '<leader>ac', '<Plug>(coc-codeaction)')
