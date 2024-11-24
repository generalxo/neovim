--Harpoon
local keymap = vim.keymap
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
keymap.set('n', '<leader>ha', mark.add_file, {desc = "Mark a file"})
keymap.set('n', '<leader>hh', ui.toggle_quick_menu, {desc = "Open harpoon menu"})

keymap.set('n', '<leader>h1', function() ui.nav_file(1) end)
keymap.set('n', '<leader>h2', function() ui.nav_file(2) end)
keymap.set('n', '<leader>h3', function() ui.nav_file(3) end)
keymap.set('n', '<leader>h4', function() ui.nav_file(4) end)

