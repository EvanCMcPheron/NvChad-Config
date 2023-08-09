local M = {

  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = require "custom.languages.lsp",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = require "custom.languages.languages",
    },
  },

  {
    "Pocco81/true-zen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus" },
    config = function()
      require "custom.configs.truezen"
    end,
  },

  {
    "nvimdev/guard.nvim",
    lazy = false,
    config = function()
      require "custom.configs.guard"
    end,
  },

  {
    "echasnovski/mini.nvim",
    lazy = false,
    version = "*",
    config = function()
      require "custom.configs.mini"
    end,
  },
}
return M
