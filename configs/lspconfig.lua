local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd", "ts_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = lspconfig.util.root_pattern("Gemfile", "*gemspec", ".git"),
  settings = {
    solargraph = {
      useBundler = true,
      diagnostics = false,
    }
  }
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls", "-remote=auto" }, -- для совместимости с более старыми версиями Go
  -- cmd = {"gopls"}, -- для более новых версий Go
  settings = {
    gopls = {
      analyses = {
        unusedParams = true,
        unusedResults = true,
        unusedLocals = true,
        unusedImports = true,
        structTags = true,
      },
    },
  },
}
