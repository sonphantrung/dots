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
map('n', '<Leader>md', ':InstantMarkdownPreview<CR>', options) -- Previews .md file
map('n', '<Leader>ms', ':InstantMarkdownStop<CR>', options) -- Kills the preview
-- Telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>', options)
map('n', '<Leader>fm', ':Telescope media_files<CR>', options)
map('n', '<Leader>fg', ':Telescope live_grep<CR>', options)
map('n', '<Leader>fb', ':Telescope buffers<CR>', options)
map('n', '<Leader>fh', ':Telescope help_tags<CR>', options)

-- lspconfig
function M.on_attach(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', options)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', options)
end

vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
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
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
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
