local overrides = require "custom.plugins.overrides"

return {
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

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["tzachar/cmp-tabnine"] = {
    after = "nvim-cmp",
    run = "./install.sh",
    config = function()
      local tabnine = require('cmp_tabnine.config')

      tabnine.setup({
        max_lines = 100,
        max_num_results = 10,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = '..',
        show_prediction_strength = true
      })
    end,
  },

  ["hrsh7th/nvim-cmp"] = {
    override_options = function()
      local cmp = require "cmp"

      return {
        mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(-8),
        },
        sources = {
          { name = "luasnip" },
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "path" },
          { name = 'cmp_tabnine' },
        },
      }
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
