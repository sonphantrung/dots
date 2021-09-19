local map = vim.api.nvim_set_keymap
local M = {}
--
-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local options = { noremap = true }
map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', options)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', options)
map('n', '<F8>', ':setlocal spell! spelllang=en_us<CR>', options)
map('n', '<F7>', ':Goyo<cr>', options)
map('n', ') <Plug>', ':GitGutterNextHunk', options)
map('n', '( <Plug>', ':GitGutterPrevHunk', options)
map('n', '<Leader>md', ':MarkdownPreview<CR>', options) -- Previews .md file
map('n', '<Leader>ms', ':MarkdownPreviewStop<CR>', options) -- Kills the preview
map('n', '<Leader>ss', ':<C-u>SessionSave<CR>', options)
map('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', options)
-- Telescope
map('n', '<Leader>ff', ':DashboardFindFile<CR>', options)
map('n', '<Leader>fm', ':Telescope media_files<CR>', options)
map('n', '<Leader>fw', ':DashboardFindWord<CR>', options)
map('n', '<Leader>fb', ':Telescope buffers<CR>', options)
map('n', '<Leader>f?', ':Telescope help_tags<CR>', options)
map('n', '<Leader>fh', ':DashboardFindHistory<CR>', options)
map('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', options)
map('n', '<Leader>ta', ':Telescope help_tags<CR>', options)
map('n', '<Leader>fk', ':DashboardJumpMark<CR>', options)
map('n', '<Leader>bm', ':Telescope marks<CR>', options)
map('n', '<Leader>cn', ':DashboardNewFile<CR>', options)
-- Barbar
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', options)
map('n', '<A-.>', ':BufferNext<CR>', options)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', options)
map('n', '<A->>', ' :BufferMoveNext<CR>', options)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', options)
map('n', '<A-2>', ':BufferGoto 2<CR>', options)
map('n', '<A-3>', ':BufferGoto 3<CR>', options)
map('n', '<A-4>', ':BufferGoto 4<CR>', options)
map('n', '<A-5>', ':BufferGoto 5<CR>', options)
map('n', '<A-6>', ':BufferGoto 6<CR>', options)
map('n', '<A-7>', ':BufferGoto 7<CR>', options)
map('n', '<A-8>', ':BufferGoto 8<CR>', options)
map('n', '<A-9>', ':BufferGoto 9<CR>', options)
map('n', '<A-0>', ':BufferLast<CR>', options)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', options)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', options)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', options)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', options)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', options)

-- lspconfig
function M.on_attach(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', options)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', options)
  buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', options)
  buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', options)
    vim.lsp.handlers['textDocument/publishDiagnostics'] =
      vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = true,
      })
end

vim.o.completeopt = "menuone,noselect"

return M
