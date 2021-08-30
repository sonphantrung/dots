require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
    section_separators = {'', ''},
    component_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
        'branch',
        {
        'diff',
        color_added = '#a7c080', -- changes diff's added foreground color
        color_modified = '#d9bb80', -- changes diff's modified foreground color
        color_removed = '#e68183', -- changes diff's removed foreground color
        symbols = {added = ' ', modified = '柳 ', removed = ' '},
        },
    {
      'diagnostics',
      -- table of diagnostic sources, available sources:
      -- nvim_lsp, coc, ale, vim_lsp
      sources = {'nvim_lsp'},
      -- displays diagnostics from defined severity
      sections = {'error', 'warn', 'info', 'hint'},
      -- all colors are in format #rrggbb
      color_error = '#e68183', -- changes diagnostic's error foreground color
      color_warn = '#d9bb80', -- changes diagnostic's warn foreground color
      color_info = nil, -- Changes diagnostic's info foreground color
      color_hint = nil, -- Changes diagnostic's hint foreground color
      symbols = { error = " ", warning = " ", hint = " ", information = " " }
    },
},
    lualine_c = {
        'filename',
    {
    function() return '%=' end
    },
    {
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return msg end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = {fg = '#ffffff', gui = 'bold'}
    }
},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'nvim-tree', 'fugitive'}
}