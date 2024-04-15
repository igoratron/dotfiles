return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "BufReadPost",
	opts = {
		ensure_installed = {
			"bash",
			"cmake",
			"css",
			"dockerfile",
			"go",
			"graphql",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"jsonc",
			"lua",
			"luadoc",
			"markdown",
			"python",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
		},
		auto_install = true,
		indent = { enable = true },
	},
	config = function(_, opts)
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)
	end,
}
