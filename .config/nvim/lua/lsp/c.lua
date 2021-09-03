local coq = require('coq')
require('lspconfig').ccls.setup(coq.lsp_ensure_capabilities{ on_attach = require('maps').on_attach })
