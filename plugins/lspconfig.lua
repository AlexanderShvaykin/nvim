local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup{}

lspconfig.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    solargraph = {
      useBundler = false,
      diagnostics = false,
    }
  }
}
