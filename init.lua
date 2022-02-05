require("custom.autocmds")

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>gf", ":Telescope git_files <CR>")
map("n", "ff", ":CtrlSF ")

