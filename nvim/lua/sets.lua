vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.o.autoindent = true
vim.o.autoread = true
vim.o.backup = false
vim.o.breakindent = true
vim.o.completeopt = 'menuone,noselect'
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = 'nosplit'
vim.o.incsearch = true
vim.o.linebreak = true
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 1
vim.o.shortmess = vim.o.shortmess .. "Ic"
vim.o.showbreak = '↪ '
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.updatetime = 300
vim.o.wrap = true
vim.o.writebackup = false
vim.wo.number = true
vim.wo.signcolumn = 'yes'

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.opt.listchars = {
  tab       = '→ '  ,
  eol       = '↲'   ,
  nbsp      = '␣'   ,
  trail     = '•'   ,
  extends   = '⟩'   ,
  precedes  = '⟨'   ,
}


-- new
vim.opt.cursorline = true
vim.opt.spelloptions = 'camel'
vim.opt.spell = true
