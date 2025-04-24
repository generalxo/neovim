require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require("blink.cmp").get_lsp_capabilities()
require("lspconfig").lua_ls.setup({ capabilities = capabilities })
require("lspconfig").emmet_ls.setup({
	filetypes = { "html", "blade" },
})

vim.diagnostic.config({ virtual_text = true })
