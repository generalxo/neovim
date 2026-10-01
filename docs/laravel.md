# Laravel / Blade / PHP

## blade-nav.nvim
| Key | Does |
|---|---|
| `gf` | Go to view / component / route / config under cursor (blade + php) |
| `K` | Show resolved value (config, route, etc.), else LSP hover |
| `<leader>bv` | Toggle inline annotations |
| `<leader>bcc` | Clear blade-nav cache (after adding routes/configs) |

blade-nav also feeds completion (view names, components, routes) into blink.

## Language servers
| Server | For |
|---|---|
| intelephense | PHP: completion, go to definition, diagnostics |
| laravel_ls | Laravel-aware: routes, views, config, env |
| emmet_ls | HTML abbreviations in blade |
| tailwindcss | Class completion + hover |
| html / cssls | HTML / CSS |

## Format + lint
| Tool | What |
|---|---|
| pint | Formats php |
| blade-formatter | Formats blade |
| phpstan | Lints php on save |
| `<leader>fg` | Format only git-changed lines (keeps diffs small) |

## Snippets
blade: `!` (HTML5 boilerplate), `{{` (`{{ }}`). See [completion.md](completion.md).
