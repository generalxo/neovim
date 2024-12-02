local dirMenu = require("config.custom.setdirectory")
local dllMenu = require("config.custom.dllmenu")
-- Directory Menu Command
vim.api.nvim_create_user_command(
	"DirMenu",
	function()
		dirMenu.createAndMountMenu()
	end,
	{}
)

-- Dll Menu Command
vim.api.nvim_create_user_command(
	"DllMenu",
	function()
		dllMenu.createDllMenu()
	end,
	{}
)
