local color=require('statusline.colors')
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    section_separators = {left = '', right =''},
    component_separators = {left = '|', right ='|'},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
        'branch',
        {
        'diff',
		diff_color = {
			added = { fg = color.green }, -- changes diff's added foreground color
			modified = { fg = color.yellow },-- changes diff's modified foreground color
			removed = { fg = color.red }, -- changes diff's removed foreground color
		};
        symbols = {added = ' ', modified = '柳', removed = ' '},
        },
    {
      'diagnostics',
      update_in_insert = true, -- Update diagnostics while typing
      -- table of diagnostic sources, available sources:
      -- nvim_lsp, coc, ale, vim_lsp
      sources = {'nvim_lsp'},
      -- displays diagnostics from defined severity
      sections = {'error', 'warn', 'info', 'hint'},
      -- all colors are in format #rrggbb
	  diagnostics_color = {
      error = { fg = color.red }, -- changes diagnostic's error foreground color
      warn = { fg = color.yellow }, -- changes diagnostic's warn foreground color
      info = { fg = color.blue }, -- Changes diagnostic's info foreground color
      hint = { fg = color.green }, -- Changes diagnostic's hint foreground color
  },
      symbols = { error = " ", warning = " ", hint = " ", information = " " }
    },
},

    lualine_c = {
        'filename',
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
  color = {fg = color.white, gui = 'bold'}
    }
},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
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
