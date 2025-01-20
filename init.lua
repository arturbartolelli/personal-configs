    require("config.lazy")
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pv', ':Vex<CR>')
vim.keymap.set('n', '<leader><CR>', ':so %<CR>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set("n", "<leader>pf", builtin.find_files, { noremap = true, silent = true, desc = "Fuzzy find files" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { noremap = true, silent = true, desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>o", function()
			builtin.buffers(ivy)
		end, { desc = "[ ] Find existing buffers" })

vim.keymap.set('n', '<leader>pv', ':Ex<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.cmd("set background=dark")
vim.cmd("colorscheme everforest")
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.cmd([[
  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\e[6 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\e[2 q\<Esc>\\"
  else
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[2 q"
  endif
]])
