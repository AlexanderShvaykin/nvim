---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
    ["<leader>gs"] = { "Telescope git_status", "Git status" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader><leader>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}

M.tabufline = {
  plugin = true,

  n = {
    ["<C-n>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<C-p>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    ["<leader>x"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

return M
