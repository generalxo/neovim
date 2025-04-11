vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:netrw_banner = 0")
vim.cmd("let g:netrw_keepdir = 0")

local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- Tabs & Spaces
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Background
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "no"

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace in indent

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Scroll
opt.scrolloff = 8
opt.signcolumn = "yes"

-- Default Status Line
opt.showmode = false

-- Cursor Settings
opt.guicursor = "n-v-ve:block,i-ci-ve:ver20"

-- Termguicolors
opt.termguicolors = true

-- Notify
--vim.notify = require("notify")

-- Statusline
opt.laststatus = 3

