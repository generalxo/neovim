# Editing

## vim-visual-multi (multiple cursors)
| Key | Does |
|---|---|
| `<C-n>` | Select word under cursor; press again to add next match |
| `<C-Down>` / `<C-Up>` | Add cursor below / above |
| `n` / `N` | Next / prev match |
| `q` | Skip current match |
| `Q` | Remove current cursor |
| `<Tab>` | Switch cursor mode ↔ extend (visual) mode |
| `\\A` | Select all matches of word |
| `<Esc>` | Exit |

Then edit normally (`i`, `a`, `c`, `d`, etc.) and it applies to every cursor.

## render-markdown.nvim
Renders headings, tables, checkboxes and code blocks in markdown buffers. Raw text shows on the cursor line.

| Key | Does |
|---|---|
| `<leader>mr` | Toggle rendering |

## Zen + scratch
| Key | Does |
|---|---|
| `<leader>z` | Zen mode (centered, no distractions) |
| `<leader>.` | Scratch buffer |

## Treesitter
Syntax highlighting + parsing. Installed parsers: c, lua, vim, vimdoc, query, markdown, markdown_inline, c_sharp, html, php, php_only, blade, vue.
- Add a parser: `:TSInstall <lang>` (or add it to `lua/config/after/treesitter.lua`)
- Update parsers: `:TSUpdate`
