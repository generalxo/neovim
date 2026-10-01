return {
	"ricardoramirezr/blade-nav.nvim",
	ft = {
		"blade",
		"php",
	},
	opts = {
		close_tag_on_complete = false,
		-- blink source is registered in blink-cmp.lua
		integrations = { gf = false, cmp = false, coq = false },
		-- keymaps live in core/keymaps.lua
		annotations = { create_keymaps = false },
	},
}
