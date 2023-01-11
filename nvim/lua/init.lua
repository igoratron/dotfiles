vim.o.autoindent = true
vim.o.autoread = true
vim.o.backup = false
vim.o.breakindent = true
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.inccommand = 'nosplit'
vim.o.incsearch = true
vim.o.linebreak = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.showbreak = '↪ '
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.syntax = 'on'
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.updatetime = 300
vim.o.wrap = true
vim.o.writebackup = false

vim.opt.listchars = {
  tab       = '→ '  ,
  eol       = '↲'   ,
  nbsp      = '␣'   ,
  trail     = '•'   ,
  extends   = '⟩'   ,
  precedes  = '⟨'   ,
}

vim.g.loaded_python_provider = 0
vim.g.python3_host_prog = '/Users/igorczerwinski/.pyenv/versions/neovim3/bin/python'
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.g.mapleader      = ' '
vim.g.maplocalleader = ' '

require 'plugins'
require 'mappings'

-- pcall(vim.cmd, [[colorscheme xcodelighthc]])
pcall(vim.cmd, [[colorscheme dracula]])
