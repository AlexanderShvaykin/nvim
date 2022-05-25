local M = {}

M.nvimtree = {

   n = {
      -- toggle
      ["<leader><leader>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      -- focus
      ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
   },
}

M.general = {
  n = {
      ["<leader>s"] = { "<cmd> w <CR>", "﬚  save file" },
  }
}

M.bufferline = {
   n = {
      -- cycle through buffers
      ["<C-n>"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle next buffer" },
      ["<C-p>"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle prev buffer" },
    }
}
return M
