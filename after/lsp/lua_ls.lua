---@type vim.lsp.Config
return {
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
			workspace = { checkThirdParty = false },
			completion = { callSnippet = "Replace" },
			hint = { enable = true },
			telemetry = { enable = false },
		},
	},
}
