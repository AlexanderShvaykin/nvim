local M = {}

M.telescope = {
  extensions_list = { "themes", "terms", "live_grep_args" },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "ruby",
    "go",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  update_focused_file = {
    enable = false,
    update_cwd = false,
  },

  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    hide_root_folder = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
