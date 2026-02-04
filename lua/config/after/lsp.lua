require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require("blink-cmp").get_lsp_capabilities()

vim.lsp.config("*", {
	capabilities = capabilities,
	root_markers = { ".git" },
})

vim.lsp.enable({
	"lua_ls",
	"emmet_ls",
	"tailwindcss",
	"ts_ls",
	"pylyzer",
	"clangd",
	"gopls",
})

vim.diagnostic.config({ virtual_text = true })
