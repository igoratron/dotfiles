return {
  { 'numToStr/Comment.nvim', config = true, event = 'VeryLazy' },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    event = 'VeryLazy'
  },
  { 'arthurxavierx/vim-caser', event = "BufReadPost" },
  { 'tpope/vim-unimpaired', event = "BufReadPost" },
  { 'tpope/vim-fugitive', cmd = { "G", "Git" } },
   { 'tpope/vim-rhubarb', cmd = { "GBrowse" }},
}
