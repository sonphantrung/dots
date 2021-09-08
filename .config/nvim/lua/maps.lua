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
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end
-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  else
    return t "<Tab>"
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

return M
