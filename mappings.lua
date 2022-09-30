local M = {}

M.general = {
  n = {
    ["<leader>s"] = { "<cmd> w <CR>", "﬚  save file" },
  },
}

M.nvimtree = {
   n = {
      ["<leader><leader>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
   },
}

M.tabufline = {
  n = {
    ["<C-n>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<C-p>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
  }
}

return M
