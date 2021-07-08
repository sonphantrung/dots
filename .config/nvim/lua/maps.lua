local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<F8>', ':setlocal spell! spelllang=en_us<CR>', options)
map('n', '<F7>', ':Goyo<cr>', options)
map('n', ') <Plug>', ':GitGutterNextHunk', options)
map('n', '( <Plug>', ':GitGutterPrevHunk', options)
map('n', '<Leader>md', ':InstantMarkdownPreview<CR>', options) -- Previews .md file
map('n', '<Leader>ms', ':InstantMarkdownStop<CR>', options) -- Kills the preview
map('n', '<C-N>', ':Lexplore<cr>', options)
