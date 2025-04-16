require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		blade = { "blade-formatter", "rusywind" },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_format = "fallback",
	},
})
