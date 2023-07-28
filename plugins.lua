local M = {

  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = require("custom.languages.lsp")
    }
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = require("custom.languages.languages"),
    },
  },

  {
    "Pocco81/true-zen.nvim",
    cmd = {"TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus"},
    config = function()
      require "custom.configs.truezen"
    end,
  },

}
return M
