return {
    {
        "projekt0n/github-nvim-theme",
        opts = {
        },
        config = function(_, opts)
            require("github-theme").setup(opts)
            vim.cmd("colorscheme github_dark_default")
        end,
    },

    -- Fuzzy Finder (Telescope)
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
