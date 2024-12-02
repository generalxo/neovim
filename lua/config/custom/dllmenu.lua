local Menu = require("nui.menu")
local menuName = "Dll Menu"

local function createDllMenu()
	local menu = Menu({
		position = "50%",
		size = {
			width = 30,
			height = 15,
		},
		border = {
			style = "single",
			text = {
				top = "[Choose Dll Path]",
				top_align = "center",
			},
		},
		win_options = {
			winhighlight = "Normal:Normal,FloatBorder:Normal",
		},
	}, {
		lines = {
			Menu.item("FlashCardWebbApp", {path = [[C:\code\personal\flash-card-webbapp\flash-card-webbapp.Server\bin\Debug\net8.0\flash-card-webbapp.Server.dll]]}),
			Menu.item("None", {path = ""}),
		},
		max_width = 20,
		keymap = {
			focus_next = { "j", "<Down>", "<Tab>" },
			focus_prev = { "k", "<Up>", "<S-Tab>" },
			close = { "<Esc>", "<C-c>" },
			submit = { "<CR>", "<Space>" },
		},
		on_close = function()
			vim.notify(menuName .. " Closed", nil, {title = menuName})
		end,
		on_submit = function(item)
			vim.g.dll_path = item.path
			vim.notify(vim.g.dll_path, nil, {title = menuName})
		end,
	})
	menu:mount()
end

return {
	createDllMenu = createDllMenu,
}
