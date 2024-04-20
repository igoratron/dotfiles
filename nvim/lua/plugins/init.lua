return {
	{ "numToStr/Comment.nvim", config = true, event = "VeryLazy" },
	{ "nvim-treesitter/nvim-treesitter-context", opts = {}, event = "VeryLazy" },
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			scope = {
				enabled = false,
			},
			indent = {
				char = "┊",
			},
		},
		event = "VeryLazy",
	},
	{ "arthurxavierx/vim-caser", event = "BufReadPost" },
	{ "tpope/vim-unimpaired", event = "BufReadPost" },
	{ "tpope/vim-rhubarb", cmd = { "GBrowse" } },
}
