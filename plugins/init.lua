local overrides = require "custom.plugins.overrides"

return {
  ["buoto/gotests-vim"] = {},
  ["tpope/vim-rails"] = {},
  ["dyng/ctrlsf.vim"] = {},
  ["machakann/vim-highlightedyank"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope,
  },

  ["nvim-telescope/telescope-live-grep-args.nvim"] = { lazy = false },
  ["mfussenegger/nvim-dap"] = { },
  ["leoluz/nvim-dap-go"] = { },
  ["rcarriga/nvim-dap-ui"] = { requires = {"mfussenegger/nvim-dap"} },
  ["mrjones2014/dash.nvim"] = { run = 'make install' },
}
