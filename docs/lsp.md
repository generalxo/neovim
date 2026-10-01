# LSP, diagnostics, formatting, linting

## Navigation (on LSP attach)
| Key | Does |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gy` | Go to type definition |
| `gri` | Go to implementation |
| `grr` | List references |
| `gO` | Document symbols |
| `K` | Hover docs (blade-nav value in blade/php) |
| `<C-o>` / `<C-i>` | Jump back / forward |

## Actions
| Key | Does |
|---|---|
| `grn` | Rename symbol |
| `gra` | Code action |
| `<leader>lh` | Toggle inlay hints |
| `<leader>lr` | Restart LSP |

## Diagnostics
| Key | Does |
|---|---|
| `[d` / `]d` | Prev / next diagnostic |
| `<leader>ld` | Show line diagnostics in float |
| `<leader>findd` | Pick from all diagnostics |

## Servers (auto-installed by mason)
lua_ls, ts_ls, eslint, intelephense, laravel_ls, emmet_ls, tailwindcss, html, cssls, jsonls, yamlls, bashls

- Per-server settings: `after/lsp/<server>.lua`
- Manage installs: `:Mason`
- Status: `:checkhealth vim.lsp`

## Formatting (conform.nvim)
| Filetype | Formatter |
|---|---|
| lua | stylua |
| php | pint |
| blade | blade-formatter |

| Key / cmd | Does |
|---|---|
| `<leader>fg` | Format only git-changed lines (`:FormatGitChanges`) |
| `:lua require("conform").format()` | Format whole file |
| `:ConformInfo` | Show formatters for buffer |

No format-on-save.

## Linting (nvim-lint)
- php → phpstan, runs on save
- Config: `lua/config/after/nvim-lint.lua`
