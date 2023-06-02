local M = {}

M.general = {
  n = {
    ["<leader>s"] = { "<cmd> w <CR>", "﬚  save file" },
  },
}

M.nvimtree = {
   n = {
    ["<leader>e"] = { "<cmd> NvimTreeFindFile <CR>", "focus nvimtree" },
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

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep_args hidden=true <CR>", "live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },

    -- git
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
  },
}

return M
