require('lspconfig').pyright.setup({
on_attach = require('lsp.configure').on_attach,
capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
})
