local cmp = require("cmp")
local ls = require("luasnip")

cmp.setup({
	sources = {
		{name = "nvim_lsp"},
		{name = "path"},
		{name = "buffer"},
	},
	-- Enable luasnip to handle snippets expansion for nvim-cmp
	snippet = {
		expand = function(args)
			ls.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
    	['<C-e>'] = cmp.mapping.abort(),
    	['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
})

-- Keymaps for cmp
vim.keymap.set({"i", "s"}, "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent= true })

vim.keymap.set({"i", "s"}, "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent= true })

