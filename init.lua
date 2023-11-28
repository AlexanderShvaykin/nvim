-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt

opt.relativenumber = true
vim.cmd[[ au InsertEnter * set norelativenumber ]]
vim.cmd[[ au InsertLeave * set relativenumber ]]
vim.cmd([[set cc=130]])
vim.cmd([[let g:gotests_template = '']])

vim.cmd([[let g:rails_projections = {
\ "app/api/*.rb": {
\   "command": "api",
\   "test": [
\     "spec/requests/{}_spec.rb"
\   ],
\ }}
]])


local config = {
  file_type_keywords = {
    ruby = { 'ruby', 'rails' },
  },
}

require('dash').setup(config)
