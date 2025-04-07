require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascipt = { "prettier", stop_after_first = true },
		blade = { "blade-formatter" },
	}
})
