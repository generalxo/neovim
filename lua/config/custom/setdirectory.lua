local Menu = require("nui.menu")
local dirMenuName = "Directory Menu"

local function createAndMountMenu()
local menu = Menu({
  position = "50%",
  size = {
    width = 30,
    height = 15,
  },
  border = {
    style = "single",
    text = {
      top = "[Chose Directory]",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal,FloatBorder:Normal",
  },
}, {
  lines = {
    Menu.item("FlashCardWebbApp", {path = [[C:\code\personal\flash-card-webbapp]]}),
    Menu.item("Code", {path = [[C:\code]]}),
	Menu.item("NeoVim Config", {path = [[C:\Users\Oliver\AppData\Local\nvim]]}),
	Menu.item("Custom Neovim", {path = [[C:\Users\Oliver\AppData\Local\nvim\lua\config\custom]]}),
	},
  max_width = 20,
  keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" },
  },
  on_close = function()
		vim.notify(dirMenuName .. " Closed", nil, {title = dirMenuName})
	end,
  on_submit = function(item)
	vim.cmd("cd " .. item.path)
	vim.cmd("Oil")
	vim.notify("Changed to " .. item.path, nil, {title = dirMenuName})
  end,
})

-- mount the component
menu:mount()
end

return {
	createAndMountMenu = createAndMountMenu,
}

