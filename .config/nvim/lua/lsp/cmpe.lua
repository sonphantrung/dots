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
      ['<C-D>'] = cmp.mapping.scroll_docs(-4),
      ['<C-F>'] = cmp.mapping.scroll_docs(4),
      ['<C-SPACE>'] = cmp.mapping.complete(),
      ['<C-E>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
	  ["<TAB>"] = cmp.mapping(function(fallback)
	      if vim.fn.pumvisible() == 1 then
	        feedkey("<C-n>", "n")
	      elseif vim.fn["vsnip#available"]() == 1 then
	        feedkey("<Plug>(vsnip-expand-or-jump)", "")
	      elseif has_words_before() then
	        cmp.complete()
	      else
	        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
	      end
	    end, { "i", "s" }),

	  ["<S-TAB>"] = cmp.mapping(function()
	      if vim.fn.pumvisible() == 1 then
	        feedkey("<C-p>", "n")
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
      -- For luasnip user.
      -- { name = 'luasnip' },

      -- For ultisnips user.
      -- { name = 'ultisnips' },
      { name = 'buffer' },
    },
	formatting = {
	  format = function(entry, vim_item)
	    -- fancy icons and a name of kind
    	vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

	    -- set a name for each source
	    vim_item.menu = ({
	      buffer = "[Buffer]",
	      nvim_lsp = "[LSP]",
	      treesitter = "[TS]",
	      vsnip = "[VSnip]",
	      luasnip = "[LuaSnip]",
	      nvim_lua = "[Lua]",
	      latex_symbols = "[Latex]",
	    })[entry.source.name]
	    return vim_item
	  end,
	},
  })
