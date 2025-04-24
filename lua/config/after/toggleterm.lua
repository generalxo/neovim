local keymap = vim.keymap
local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	display_name = "LazyGit",
	hidden = true,
	dir = "git_dir",
})

function Lazygit_toggle()
	lazygit:toggle()
end

-- Toggle Term
vim.api.nvim_set_keymap("n", "<leader>termgit", "<cmd>lua Lazygit_toggle()<CR>", { noremap = true, silent = true })

keymap.set("n", "<leader>termn", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Create new ToggleTerm in new tab" })
keymap.set("n", "<leader>termss", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Create new term vertical" })
keymap.set("n", "<leader>termf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Create new floating term" })

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
