vim.g.mapleader = " "
vim.g.localleader = "\\"
vim.o.shellslash = true
vim.g.dll_path = nil

local opt = vim.opt

opt.shell = "powershell"

require("config.lazy")
require("config.after")
require("config.core")

vim.lsp.enable({ "phpactor" })
