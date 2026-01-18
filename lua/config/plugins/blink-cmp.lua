return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
			"saghen/blink.compat",
			"mikavilpas/blink-ripgrep.nvim",
			{ "L3MON4D3/LuaSnip", version = "v2.*" },
		},
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_and_accept" },
			},
			appearance = {
				nerd_font_variant = "normal",
			},
			snippets = {
				preset = "luasnip",
			},
			completion = {
				documentation = { auto_show = false },
				list = {
					selection = {
						preselect = false,
						auto_insert = false,
					},
				},
				menu = {
					draw = {
						columns = {
							{ "label", "label_description", gap = 1 },
							{ "kind_icon", "kind", "source_name", gap = 1 },
						},
					},
				},
				ghost_text = {
					enabled = true,
				},
			},
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
					"ripgrep",
					"blade-nav",
				},
				providers = {
					ripgrep = {
						module = "blink-ripgrep",
						name = "Ripgrep",
					},
					["blade-nav"] = {
						module = "blade-nav.blink",
						opts = {
							close_tag_on_complete = false,
						},
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
