# Vim motions to remember

Most motions take a count (`5j`, `3w`) and combine with operators: `d` delete, `c` change, `y` yank, `v` select, `>` / `<` indent, `gU` / `gu` upper / lower case, `=` reindent.
Example: `ci"` = change inside quotes, `dap` = delete paragraph, `yiw` = yank word.

## Moving in a line
| Key | Does |
|---|---|
| `_` / `^` | First non-blank char (more useful than `0`) |
| `0` | Very start of line |
| `$` | End of line |
| `g_` | Last non-blank char |
| `fx` / `Fx` | Jump to next / prev `x` in line |
| `tx` / `Tx` | Jump to just before / after next / prev `x` |
| `;` / `,` | Repeat last `f/F/t/T` forward / backward |
| `w` / `b` / `e` | Next word start / prev word start / word end |
| `W` / `B` / `E` | Same but WORD (only spaces split: `foo->bar()` is one) |
| `ge` | End of previous word |

## Moving in a file
| Key | Does |
|---|---|
| `gg` / `G` | First / last line |
| `42G` or `:42` | Go to line 42 |
| `%` | Jump to matching bracket `{ ( [` |
| `{` / `}` | Prev / next blank line (paragraph) |
| `<C-d>` / `<C-u>` | Half page down / up |
| `<C-f>` / `<C-b>` | Full page down / up |
| `H` / `M` / `L` | Top / middle / bottom of screen |
| `zz` / `zt` / `zb` | Scroll so cursor line is center / top / bottom |
| `gd` | Go to definition (LSP) |
| `gf` | Open file path under cursor |

## Jumps + marks
| Key | Does |
|---|---|
| `<C-o>` / `<C-i>` | Back / forward in jump list |
| `` `` `` | Jump to position before last jump |
| `g;` / `g,` | Prev / next place you changed text |
| `` `. `` | Last change |
| `gi` | Go to last insert spot and enter insert mode |
| `ma` | Set mark `a` (uppercase `mA` = across files) |
| `` `a `` / `'a` | Jump to mark `a` exact spot / line |

## Search
| Key | Does |
|---|---|
| `/text` / `?text` | Search forward / backward |
| `n` / `N` | Next / prev match |
| `*` / `#` | Search word under cursor forward / backward |
| `:%s/old/new/g` | Replace all in file (`gc` = confirm each) |
| `:s/old/new/g` | Replace in current line (or visual selection) |
| `<leader>h` | Clear highlight |

## Text objects (use after `v`, `d`, `c`, `y`)
`i` = inside, `a` = around (includes brackets/quotes/space)
| Key | Selects |
|---|---|
| `iw` / `aw` | Word |
| `i"` / `a"` | Inside / around `"…"` (also `'` and `` ` ``) |
| `ib` / `ab` | Inside / around `( )`, nearest one, can span lines |
| `iB` / `aB` | Inside / around `{ }` |
| `i[` / `a[` | Inside / around `[ ]` |
| `it` / `at` | Inside tag `<x>this</x>` / whole tag |
| `ip` / `ap` | Paragraph |

## Selection (visual mode)
| Key | Does |
|---|---|
| `v` / `V` / `<C-v>` | Char / line / block select |
| `o` | Jump to other end of selection |
| `gv` | Reselect last selection |
| `vat` | Select tag and everything in it: `<x>Stuff</x>` |
| `vit` | Select everything inside tag |
| `vab` / `vaB` | Select `( )` / `{ }` block |
| `<C-v>` + `I` / `A` + text + `<Esc>` | Insert / append on many lines at once |
| `>` / `<` | Indent / unindent (stays selected with `gv`) |
| `:m '>+1` / `:m '<-2` | Move selected lines down / up |

## Editing
| Key | Does |
|---|---|
| `.` | Repeat last change (best key in vim) |
| `u` / `<C-r>` | Undo / redo |
| `ciw` | Change word |
| `C` / `D` | Change / delete to end of line |
| `cc` / `S` | Change whole line |
| `dd` / `yy` | Delete / yank line |
| `x` | Delete char |
| `r` + char | Replace one char |
| `J` | Join line below onto this one |
| `o` / `O` | New line below / above + insert |
| `A` / `I` | Insert at end / start of line |
| `p` / `P` | Paste after / before |
| `"0p` | Paste last yank (not last delete) |
| `"_d` | Delete without overwriting clipboard |
| `~` | Toggle case of char |
| `<C-a>` / `<C-x>` | Increment / decrement number |
| `xp` | Swap two chars |
| `ddp` | Swap line with one below |

## Insert mode
| Key | Does |
|---|---|
| `<C-w>` | Delete word before cursor |
| `<C-u>` | Delete to start of line |
| `<C-o>` + cmd | Run one normal-mode command, stay in insert |
| `<C-r>"` | Paste from register `"` |

## Macros
| Key | Does |
|---|---|
| `qa` | Start recording into register `a` |
| `q` | Stop recording |
| `@a` | Play macro `a` |
| `@@` | Replay last macro |
| `10@a` | Play 10 times |
| `:'<,'>norm @a` | Run macro on every selected line |

## Folds
| Key | Does |
|---|---|
| `za` | Toggle fold |
| `zR` / `zM` | Open / close all folds |

## Handy commands
| Command | Does |
|---|---|
| `:g/pattern/d` | Delete every line matching pattern |
| `:v/pattern/d` | Delete every line NOT matching |
| `:sort` | Sort lines (in selection or file) |
| `:noh` | Clear search highlight |
| `:e!` | Reload file, drop unsaved changes |
