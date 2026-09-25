vim.lsp.enable('bashls')

vim.lsp.config('bashls', {
    on_attach = require("lsp.configure").on_attach,
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
})
