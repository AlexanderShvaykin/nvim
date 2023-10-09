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

lspconfig.dhall_lsp_server.setup {
  on_attach = on_attach,
}

require('dap-go').setup()
local dap, dapui =require("dap"),require("dapui")
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
