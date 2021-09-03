local coq = require "coq" -- add this

require('lspconfig').bashls.setup(coq.lsp_ensure_capabilities{ on_attach = require('maps').on_attach })
