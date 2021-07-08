local g = vim.g
local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<C-N>', ':Lexplore<cr>', options)

--  absolute width of netrw window
g.netrw_winsize = -28

--  do not display info on the top of window
g.netrw_banner = 0

--  use the previous window to open file
g.netrw_browse_split = 4
