-- keymap.set('', '', '', {desc = ""}
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

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
--keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', {desc = "cloes tab"})
--keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', {desc = "go to next tab"})
--keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', {desc = "go to previous"})
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = "open current buffer in new tab"})

--Barbar
keymap.set('n', '<leader>tq' , '<Cmd>BufferClose<CR>', opts)
keymap.set('n', '<leader>tp' , '<Cmd>BufferMovePrevious<CR>', opts)
keymap.set('n', '<leader>tn', '<Cmd>BufferMoveNext<CR>', opts)
keymap.set('n', '<leader>t1', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<leader>t2', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<leader>t3', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<leader>t4', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<leader>t5', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<leader>t6', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<leader>t7', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<leader>t8', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<leader>t9', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', '<leader>t0', '<Cmd>BufferLast<CR>', opts)
