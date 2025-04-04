-- keymap.set('n', '<leader>find', builtin., {desc = ""})
local keymap = vim.keymap
local builtin = require("telescope.builtin")

keymap.set('n', '<leader>findfiles', builtin.find_files, {desc = "find files cwd"})
keymap.set('n', '<leader>findrecent', builtin.oldfiles, {desc = "find recent file"})
keymap.set('n', '<leader>findbuffer', builtin.current_buffer_fuzzy_find, {desc = "find in current buffer"})
keymap.set('n', '<leader>findstring', builtin.live_grep, {desc = "find string in cwd"})
