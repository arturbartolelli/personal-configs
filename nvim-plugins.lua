return {
  {
    "projekt0n/github-nvim-theme",
    opts = {
    },
    config = function(_, opts)
      require("github-theme").setup(opts)
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
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
       require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  },
  {
      'sainnhe/everforest',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.everforest_background = 'soft'
        vim.g.everforest_enable_italic = false
      end
   }
}


