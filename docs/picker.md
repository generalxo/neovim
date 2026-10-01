# Picker (snacks.picker)

Fuzzy finder for everything. Replaced telescope.

## Open a picker
| Key | Does |
|---|---|
| `<leader>findf` | Files in cwd |
| `<leader>findr` | Recent files |
| `<leader>finds` | Grep text in cwd (live) |
| `<leader>findw` | Grep word under cursor / visual selection |
| `<leader>findb` | Lines in current buffer |
| `<leader>findd` | Diagnostics |
| `<leader>findh` | Help pages |
| `<leader>findk` | Keymaps |
| `<leader>findn` | Notification history |
| `<leader>docs` | These docs |

More pickers: `:lua Snacks.picker.` + `<Tab>`, or `:lua Snacks.picker()` to list all of them.

## Inside the picker
| Key | Does |
|---|---|
| `<C-j>` / `<C-k>` (or `<C-n>` / `<C-p>`) | Move down / up |
| `<CR>` | Open |
| `<C-v>` / `<C-s>` / `<C-t>` | Open in vsplit / split / tab |
| `<Tab>` | Select multiple |
| `<C-q>` | Send to quickfix list |
| `<C-f>` / `<C-b>` | Scroll preview |
| `<A-h>` / `<A-i>` | Toggle hidden / ignored files |
| `<A-p>` | Toggle preview |
| `<Esc>` | Normal mode in input; `<Esc>` again closes |
| `?` (normal mode) | Show all picker keys |
