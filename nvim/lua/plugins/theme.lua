return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd("colorscheme tokyonight")
		if os.getenv("I_THEME") == "dark" then
			vim.o.background = dark
		else
			vim.o.background = light
		end
	end,
	opts = {
		style = "night",
	},
}
