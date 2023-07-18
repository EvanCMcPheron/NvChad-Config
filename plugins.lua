local M = {
  
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"html", "css", "rust", "python"}
    },
  },

  {
    "Pocco81/true-zen.nvim",
    cmd = {"TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus"},
    config = function()
      require "custom.configs.truezen"
    end,
  }

}
return M
