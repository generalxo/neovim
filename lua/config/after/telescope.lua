local keymap = vim.keymap
local builtin = require("telescope.builtin")

keymap.set('n', '<leader>findf', builtin.find_files, {desc = "find files cwd"})
keymap.set('n', '<leader>findr', builtin.oldfiles, {desc = "find recent file"})
keymap.set('n', '<leader>findb', builtin.current_buffer_fuzzy_find, {desc = "find in current buffer"})
keymap.set('n', '<leader>finds', builtin.live_grep, {desc = "find string in cwd"})
