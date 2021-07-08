local map = vim.api.nvim_set_keymap
options = { noremap = true }

map('i', '[', '[]<Esc>i', options)
map('i', '(', '()<Esc>i', options)
map('i', '\'', '\'\'<Esc>i', options)
map('i', '{', '{}<Esc>i', options)
map('i', '"', '""<Esc>i', options)
map('i', '`', '``<Esc>i', options)
