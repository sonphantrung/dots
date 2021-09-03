-- Btw, I use Arch
local coq = require('coq')
UTIL = require('lspconfig.util')

SUMNEKO_ROOT_PATH = "/usr/share/lua-language-server"
SUMNEKO_BINARY = "/usr/bin/lua-language-server"

require'lspconfig'.sumneko_lua.setup (coq.lsp_ensure_capabilities{
  cmd = { SUMNEKO_BINARY, "-E", SUMNEKO_ROOT_PATH .. '/main.lua' },
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
  on_attach = require('maps').on_attach,
})
