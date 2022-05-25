local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "clangd" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end

   lspconfig.solargraph.setup {
     on_attach = attach,
     capabilities = capabilities,
     settings = {
       solargraph = {
         useBundler = false,
         diagnostics = false,
       }
     }
   }
end

return M
