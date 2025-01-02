-- keymap.set('', '', '', {desc = ""}
local keymap = vim.keymap
--local opts = { noremap = true, silent = true }

-- Directory
--keymap.set('n', '<leader>fd', vim.cmd.Ex, {desc = "opens directory explorere"})
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Window Management
keymap.set('n', '<leader>ss', "<C-w>v", {desc = "split window vertically"})
keymap.set('n', '<leader>sd', "<C-w>s", {desc = "split window horizontally"})
keymap.set('n', '<leader>se', "<C-w>=", {desc = "make windows euqal size"})
keymap.set('n', '<leader>sq', "<cmd>close<CR>", {desc = "close current window"})

-- Tabs
keymap.set('n', '<leader>tt', '<cmd>tabnew<CR>', {desc = "open new tab"})
keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', {desc = "cloes tab"})
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', {desc = "go to next tab"})
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', {desc = "go to previous"})
keymap.set('n', '<leader>tf', '<cmn>tabnew %<CR>', {desc = "open current buffer in new tab"})

-- Toggle Term
keymap.set('n', '<leader>termn','<cmd>ToggleTerm direction=tab<CR>', {desc = "Create new ToggleTerm in new tab"})
keymap.set('n', '<leader>termss', '<cmd>ToggleTerm direction=vertical<CR>', {desc = "Create new term vertical"})

-- Telescope
keymap.set('n','<leader>fr', '<cmd>Telescope oldfiles<CR>', {desc = "Fuzzy find recent files"})
