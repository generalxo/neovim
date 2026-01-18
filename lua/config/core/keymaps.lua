-- keymap.set('', '', '', {desc = ""})
local keymap = vim.keymap
--local opts = { noremap = true, silent = true }

-- Directory
--keymap.set('n', '<leader>fd', vim.cmd.Ex, {desc = "opens directory explorere"})
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Window Management
keymap.set("n", "<leader>ss", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sd", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make windows euqal size" })
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "close current window" })

-- Tabs
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "cloes tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

-- Remove search
keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "remove search highlight" })

-- Dont yank on paste
keymap.set("x", "p", '"_dP', { noremap = true, silent = true })
