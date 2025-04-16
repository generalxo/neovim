require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require("blink.cmp").get_lsp_capabilities()
require("lspconfig").lua_ls.setup({ capabilities = capabilities })
--require("lspconfig").phpactor.setup({ capabilities = capabilities })
--vim.api.nvim_create_autocmd("LspAttach", {
--	callback = function(ev)
--		local client = vim.lsp.get_client_by_id(ev.data.client_id)
--		if client:supports_method("textDocument/completion") then
--			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--		end
--	end,
--})

vim.diagnostic.config({ virtual_text = true })
