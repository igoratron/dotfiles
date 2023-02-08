return {
  'tpope/vim-unimpaired',
  'nvim-treesitter/nvim-treesitter-textobjects',
  'navarasu/onedark.nvim',
  { 'tpope/vim-sleuth' },
  { 'arthurxavierx/vim-caser', event = "BufReadPost" },
  { 'j-hui/fidget.nvim', config = true },

  { 'tpope/vim-fugitive', cmd = { "G", "Git" } },
  { 'tpope/vim-rhubarb', cmd = { "GBrowse" }},
  { 'numToStr/Comment.nvim', config = true },
  { 'windwp/nvim-autopairs', config = true },
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end,
  },
}
