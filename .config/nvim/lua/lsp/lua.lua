-- Btw, I use Arch
util = require('lspconfig.util')

sumneko_root_path = "/usr/share/lua-language-server"
sumneko_binary = "/usr/bin/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = { sumneko_binary, "-E", sumneko_root_path .. '/main.lua' },
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
}
