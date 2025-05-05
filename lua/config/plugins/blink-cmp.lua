return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},

	{
		"ricardoramirezr/blade-nav.nvim",
		--dependencies = { "hrsh7th/nvim-cmp" },
		ft = { "blade", "php" },
		opts = {
			close_tag_on_complete = true,
		},
		config = function()
			require("blade-nav").setup({})
		end,
	},

	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
			"saghen/blink.compat",
			"mikavilpas/blink-ripgrep.nvim",
			"ricardoramirezr/blade-nav.nvim",
			{ "L3MON4D3/LuaSnip", version = "v2.*" },
		},

		opts = {
			keymap = { preset = "default" },
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
						name = "blade-nav",
						module = "blink.compat.source",
						opts = {},
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
