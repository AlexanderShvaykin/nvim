local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd", "svelte" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.golangci_lint_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = lspconfig.util.root_pattern("Gemfile", "*gemspec", ".git"),
  settings = {
    solargraph = {
      useBundler = false,
      diagnostics = false,
    }
  }
}

lspconfig.elixirls.setup {
  cmd = { "/Users/aleksandrsvajkin/.config/elixir-ls/language_server.sh" }
}
