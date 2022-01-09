-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
vim.cmd[[ au InsertEnter * set norelativenumber ]]
vim.cmd[[ au InsertLeave * set relativenumber ]]
vim.cmd[[ au InsertLeave * lua require'luasnip'.filetype_extend("eelixir", {"html"})  ]]
