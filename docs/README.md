# Nvim cheat sheets

Leader = `<Space>` · Open these docs in nvim with `<leader>docs`

**Lost?** `<leader>?` shows keymaps for the current buffer (which-key) · `<leader>findk` searches every keymap

| File | Covers |
|---|---|
| [core.md](core.md) | Windows, tabs, search, oil (file explorer), terminal |
| [picker.md](picker.md) | Finding files, text, help, keymaps (snacks.picker) |
| [snacks.md](snacks.md) | Dashboard, notifications, lazygit, zen, scratch, etc. |
| [git.md](git.md) | diffview, lazygit, gitsigns, gitbrowse |
| [lsp.md](lsp.md) | Go to definition, diagnostics, formatting, linting |
| [completion.md](completion.md) | blink.cmp popup + LuaSnip snippets |
| [laravel.md](laravel.md) | Blade/PHP: blade-nav, formatters, servers |
| [editing.md](editing.md) | Multi-cursor, markdown rendering, treesitter |

Vim motions: [vim-motions.md](vim-motions.md)

Where config lives:
- `lua/config/plugins/*.lua`: which plugins get installed
- `lua/config/after/*.lua`: plugin setup
- `lua/config/core/keymaps.lua`: global keymaps
- `after/lsp/*.lua`: per-LSP-server settings
