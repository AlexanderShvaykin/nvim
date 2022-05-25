vim.cmd([[let g:rails_projections = {
\ "app/api/*.rb": {
\   "command": "api",
\   "test": [
\     "spec/requests/{}_spec.rb"
\   ],
\ }}
]])
vim.cmd([[set cc=100]])

local M = {}

M.mappings = require "custom.mappings"

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },

    statusline = {
      separator_style = "round",
    },
  },
  user = require "custom.plugins"
}

M.options = {
   user = function()
      require "custom.options"
   end,
}

return M
