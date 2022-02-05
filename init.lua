require("custom.autocmds")

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>", opt)
map("n", "<leader>gf", ":Telescope git_files <CR>", opt)

