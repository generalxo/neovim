local dirMenu = require("config.custom.setdirectory")
local keymap = vim.keymap
local api = vim.api

-- Directory Menu Command
api.nvim_create_user_command("DirMenu", function()
	dirMenu.createAndMountMenu()
end, {})
keymap.set("n", "<leader>dir", "<cmd>DirMenu<CR>", { desc = "Open DirMenu" })

-- Oil CD current buffer directory
api.nvim_create_user_command("CdHere", function()
	local oil = require("oil")
	local dir = oil.get_current_dir()
	local bufferFileType = vim.bo.filetype

	if bufferFileType == "oil" then
		-- Oil buffer
		if dir then
			vim.cmd("cd " .. dir)
			vim.notify("CD: " .. dir)
		else
			vim.notify("Could not get directory")
		end
	else
		-- In regular file buffer
		local filepath = vim.fn.expand("%:p:h")
		if filepath and filepath ~= "" then
			vim.cmd("cd " .. filepath)
			vim.notify("CD: " .. filepath)
		else
			vim.notify("No valid filepath in buffer")
		end
	end
end, {})

keymap.set("n", "<leader>cd", "<cmd>CdHere<CR>", { desc = "CD to current buffer dir" })
