-- Per-server settings live in after/lsp/<server>.lua

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"eslint",
		"intelephense",
		"laravel_ls",
		"emmet_ls",
		"tailwindcss",
		"html",
		"cssls",
		"jsonls",
		"yamlls",
		"bashls",
	},
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, false))
capabilities = vim.tbl_deep_extend("force", capabilities, {
	textDocument = {
		foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		},
	},
})

vim.lsp.config("*", { capabilities = capabilities })

vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true,
	signs = true,
	float = { border = "rounded", source = true },
})
