---@type vim.lsp.Config
return {
	filetypes = { "php", "blade" },
	settings = {
		intelephense = {
			files = { maxSize = 5000000 },
			-- formatting handled by pint via conform
			format = { enable = false },
		},
	},
}
