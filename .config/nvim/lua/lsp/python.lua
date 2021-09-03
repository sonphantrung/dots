local coq = require('coq')
require('lspconfig').pyright.setup(coq.lsp_ensure_capabilities{ on_attach = require('maps').on_attach })
