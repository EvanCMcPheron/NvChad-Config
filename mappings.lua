local M = {}

M.Custom = {
  n = {
    [";"] = { ":", "enter cmdlin", opts = { nowait = true } },
    ---------- TrueZen ----------
    ["<leader>za"] = { ":TZNarrow<CR>", "Zen Ataraxis" },
    ["<leader>zm"] = { ":TZMinimalist<CR>", "Zen Minimalist" },
    ["<leader>zn"] = { ":TZNarrow<CR>", "Zen Narrow" },
    ["<leader>zf"] = { ":TZFocus<CR>", "Zen Focus" },
    ["<leader>zz"] = {
      function()
        vim.cmd ":Lazy load true-zen.nvim"
        require("true-zen.ataraxis").off()
        require("true-zen.minimaist").off()
        require("true-zen.narrow").off()
        require("true-zen.focus").off()
      end,
      "Turn off all true-zen modes",
    },
    -- ["<leader>mm"] = {},
    -- ["<leader>md"] = {},
    -- ["<C-m>"] = {"", "rust-tools hover actions"},
    -- ["<leader>a"] = {"", "rust-tools code action group"},
    ["<leader>ci"] = {
      function ()
        if vim.g.inlay_hints then
          vim.g.inlay_hints = false
          require("rust-tools").inlay_hints.disable()
          print(vim.g.inlay_hints)
        else
          vim.g.inlay_hints = true
          require("rust-tools").inlay_hints.enable()
          print(vim.g.inlay_hints)
        end
      end,
      "Toggle Rust Inlay Hints",
    },
    ["<leader>cm"] = {
      function ()
        require("rust-tools").expand_macro.expand_macro()
      end
    },
  },
}


return M
