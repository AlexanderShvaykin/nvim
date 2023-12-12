local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- FIXME: ruby_ls with array requestys params after update project to ruby > 3
-- lspconfig.ruby_ls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

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
