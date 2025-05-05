require("mason").setup()
require("mason-lspconfig").setup()
local lspconfig = require("lspconfig")

local capabilities = require("blink.cmp").get_lsp_capabilities()
lspconfig.lua_ls.setup({ capabilities = capabilities })

lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	filetypes = { "html", "blade" },
})

lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	filetypes = { "html", "blade", "php" },
})

--lspconfig.phpactor.setup({
--	capabilities = capabilities,
--	filetypes = { "php" },
--})

lspconfig.intelephense.setup({
	capabilities = capabilities,
	filetypes = { "php" },
})

vim.diagnostic.config({ virtual_text = true })
