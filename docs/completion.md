# Completion + snippets

## blink.cmp (completion popup)
Sources: LSP, path, snippets, buffer, ripgrep (words from project), blade-nav. Ghost text on. Nothing preselected.

| Key | Does |
|---|---|
| `<C-Space>` | Open menu / toggle docs |
| `<C-n>` / `<C-p>` (or `<Down>` / `<Up>`) | Next / prev item |
| `<C-y>` | Accept |
| `<C-e>` | Close menu |
| `<C-b>` / `<C-f>` | Scroll docs |
| `<Tab>` / `<S-Tab>` | Jump to next / prev snippet field |
| `<C-k>` | Toggle signature help |

## LuaSnip (snippets)
| Key | Does |
|---|---|
| `<C-k>` | Expand snippet (blink's `<C-k>` may win while its menu is open) |
| `<C-l>` | Jump to next field |
| `<C-j>` | Jump to prev field |
| `<C-e>` | Cycle choice (in choice node) |

Snippets come from friendly-snippets plus custom ones in `lua/config/after/luasnip.lua`:

| Filetype | Trigger | Expands to |
|---|---|---|
| cs | `cw` | `Console.WriteLine();` |
| cs | `try` | try/catch block |
| cs | `prop` | `public T Name { get; set; }` |
| cs | `for` / `if` | for loop / if block |
| blade | `!` | HTML5 boilerplate |
| blade | `{{` | `{{ }}` |
