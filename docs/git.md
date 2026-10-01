# Git

## diffview.nvim: review diffs + file history
| Key | Does |
|---|---|
| `<leader>gd` | Open diff of all uncommitted changes |
| `<leader>gh` | History of current file (each commit) |
| `<leader>gH` | History of whole branch |
| `<leader>gq` | Close diffview |

Inside diffview:
| Key | Does |
|---|---|
| `<Tab>` / `<S-Tab>` | Next / prev file |
| `-` | Stage / unstage file |
| `S` / `U` | Stage all / unstage all |
| `X` | Discard changes to file |
| `[x` / `]x` | Prev / next merge conflict |
| `<leader>co` / `ct` / `cb` / `ca` | Conflict: pick ours / theirs / base / all |
| `<leader>b` | Toggle file panel |
| `g?` | Show all keys |

Compare against branch: `:DiffviewOpen main` · range: `:DiffviewOpen HEAD~3`

## lazygit: full git UI
| Key | Does |
|---|---|
| `<leader>termgit` | Toggle lazygit float |
| `?` (inside) | lazygit help |

## gitsigns: change markers in sign column
No keymaps set yet. Commands:
| Command | Does |
|---|---|
| `:Gitsigns preview_hunk` | Show the change under cursor |
| `:Gitsigns nav_hunk next` / `prev` | Jump between changes |
| `:Gitsigns stage_hunk` / `reset_hunk` | Stage / discard change under cursor |
| `:Gitsigns blame_line` | Who changed this line |
| `:Gitsigns toggle_current_line_blame` | Inline blame on/off |

## Other
| Key | Does |
|---|---|
| `<leader>gB` | Open file/line on GitHub (snacks.gitbrowse) |
| `<leader>fg` | Format only git-changed lines (see [lsp.md](lsp.md)) |
