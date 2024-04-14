vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- save
vim.keymap.set('n', '<leader>w', vim.cmd.wa)

-- disable search highlight
vim.keymap.set('n', '<leader>jk', vim.cmd.nohlsearch)
vim.keymap.set('n', '<leader><esc>', vim.cmd.nohlsearch)

-- open vimrc
vim.keymap.set('n', '<leader>v', ':tabedit $MYVIMRC<CR>')

-- fold
vim.keymap.set('n', '<leader>zc', ':setlocal fdm=indent<CR>')

-- copy paste from clipboard
vim.keymap.set('v', '<leader>y', '"*y')

--copy file name
vim.keymap.set('n', '<leader>yfn', ':! echo % | pbcopy<CR>')

-- paste in current directory
vim.keymap.set('c', '%%', '%:h')

vim.keymap.set('n', '<C-p>', vim.cmd.tabp)
vim.keymap.set('n', '<C-n>', vim.cmd.tabn)

-- vimdiff
vim.keymap.set('n', '<leader>dor', ':diffget //3<CR>')
vim.keymap.set('n', '<leader>dol', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>dor', ':diffget //3<CR>')
vim.keymap.set('n', '<leader>dol', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>dp', ':diffput 1<CR>')

-- move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center after move
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
