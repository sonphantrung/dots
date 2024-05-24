-- Btw, I use Arch
UTIL = require('lspconfig.util')

--SUMNEKO_ROOT_PATH = "/usr/share/lua-language-server"
--SUMNEKO_BINARY = "/usr/bin/lua-language-server"

require'lspconfig'.lua_ls.setup ({
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      telemetry = {
        enable = false,
      }
    },
  },
  on_attach = require('lsp.configure').on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
})
