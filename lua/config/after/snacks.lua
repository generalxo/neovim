-- Let LSP update imports/references when files are renamed or moved in oil
vim.api.nvim_create_autocmd("User", {
	pattern = "OilActionsPost",
	callback = function(event)
		for _, action in ipairs(event.data.actions or {}) do
			if action.type == "move" then
				local src = action.src_url:gsub("^oil://", "")
				local dest = action.dest_url:gsub("^oil://", "")
				Snacks.rename.on_rename_file(src, dest)
			end
		end
	end,
})
