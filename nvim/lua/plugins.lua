-- # vim: fdm=marker
vim.cmd [[packadd packer.nvim]]

-- {{{ Plugin list
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-vinegar'
  use 'arthurxavierx/vim-caser'
  use "steelsojka/pears.nvim"
  use 'romgrk/nvim-treesitter-context'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'kshenoy/vim-signature'
  use 'rhysd/clever-f.vim'
  use 'SirVer/ultisnips'
  use { 'neoclide/coc.nvim', branch = 'release'}
  use { 'junegunn/goyo.vim', cmd = 'Goyo' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'dracula/vim', as = 'dracula'}
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
end)
-- }}}

-- {{{ Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "go",
    "javascript",
    "typescript",
    "json",
    "jsonc",
    "jsdoc",
    "lua",
    "python",
    "html",
    "css",
    "toml",
    "cmake",
    "dockerfile",
    "graphql",
    "python",
  },
  highlight = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["al"] = "@block.outer",
        ["il"] = "@block.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
-- }}}

-- {{{ Indent-blankline
require("indent_blankline").setup {
  char = '⎸',
  use_treesitter = true,
  show_current_context = true,
}
-- }}}

-- {{{ Pears
require "pears".setup()
-- }}}

-- {{{ Lualine
require('lualine').setup{
  options = {
    theme = 'dracula',
    section_separators = '',
    component_separators = '',
  },
  sections = {
    lualine_a = {{'mode', format=function(mode) return mode:sub(1,1) end}},
    lualine_c = {{'filename', file_status = true, path = 1}},
    lualine_x = {'filetype'},
  },
}
-- }}}

-- {{{ coc-nvim
vim.g.coc_global_extensions = {'coc-json', 'coc-tsserver'}
--}}}
