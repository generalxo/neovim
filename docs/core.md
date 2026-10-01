# Core

## Windows
| Key | Does |
|---|---|
| `<leader>ss` | Split vertical |
| `<leader>sd` | Split horizontal |
| `<leader>se` | Make splits equal size |
| `<leader>sq` | Close window |
| `<C-w>h/j/k/l` | Move between splits (built-in) |

## Tabs
| Key | Does |
|---|---|
| `<leader>tt` | New tab |
| `<leader>tq` | Close tab |
| `<leader>tn` / `<leader>tp` | Next / prev tab |
| `<leader>tf` | Open current buffer in new tab |

## Buffers
| Key | Does |
|---|---|
| `<leader>bd` | Delete buffer, keep window layout |

## Search
| Key | Does |
|---|---|
| `<leader>h` | Clear search highlight |

## Oil (file explorer, edit dirs like a buffer)
| Key | Does |
|---|---|
| `-` | Open parent dir (also: go up a dir inside oil) |
| `<CR>` / `<Tab>` | Open file/dir |
| `_` | Go to cwd |
| `g.` | Toggle hidden files (shown by default) |
| `<C-s>` / `<C-h>` / `<C-t>` | Open in vsplit / split / tab |
| `<C-p>` | Preview |
| `g?` | Show all oil keys |

Rename/create/delete = edit lines, then `:w` to apply. Moving files in oil updates imports via LSP (snacks.rename).

## Terminal
| Key | Does |
|---|---|
| `<leader>termf` | Toggle floating terminal |
| `<leader>termss` | Toggle terminal on right side |
| `<leader>termn` | New terminal in new tab |
| `<leader>termgit` | Toggle lazygit |
| `<Esc>` (in terminal) | Back to normal mode (not in lazygit) |

## Help
| Key | Does |
|---|---|
| `<leader>?` | Buffer-local keymaps (which-key) |
| `<leader>findk` | Search all keymaps |
| `<leader>findh` | Search help pages |
| `<leader>docs` | These cheat sheets |
