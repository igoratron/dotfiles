return {
	"projekt0n/github-nvim-theme",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	init = function()
		if os.getenv("I_THEME") == "dark" then
			vim.cmd("colorscheme github_dark_default")
		else
			vim.cmd("colorscheme github_light")
		end
	end,
}
