local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	display_name = "LazyGit",
	hidden = true,
	dir = "git_dir",
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>termgit', '<cmd>lua _lazygit_toggle()<CR>', {noremap = true, silent = true})
