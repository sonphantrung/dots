local lspkind = require('lspkind')

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

        -- For `luasnip` user.
        -- require('luasnip').lsp_expand(args.body)

        -- For `ultisnips` user.
        -- vim.fn["vsnip#anonymous"](args.body)
      end,
    },

    mapping = {
   ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
   ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
   ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
   ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
   ['<C-d>'] = cmp.mapping.scroll_docs(-4),
   ['<C-f>'] = cmp.mapping.scroll_docs(4),
   ['<C-Space>'] = cmp.mapping.complete(),
   ['<C-e>'] = cmp.mapping.close(),
   ['<CR>'] = cmp.mapping.confirm({
     behavior = cmp.ConfirmBehavior.Replace,
     select = true,
   }),
   ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"]() == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),
    },
    sources = {
      { name = 'nvim_lsp' },

      -- For vsnip user.
      { name = 'vsnip' },
	  -- Treesitter
	  { name = 'treesitter' },
	  -- Org mode
      { name = 'orgmode' },
      -- For luasnip user.
      -- { name = 'luasnip' },

      -- For ultisnips user.
      -- { name = 'ultisnips' },
      { name = 'buffer' },
    },
	formatting = {
	    format = lspkind.cmp_format({
	      mode = 'symbol', -- show only symbol annotations
	      maxwidth = {
	        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
	        -- can also be a function to dynamically calculate max width such as
	        -- menu = function() return math.floor(0.45 * vim.o.columns) end,
	        menu = 50, -- leading text (labelDetails)
	        abbr = 50, -- actual suggestion item
	      },
	      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
	      show_labelDetails = true, -- show labelDetails in menu. Disabled by default
	
	      -- The function below will be called before any actual modifications from lspkind
	      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
	      before = function (entry, vim_item)
		    -- set a name for each source
		    vim_item.menu = ({
		      buffer = "「Buffer」",
		      nvim_lsp = "「LSP」",
			  orgmode = "「Org」",
		      treesitter = "「TS」",
		      vsnip = "「VSnip」",
		      luasnip = "「LuaSnip」",
		      nvim_lua = "「Lua」",
		      latex_symbols = "「Latex」",
		    })[entry.source.name]
	        return vim_item
	      end
	  })
	},
  })
