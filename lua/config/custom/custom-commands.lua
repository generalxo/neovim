local dirMenu = require("config.custom.setdirectory")
local dllMenu = require("config.custom.dllmenu")
local keymap = vim.keymap
-- Directory Menu Command
vim.api.nvim_create_user_command("DirMenu", function()
	dirMenu.createAndMountMenu()
end, {})
keymap.set("n", "<leader>dir", "<cmd>DirMenu<CR>", { desc = "Open DirMenu" })

-- Dll Menu Command
vim.api.nvim_create_user_command("DllMenu", function()
	dllMenu.createDllMenu()
end, {})
