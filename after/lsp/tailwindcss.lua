---@type vim.lsp.Config
return {
	filetypes = {
		"html",
		"css",
		"scss",
		"blade",
		"php",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
	},
	settings = {
		tailwindCSS = {
			includeLanguages = {
				blade = "html",
				php = "html",
			},
		},
	},
}
