# Snacks (folke/snacks.nvim)

One plugin, many small tools. Config: `lua/config/plugins/snacks.lua`.

| Module | What it does | Keys |
|---|---|---|
| dashboard | Start screen with random quote + art | `f` find · `r` recent · `d` oil · `l` Lazy · `q` quit |
| picker | Fuzzy finder, see [picker.md](picker.md) | `<leader>find*` |
| notifier | Notification popups (replaced nvim-notify) | `<leader>un` dismiss · `<leader>findn` history |
| terminal | Toggle terminals | `<leader>termf` float · `<leader>termss` right |
| lazygit | lazygit in a float | `<leader>termgit` |
| gitbrowse | Open current file/line on GitHub | `<leader>gB` (works on selection too) |
| words | Highlights other uses of word under cursor (LSP) | `]]` next · `[[` prev |
| zen | Distraction-free centered view | `<leader>z` |
| scratch | Persistent scratch buffer per filetype | `<leader>.` |
| bufdelete | Delete buffer without closing window | `<leader>bd` |
| indent | Indent guides `┊` + current scope (replaced ibl) | auto |
| input | Nicer `vim.ui.input` popup (e.g. LSP rename) | auto |
| rename | LSP updates imports when you move files in oil | auto |
| bigfile | Disables heavy features on huge files | auto |
| quickfile | Renders a file before plugins finish loading | auto |

Check health: `:checkhealth snacks`
