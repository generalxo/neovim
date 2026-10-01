-- ignore tailwind directives like @apply / @tailwind
local lint = { unknownAtRules = "ignore" }

---@type vim.lsp.Config
return {
	settings = {
		css = { validate = true, lint = lint },
		scss = { validate = true, lint = lint },
		less = { validate = true, lint = lint },
	},
}
