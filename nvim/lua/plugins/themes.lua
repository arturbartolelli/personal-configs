return {
	{
		"projekt0n/github-nvim-theme",
		opts = {},
		config = function(_, opts)
			require("github-theme").setup(opts)
		end,
	},
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_background = "soft"
			vim.g.everforest_enable_italic = false
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				terminalColors = true,
				theme = "wave",
				vim.cmd([[colorscheme kanagawa-wave]]),
			})
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		priority = 1000,
	},
}
