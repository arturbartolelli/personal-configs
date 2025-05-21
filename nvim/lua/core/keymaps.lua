local builtin = require("telescope.builtin")

-- Telescope
vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true, desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>pf", builtin.git_files, { noremap = true, silent = true, desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>o", function()
	builtin.buffers({
		sort_mru = true,
		ignore_current_buffer = true,
	})
end, {
	desc = "[ ] Find existing buffers",
})
vim.keymap.set("n", "<leader>sa", builtin.live_grep, { desc = "[S]earch current [W]ord" })

-- Binds
vim.keymap.set("n", "<leader>pv", ":Vex<CR>")
vim.keymap.set("n", "<leader><CR>", ":so %<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment for current line" })

vim.keymap.set(
	"v",
	"<C-_>",
	"<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Toggle comment for selection" }
)
