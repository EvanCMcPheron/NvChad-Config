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
    "simrat39/rust-tools.nvim",
    ft = "rust",
    config = function ()
      require "custom.configs.rust-tools"
    end,
  },

  {
    "mfussenegger/nvim-dap",
    lazy=false,
    config = function ()
      require "custom.configs.dap"
    end,
  },

  -- {
  --   "nvimdev/guard.nvim",
  --   lazy = false,
  --   config = function()
  --     require "custom.configs.guard"
  --   end,
  -- },

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
