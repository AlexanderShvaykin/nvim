-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   relativenumber = true,
}
 
M.ui = {
   theme = "gruvchad",
}

M.mappings = {
  misc = {
    save_file = "<leader>s", -- save file using :w
  },
  plugins = {
    dashboard = {
      session_load = "<leader>l",
      session_save = "<C-s>",
    },
    bufferline = {
      next_buffer = "<C-n>",
      prev_buffer = "<C-p>",
    },
   nvimtree = {
      toggle = "<leader><leader>",
   },
  }
}

M.plugins = {
  status = {
    dashboard = true,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

return M
