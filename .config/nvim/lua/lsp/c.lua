require('lspconfig').clangd.setup(
{
on_attach = require('lsp.configure').on_attach,
capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
root_dir = require("lspconfig.util").root_pattern({
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git",
  }) or vim.loop.cwd(),
  single_file_support = true,
})
