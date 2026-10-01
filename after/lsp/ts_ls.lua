local inlay_hints = {
	includeInlayParameterNameHints = "literals",
	includeInlayFunctionLikeReturnTypeHints = true,
	includeInlayPropertyDeclarationTypeHints = true,
	includeInlayEnumMemberValueHints = true,
}

---@type vim.lsp.Config
return {
	settings = {
		javascript = { inlayHints = inlay_hints },
		typescript = { inlayHints = inlay_hints },
	},
}
