local dirMenu = require("config.custom.setdirectory")
vim.api.nvim_create_user_command(
	"DirMenu",
	function()
		dirMenu.createAndMountMenu()
	end,
	{}
)
