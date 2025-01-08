require("config.lazy")

vim.opt.scrolloff = 10
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.keymap.set('n', '<leader>pv', ':Vex<CR>')
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>",
    { noremap = true, silent = true, desc = "Fuzzy find files" })
vim.keymap.set('n', '<leader>pf', ':Files<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
