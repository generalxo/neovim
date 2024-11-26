vim.g.mapleader = " "
vim.g.localleader = "\\"

vim.o.shellslash = true

require("config.lazy")
require("config.after")
require("config.core")
require("config.custom")
