local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

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

local function smart_tab()
	local line = vim.api.nvim_get_current_line()

	if line:match("^%s*$") then
		local shiftwidth = vim.opt.shiftwidth:get()
		local expandtab = vim.opt.expandtab:get()
		local indent_str

		if expandtab then
			indent_str = string.rep(" ", shiftwidth)
		else
			indent_str = "\t"
		end

		vim.api.nvim_feedkeys(indent_str, "n", false)
	else
		local keys = vim.api.nvim_replace_termcodes("<C-o>>>", true, false, true)
		vim.api.nvim_feedkeys(keys, "n", false)
	end
end

vim.keymap.set("i", "<Tab>", smart_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<S-Tab>", "<C-o><<", { noremap = true, silent = true })

vim.keymap.set(
	"v",
	"<C-_>",
	"<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Toggle comment for selection" }
)

vim.keymap.set("n", "<C-i>", function()
	vim.cmd("startinsert") -- vai para o modo Insert
	vim.schedule(function()
		require("cmp").complete() -- dispara o menu de completions
	end)
end, { desc = "Entrar em Insert + abrir autoimport" })

vim.keymap.set("x", "<leader>p", '"_dP')

-- UFO
vim.o.foldlevel = 99
vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })

vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })

require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "lsp", "indent" }
	end,
})
