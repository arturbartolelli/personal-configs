return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			defaults = {
				mappings = {
					i = { ["<C-u>"] = false, ["<C-d>"] = false },
				},
			},
		},
	},
}
